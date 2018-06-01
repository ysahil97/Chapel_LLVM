## May 31st entry

### Obtaining performance data using `llc`
- An executable was created from the original and transformed LLVM-IR's related to matrix multiplication. `llc` was used to convert IR into .s files and then `clang++` was used to link this with various other required modules to from the final executable. `perf stat` was used to obtain the execution time with greater precision. For better results, it was repeated 2000 times in order to reduce the window of variance.
- The results are available in `perf_2mm_llc.txt`.
- Observation:- the original LLVM-IR outperforms it's Polly-optimised counterpart slightly by a fraction of a millisecond. This happens a majority of times, with the reverse happening a few times.
- I additionally added the `-polly-ignore-aliasing` flag in order to ignore aliasing effects. The perf results are stored in `perf_matmul_llc_ignaliasing.txt`. This also didn't perform well.
