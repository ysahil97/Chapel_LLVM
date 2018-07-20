## July 20th Diary Entry

- Today, I had experimented on the SCoP's with respect to the parameters and the strides values obtained in the context. Afterwards, I tried a different path. In PPCGCodegen, I have temporarily overrided RTC's to true to see whether the GPU code is running properly or not. Currently there was no way the GPU host to kernel mapping would have the definition of our indexing function. It was introduced in PPCGCodegeneration and it was taught to the `setupKernelSubtreeFunctions()` function in PPCGCodegen. Currently there are some issues coming up while running the code.
