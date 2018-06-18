## June 18th entry

### Discussion on tackling delinearization in Chapel-Polly interface
- In the mentor meeting, there was some amount of discussion related to this point. Phillip mentioned that developing intrinsics would be quite intrusive and might disturb the IR analysis of Polly by a larger amount. So another proposal, namely communicating array shapes over the interface seems to be the feasible option. To begin with, we can communicate these shapes from Chapel's array descriptor to the polly, by the means of including it in LLVM-IR metadata, and Polly will take in these shapes and use it during the delinearization process.

### Clarification of fixed point method of the patch
- Phillip clarified what he had meant by fixed point iteration method for finding invariant loads and stores.
