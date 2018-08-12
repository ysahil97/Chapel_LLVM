# Compiling Chapel with LLVM and Polly

--------------------------------------

by Sahil Yerawar

## Problem Statement

My project was to analyze the cause of failure of Polly loop optimizer to analyze Chapel's loops. Furthermore, if successful, also extend generation of code to GPU architechture in addition to CPU codegen. 

## Proposed solution
Analyze the cause of failure of Polly in Chapel framework using some simple examples. Once Polly recognizes Chapel's loops, check for proper code generation in both the architectures.

## Steps Taken

1. The general idea to proceed with this project is to iteratively check Polly for proper SCoP Detection and it's code generation using simple Chapel loops.
2. To begin with, initially the Chapel generated IR was causing version issues which forbade Polly to analyze it's IR. A PR(link is [here](https://github.com/chapel-lang/chapel/pull/9567)) has been made for Chapel to work with master LLVM and Polly and has been merged into master branch.
3. We first used 1-D array initialization as our starting point to check the current status of Chapel-Polly pipeline. For this case, it is able to detect the SCoP's and also generate polly-optimised code. 
4. We now move on toward the 2-D array initialization and matrix multiplication problems. Here, Polly failed to recognize the SCoP's of Chapel Loops. However with the help of `-polly-invariant-load-hoisting`, SCoP's were getting generated properly. In addition to this, `-polly-codegen` also generated polly-specific code. However these SCoP's were discovered only due to `-polly-process-unprofitable` which were suboptimal. In the absence of this, no SCoP's were detected.

    * On further modification of Chapel matmul program, `-polly-detect` was giving error remarks related to aliasing and non affine access. We had triedto analyze the cause of failure for this and stumbled across a rather interesting bug in Polly. Suppose there is a set of instructions which are chained to each other in the form of alternating GEP's and load instructions. If the starting instruction is loop invariant then all the instructions should be collectively invariant. For eg:

```
; <label>:51:                                     ; preds = %50, %51
  %.02 = phi i64 [ 1, %50 ], [ %84, %51 ], !dbg !14
  %52 = getelementptr inbounds %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t, %_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %2, i64 0, i32 1, !dbg !15
  %53 = load %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object*, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object** %52, align 8, !dbg !15, !tbaa !16
  %54 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %53, i64 0, i32 3, i64 0, !dbg !15
  %55 = load i64, i64* %54, align 8, !dbg !15, !tbaa !28
  %56 = mul nsw i64 %55, %.0, !dbg !15
  %57 = add nsw i64 %56, %.01, !dbg !15
  %58 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %53, i64 0, i32 8, !dbg !15
  %59 = load double*, double** %58, align 8, !dbg !15, !tbaa !29
  %60 = getelementptr inbounds double, double* %59, i64 %57, !dbg !15
  %61 = load double, double* %60, align 8, !dbg !15, !tbaa !42
``` 

