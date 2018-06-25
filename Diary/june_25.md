## June 25th entry

### Minor Test case changes for the patch
- Some extra instructions and basic blocks were removed to clean the test case, and appropriate comments were added to new code snippets added to the patch.

### Change in the approach of linking Chapel to Polly
- In today's Mentor meeting, Michael Ferguson explained his approach of developing a function which kind of acts like an intrinsic throughout the interface. There was a quite extensive discussion on this, and finally it has been decided to adopt this approach rather than the metadata approach. This line of work resembles with Siddharth's work for developing an intrinsic for Fortran's array descriptors. This discussion can be referred by this [link](https://gitter.im/chapel_polly/Lobby/archives/2018/06/25)
