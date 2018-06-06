## June 5th entry

### matmul example has been rewritten, it now gives similar results.
- I rewrote the matmul code by passing arrays as parameters instead of declaring them as global. This was done initially in C and polly was applied on it. The SCoP of loop depth 3 was getting detected without the use of unprofitable flag. Hence I tried to replicate the same procedure in Chapel language
- When doing the same for Chapel matmul code, I tried to check polly detect analysis first. It was showing pass remarks related to Alias analyses and Non-Affine Accesses.
- I have recorded two videos for obtaining result of applying Polly on matmul both in C and Chapel case. Links can be found [here](https://asciinema.org/a/BTSCTDa0SmLeO1utxD6i55mdA)(C case) and [here](https://asciinema.org/a/ztiT6OcUtDv2c6vfCDAeFox9p)(Chapel Case)
