##July 19th diary entry

- So after setting up the server, I carried on the usual procedure namely
* From chapel compiler, convert the chapel code to LLVM-IR by temporarily saving it in a folder
* Polly-Canonicalize the code
* Apply Polly optimization and convert the IR into optimised IR
* With the help of `llc`, convert it into .s fild
* Using clang++, link the assembly file with other required object files and libGPURuntime.so to create a binary

- On running the binary, it printed as expected, only to find out later that due to run time checks the polly optimised code is not being run and hence original code is being ran. Now we have to backtrace the whole task again.
- On the other hand, there were some concerns with the modified `getDataIndex()` of DefaultRectangular module. I had discussed with Michael Ferguson and he approved those changes. I had an intuition that those changes can change the nature of the SCoP by removing unnecessary statements. Indeed there were changes, but there were some ramifications as well. It introduced an extra parameter in the context which was essentially similar to the stride parameters used beforehand. The only issue was that this parameter was coming from the usual pathway(sizes one) and hence there needs to be some changes in the ShapeInfo approach as well.
