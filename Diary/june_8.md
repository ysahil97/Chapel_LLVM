## June 8th Diary Entry

### Working on the Report alias issue of the matmul case
- To explain the cause of this problem, I would have to explain it with the help of an IR snippet

```
  call void @dist2(%_domain_DefaultRectangularDom_2_int64_t_F* %22, %_distribution_DefaultDist* %27, i64 25, i32 56), !dbg !7
  %48 = load %_distribution_DefaultDist, %_distribution_DefaultDist* %27, align 8, !dbg !7
  store %_distribution_DefaultDist %48, %_distribution_DefaultDist* %26, align 8, !dbg !7
  call void @chpl__autoDestroy(%_distribution_DefaultDist* %26, i64 25, i32 56), !dbg !7
  call void @chpl__autoDestroy2(%_domain_DefaultRectangularDom_2_int64_t_F* %24, i64 25, i32 56), !dbg !7
  br label %49, !dbg !12

; <label>:49:                                     ; preds = %.split, %87
  %.0 = phi i64 [ 1, %.split ], [ %88, %87 ], !dbg !12
  br label %50, !dbg !13

; <label>:50:                                     ; preds = %49, %85
  %.01 = phi i64 [ 1, %49 ], [ %86, %85 ], !dbg !13
  br label %51, !dbg !14

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

- In this, if you see line no 2 to 4 and line no 8 indexed from label 51, the collective function of these lines is to compute the actual array base address from the array descriptor which depends on the function argument (invariant for this block). In addition which investigating the cause of error for reporting Alias Analysis remark of `-polly-detect`, it detected that line no 9 was not a hoistable load, but in reality, lines 9, 8, 5, 4, 3, 2 collectively are invariant to the loop. (Note the fact that `%_array_DefaultRectangularArr_2_int64_t_F__real64_int64_t* %2` is the argument to matmul function and hence it is loop invariant).

- (Also in this code snippet <label>:49 corresponds to the start of the outermost loop whereas <label>:50 and <label>:51 signify the beginning of the middle and the innermost loops of the matmul example)

- Some of the initial attempts I had made were to use -licm right after -polly-canonicalize, it helped partially in the sense that it was able to hoist line no 2 under label 51 out of all the 3 three loops. But the remaining load and getelementptr statements were unhoisted and stuck in the innermost loop.

- One of the fixes which I had thought of for hoisting these loads collectively is to modify `isHoistableLoad()` function of ScopHelper.cpp by taking into account the pointer operand of the ptr which is obtained from the pointer operand of the load instruction. Currently, I have a working instance of it on my local copy. But, there needs to be some discussion on this as the fix seems to be too specific. Also There needs to be a minimal test case created which can demonstrate this problem.

- If approved, for the matmul example, there will be no Report Alias issues in the future.

