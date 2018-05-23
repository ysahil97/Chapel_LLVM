## May 23rd Entry

### Exploring both of the missed remarks of 2d loop initialization
- I had continued yesterday's work and tried to analyze it further, with the same setup(debugging with `is_affine()` as our breakpoint). On further ex
ploring the 2nd case whereby it had failed, it had turned out that the AddRec SCEV expression had its recurrence part to be of improper type. However,
 it didn't matter that much during the execution, as the Region in consideration was declared to be valid. But while checking for profitability, it ga
ve `ReportUnprofitable` Missed Remark ("No Profitable polyhedral optimization found"), which is not important to us as of now.
- On exploring the first case, it seems that `onlyValidRequiredInvariantLoads()` gave `False`. On further analyzing its flow, it turns out that becaus
e of what mentioned previously, `isValidBranch()` failed, which `isValidLoop()` was indirectly using for its purpose. Because `isValidLoop()` failed,
it gave rise to `ReportLoopBounds()` missed remark.

### Delinearization was working fine.
- On analyzing the Second case along the execution flow, I had also checked the function `hasBaseAffineAccesses()` and ran successfully. So, Delinearization does work here, which was suspicious before.
