## June 7th entry

### Discussion about different kinds of optimization remarks found
- There are two things which I want to discuss about regarding inability of Polly to detect Chapel's SCoP's. This happened when I tried to apply `-polly-scop -polly-ast -polly-codegen` on Chapel's matmul(canonicalized version) case:

- The first error it encounters is reporting Alias(As a optimization remark), On thorough debugging, I found out in the process of checking each pointer of the Alias Set, it checks whether the corresponding instruction is a hoistable load instruction, only then it passes. In this case, while checking
 
```
%59 = load double*, double** %58, align 8, !dbg !15, !tbaa !29
```

it's pointer operand, namely `%58` and the corresponding instruction

```
 %58 = getelementptr inbounds %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object, %chpl_DefaultRectangularArr_2_int64_t_F__real64_int64_t_object* %53, i64 0, i32 8, !dbg !15
```

is decided to be not loop invariant by scalar evolution, but the value of `%53` is itself computed (although indirectly) from an address which was actually one of the function parameters. So this particular point does not make sense to me and needs to be discussed further

2) Even if we resolve the above issue, Non affine Accesses are reported  (In optimization remark format) of the form 

```
((8 * (({1,+,1}<nuw><nsw><%49> * %55) + {1,+,1}<nuw><nsw><%50>))<nsw> + %59)<nsw>
```

This is in the format of a SCEV expression, but `%55` stores the bulk value(i.e the size of row of the array) which is a constant. I am confused as to why is this not an affine SCEV expression.

