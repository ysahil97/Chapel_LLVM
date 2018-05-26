## May 24th entry

### Comparing Chapel LLVM-IR to C LLVM-IR
- I wrote similar C programs performing 2d Loop initialization and matrix multiplication and tried to check if Polly recognizes the IR's. The result we got was thatt unless we do not apply `-O3` flag, -polly is not able to recognize the scops.
