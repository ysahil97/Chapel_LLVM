## June 4th entry

### For larger dimensions the matmul example works
- As per Siddharth's suggestion, I had tried larger dimesion matrices for matrices, increasing the dimesion from 10 to 1000. In the presence of unprofitable flag, the SCoP was getting recognized, and the resultant Polly Optimized code had its execution time reduced to almost half that of the unoptimized one.
- But there are some issues with the recognized SCoP, in the sense that its Loop depth is one, whereas the original matmul case, the loop depth recognized is 3. So the issue lies in the writing of the kernel itself which needs to be further checked.
- An example to support this is that I have been using using arrays as a global object instead of passing them by value, this may cause some subtle differences.
