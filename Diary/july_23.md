## July 23rd Diary Entry

- With the help of bollu, we got to know that in the case of PPCGCodegen, there was problem with allocating correct array sizes and using it for data transfer. This was partly due to the fact that the block values which we were using as sizes for each array dimension does not hold true for the outermost dimension where the value is always 1 (for indexing purposes). So the indexing call needs to be modified in terms of function signature. For the sake of checking, a pre-determined size was hardcoded into polly. Now, for the 2d initialization with no offsets, the GPU code was running properly without any memory error as checked from `cuda-memcheck`.

- In today's mentor meeting, there was some discussion regarding the pipeline and how to fit it into Chapel. It is decided that we will generate normal CodeGen code, but if the user wants the option of GPU Codegen, there needs to be a flag supplied to Chapel which will toggle between these two modes.
