## May 22nd Entry

### Debugging further into 2d\_initialization
- We debugged the effect of polly-detect on Chapel Generated LLVM-IR of 2d\_loop initialization. We had used [isAffine()](https://github.com/llvm-limirror/polly/blob/master/lib/Analysis/ScopDetection.cpp#L540) as our breakpoint here. In this case, there were 19 calls to this function, 17 of which returned `True` and out the remaining 2 `False` ones, one of them was related to Invariant loads and the other was due to invalid affine expression. On further exploring the second reason, it turns out that one of the Recurrence part of the SCEV expressions was not-int, hence it returned `False`.
