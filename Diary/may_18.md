## May 18th entry

### Polly is able to recognize simple Chapel loops
- Taking the earlier example of simple chapel loop, we genereated LLVM-IR from it on the condition of turning off bound checks (with --no-checks flag) and had run the passes `-polly-canonicalize -polly-scops`. It is able to recognize the intended SCoP
- In addition to this, if we also run `-polly-codegen` on it, it is also able to generate polyhedral optimized code from it.
- The respective files are: affine\_initialization.ll (Original affine loop), affine\_initialization\_canonicalized.ll (after applying `-polly-canonicalize`), affine\_initialization\_canonicalized\_polly.ll (after applying `-polly-scops -polly-codegen`) 