In this loop block, `%52` is considered to be loop-invariant but `%53`,`%54`,`%55`,`%58`,`%59` should also be loop-invariant as they are relying on a previous instruction which is inductively loop-invariant. This type of invariant detection was not present in polly initially. This phabricator review ([link](https://reviews.llvm.org/D48026)) deals with introducing detection of collective invariant loads.

    * With the help of this patch, this solves both aliasing and non-affine access issues given by optimization remark emitter. The SCoP's generated were also optimal and experiments on the generated code showed huge performance improvements over the normal case.

    * However the solution given by this patch was only a temporary one and could not handle more generalized cases like arrays with offsets or arrays with custom defined domains (Eg: Arr\[1..4\]\[2..6\]). It also didn't handle the cases where the iteration domains were not 0-based. Thus alternative methods were discussed, which could handle the generalizations effectively.

5. Initially there was a consensus to pass on information like array dimension sizes and index subscripts thorugh metadata to Polly. But the idea was a bit unstable in the fact that metadata is sometimes prone to changes for certain optimization passes in LLVM. Hence we have resorted to develop an intrinsic-like function which is responsible for computing the final index to be used for array access. The main purpose of this indexing function is that Polly can effectively pick array dimension sizes and index subscripts from the function's arguments and it can use this information for generating code for both CPU and GPGPU's. This idea was supported because there was already an existing similar work, albeit it was for `Fortran` language.

6. Initially some backporting issues had to be fixed, which were causing irregular assertion failures in both Polly as well as Isl code. After fixing those nitpicks, some changes related to `getDataIndex()` in `DefaultRectangular.chpl` had to be made in order to simplify the generated SCoP. At this point, Polly was properly detecting Chapel's loops in SCoP format.

7. Moving on to the codegen phase, we have aimed for both `-polly-codegen` and `-polly-codegen-ppcg` (using NVPTX backend). I had to update the normal `polly-codegen` from the phabricator review which resolved normal codegeneration. For PPCGCodegen, we first had to teach the fact that `polly_array_index` is one of the functions which can be exempted from disallowing whenever present in the patch.

    * There were some isl\_ast exceptions which were hindering the PPCGCodegen. Basically, during context generation, the parameters present in context were less than that of Assumed Context, which was abnormal. Though we agreed on applying simple `realignParams()` as a temporary measure, the root cause was that another function `getFortranArrayIds()` which was populating the parameters was concerned with only the outermost dimension and all the dimensions. With that change, PPCG code was getting generated.
    * Initially, we had to provide the function definition of `polly_array_index()` from Polly so that the kernel can have access to it while in GPU. There were some array allocation issues in terms of size. This was because of we were passing pre-computed coefficients of indices in the index expressions rather than individual array sizes, which Polly misinterpreted. So as a temporary measure, I also passed individual dimension sizes to Polly through the arguments of indexing function. Then we tried to eliminate the block values(the pre-computed values of indices) from arguments of `polly_array_index()` to minimize the number of parameters passed, and we make Polly to compute these block values from the obtained dimension sizes. On the Chapel front, necessary changes were implemented to `polly_array_index()` definition. This also involved introduction `sizesPerDim` field in `DefaultRectangularArr` class (PR link for polly\_array\_index is [Here](https://github.com/chapel-lang/chapel/pull/10727)).
    * While this resulted in correct memory-error free codegen in GPU for the standard case, it couldn't handle Arrays with custom domains for every dimensions. The resolution was to simply pass on the indices as 0-based to Polly. This is possible because Chapel Compiler provides the option to use an alternate base address which is suitable for 0-based indices (`-searlyShiftData` config parameter).So the general strategy was to discard the usage of `factoredOffs` and instead subtract offset values from its corresponding indices.However, due to this method, we stumbled upon an unknown anomaly in Chapel that integer tuples as arguments were behaving as call-by reference while they should behave as call-by-value. Relevant PR to resolve this is [Here](https://github.com/chapel-lang/chapel/issues/10711). Ultimately, Arrays with custom domains are also detected by Polly and proper CPU and GPU polly optimized code is getting generated.
The Phabricator Review which handles the indexing function method can be found [Here](https://reviews.llvm.org/D49024).

8. Integrating the Pipeline

    * Name mangling of `polly_array_index()` is enabled to append the number of dimensions of the array accessed. PR can be found [Here](https://github.com/chapel-lang/chapel/pull/10745).
    * Adding GPURuntime library to the list of library files to be linked at link-time.

9. Right now, we have assumed that the loop to be optimized would be present in a function called `test_polly()` which Polly would selectively optimize and generate Polly optimized code.

## Current status of work

On the Chapel front, the indexing function has been successfully implemented into Chapel compiler. The official upstreaming is in progress. Whereas for Polly, the existing feature of analyzing the `polly_array_index()` call has been successfully working in local version of Polly. However there can be further optimizations on this feature and hence there needs further work on this approach. The integration of Chapel and Polly is also in progress but with the help of a set of commands, we can essentially compile Chapel code using it's LLVM+Polly copy. It will get fixed soon.
As of now, Polly can detect Chapel Loops which can have custom domains for every dimension (for eg: `Arr[1..5][6..8][25..89]`).

![](Chapel_m2m_Scop.png)


## Results

The preliminary results for standardized matrix multiplication (all matrices of size 1000 x 1000) using the `collective-invariant-loads` patch were conducted using `perf stat -r 10`.

| Binary | Time (In seconds) |
|---|---|
| Plain Chapel Code | 7.54 |
| Polly optimized code | 1.18 | 


This huge performance gain encourages us to further pursue PPCGCodegen for Chapel.

We have checked the indexing call approach using two examples: 2D-array initialization and matrix multiplication. We have compared it using three methods:
1. Baseline approach (without Polly, using raw Chapel Module)
2. Using Polly Codegen for CPU code
3. Using Polly's PPCGCodegen for GPU Code

The results are obtained as follows:

#### 2D Array Initialization

| Binary | Time (In Seconds) |
|---|---|
| Without Polly | 2.7108 |
| Polly(CPU) | 2.604 |
| Polly(GPU) | 0.0029 |

#### matrix multiplication
Size: 1000

| Binary | Time (In Seconds) |
|---|---|
| Without Polly | 27.5273 |
| Polly(CPU) | 7.13 |
| Polly(GPU) | 0.138 |

Size: 5000

| Binary | Time (In Seconds) |
|---|---|
| Without Polly | 8102.7239 |
| Polly(CPU) | 4334.082 |
| Polly(GPU) | 15.89 |

## Reasons for Polly's performance

Polly tries to model the SCoP detected into a polyhedra over a N-dimensional space (where N is the depth of the loop). Polly has exact dependence analysis and an efficient scheduling algorithm which is possible with the help of Integer Set Library (ISL). Furthermore, Polly has a well-defined strategy to optimize whenever a matrix-multiplication type kernel is detected within a program. All of these features ensure Polly to be better capable of optimizing loops rather than the regular LLVM loop optimization passes. 

## Scope of Improvement

Integration of Polly within Chapel provides a lot of scope in terms of improvement. Currently, the SCoP detected by Polly is sub-optimal in many ways. One of the main reasons being there are a lot of parameters involved within the context which can significantly affect the compile-time due to Polly. Another reason is that all of the above results and benchmarking were done under the assumption that RTC's are always set to true. Analysis of RTC failure is yet to be done. In Chapel, the actual integration in terms of adding the required Polly passes and adding `libGPURuntime.so` to the list of link files is also yet to be done. The Polly Codegen can still be further simplified to provide better performance in both the architechtures.
In terms of the nature of the loops, the work can also be extended to detect strided Chapel Arrays. 

The current results are based on only two simple yet common examples. There can be two ways to further extend the testing phase:
1. We can port some simple examples from Polybench or LLVM's Test Suite (which are of interest to us) into Chapel and work upon those.
2. Chapel also has it's own test suite of programs which can be used to analyze further our pipeline.

We are working on understanding the exact impact of this indexing approach by performing improvements related to code-generation, scop detection and optimal transfer of parameters involved for indexing. In parallel, we are also testing whether the one-off `polly_array_index` method could be coherently be introduced within LLVM. We are working on an RFC ([Link](https://docs.google.com/document/d/1OtkKYm1zGFw1U1ilGzvjk6vzYFvo6zvO1LZM38AZF50/edit?usp=sharing)) to document this purpose.

It is now more clear that introducing Polly and its set of optimizations to Chapel benefits the compiler both in terms of performance as well as providing an extra option to different architecture (GPGPU's), thereby reaping the benefits of both. This can bring upon a huge impact on Chapel Programs, attaining significant speedups.


## Future work

Right now, only simple Chapel `for` loops are modelled using Polly. It would be exciting if this support can be extended further to the data-parallel `forall` loops which are more commonly used in distributed scenario.

## Acknowledgements

I would like to thank my mentors, Siddharth Bhat and Phillip Pfaffe for always being available and patient enough to resolve my doubts in a precise manner, Michael Ferguson for supporting me on the Chapel front and helping me whenever I had faced any troubles providing appropriate resources to alleviate the problems. I would like to extend my special thanks to Michael Kruse for always being available and providing suggestions and inputs which helped in solving the issues.
