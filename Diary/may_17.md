## May 17th entry

### Issue with the Chapel and Polly versions
- There was an issue whereby Chapel generated LLVM IR was being analyzed by Polly of LLVM 7. This caused version issue, forbading us to analyze polly's response on this IR
- __Solution__ - Michael Ferguson helped here, providing a patch which updates the LLVM present in Chapel([link to the patch](https://github.com/chapel-lang/chapel/issues/9567)). This will be merged to Chapel's master repository in a few days.
