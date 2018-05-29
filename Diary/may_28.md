## May 28th entry

### Comparision of IR's(2d loop initialization case)
- A comparision of IR was done between the ones which is fed to polly(obtained by using `-polly-dump-before` flag) and the ones on which `-polly-canonicalize` is applied. The difference is that in the second case, when the backedge of the outer loop is taken, then array address computation is done every time, whereas in the first case, this part is hoisted out of the loop. 
- In the `-polly-canonicalize` case, the SCoP gets generated once we apply the `-polly-invariant-load-hoisting` flag. Now the SCoP's are getting generated properly.


### Patch for updating Scop::addUserContext() to C++ interface
- Another patch to update isl interface in Polly to C++ has been created and committed ([Link](https://reviews.llvm.org/D47438)).
