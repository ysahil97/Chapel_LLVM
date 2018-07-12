## July 12th Diary entry

- There were some extra issues from the Chapel front-end which were addressed today
- The function definition of `polly_array_index()` had two extra arguments appended to its argument list. Michael told me that it is common for Chapel  functions to add arguments like fileno and line no to it. These settings were avoided by using `--devel` flag while compiling or setting the flag `C  HPL_DEVELOPER=1` to enable developer settings in Chapel
- There needs to be certain marking of `polly_array_index()` in terms of LLVM attributes. We found out `readnone` worked the best in this case and Michael added this flag to Chapel from the front-end to `polly_array_index()`.

- With the help of these changes, The Chapel to Polly Pipeline was now detecting SCoP's properly. The changes were updated in the Phabricator Review along with the updated test case from the newly developed chpl frontend.

- Now, moving on to the codgen pipeline, `-polly-codegen` gave some assertion failures while `-polly-codegen-ppcg` block NVPTX codegen saying that `polly_array_index()` was an incorrect function in the kernel. This may be happening due to the fact that currently the codegen backend is selectively allowing functions with a whitelist and our function is not one of them. So it needs to be taught.

