## May 29th entry

### Matrix Multiplication also works with invariant load hoisting 
- With the help of `-polly-invariant-load-hoisting`(from yesterday's findings), the matrix multiplication example is also getting recognised by polly.In addition to that, on applying -polly-codegen, the code generated contains labels named with polly.

### Performance measurements of matrix multiplication
We considered two cases here:
- Firstly, we generate LLVM-IR from Chapel code, then from the unoptimized IR file, we try to run `lli` on it, with the entry function being `m2m_chpl` and getting timings from it.
- Firstly, we generate LLVM-IR from Chapel code, then we apply Polly on it with appropriate flags (namely `-polly-process-unprofitable` & `-polly-invariant-load-hoisting`), then try to run `lli` with the setup similar to before.

For timing measurements, we use the `time` unix utility here
The results are

| Setup             | Time  |
|-------------------|-------|
|Plain Chapel IR    | 16s   |
|Chapel IR + Polly  | 11-12s|

A follow up task that needs to be done is to run `perf` tool on it.
