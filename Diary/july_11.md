## July 11th Diary entry

- On further debugging about the unfeasible context which happened late, on extensive debugging, I had got to know that there were some extra invariant loads which were causing the issue. Those loads appeared to be unnecessary and can be safely removed from LLVM-IR. In other words, the Chapel front-end needs some changes to achieve this
- Firstly, in Chapel's `DefaultRectangular` module, the statement `blk(rank) = 1` was done after `useBulk = blk`, this resulted in the usage of the old blk value and hence the order was switched to ensure correct usage.
- Secondly, the function definition of `polly_array_index()` was to be done at topmost level inside the module. This is because if it were done in any class, we would have to pass the class pointer as one of the extra arguments in LLVM-IR. This creates extra invariant loads which hindered SCoP detection.

- I created a local fork of Chapel, incorporated this changes and updated my local copy with it. These changes were shared with Michael Ferguson.
