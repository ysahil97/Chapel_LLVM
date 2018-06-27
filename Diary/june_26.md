## June 26th Diary Entry

- Michael Kruse had some concerns regarding not analyzing the GEP instruction for invariant property. So I modified the patch which checks for every GEP index to be invariant to the loop. Minor refactoring was done in order to use existing LLVM functions to perform our task.
