## June 12th entry

### Tweaking IR to remove non-affine accesses

- As suggested, I had replaced the param value used in address calculation by the actual constant value to bypass the SCEV checks. It did treat the modified access functions as affine, the resultant polly generated code was also giving polly labels in it. But when I did perf performance analysis on the original IR and polly optimised version, the polly code performed badly.

- Also, when checking whether Matmul optimisations kicked in ( given in this [link](https://github.com/llvm-mirror/polly/blob/master/lib/Transform/ScheduleOptimizer.cpp#L773) ), it actually failed midway, partly due to the reason that the Space obtained from the access map has its output dimension not equal to 2

- Also, on further analysis of the scop, we got to know that the iteration points didn't start from zero, but rather from one onwards till 1000. This was due to the style of the code being written. I had updates these changes in the original Chapel code (iteration range for each dimension of matrix is 0..999), and the entire analysis was being made again. With the temporary invariant load fix and manually tweaking IR for non-affine accesses, we ran perf on both the original and polly-optimised version. Surprisingly, this time, polly-optimised version outperformed original code by a large margin. Although it still failed to detect matmul based optimisations in the scop itself.

- But still, we get to know that chapel flattens a multi-dimensional array into a single dimensional one and uses linearized access function based on the index variables to access the required elements. We now need to look at why delinearization isn't working here. The starting point to analyse this is [here](https://github.com/llvm-mirror/polly/blob/51ce30b23d631664c5daa182c95044d40060bbb0/lib/Analysis/ScopBuilder.cpp#L436). Some analysis needs to be done here, and if possible, hacking it to show that in this case, it models the array as 2D.
