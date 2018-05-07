# Minutes Of Meeting Community Bonding
##### Date: May 7th
### Attendees
- Michael Ferguson
- Philip Pfaffe
- Sahil Yerawar

### Discussion About Isl C to C++ binding
- ScopInfo\.cpp an ideal place to start with changing of interface

### Chapel Optimization Bug
- Michael Fergurson shared [this](https://reviews.llvm.org/D38662) link
  - Related to Optimizations in LLVM for Chapel

### Ways to analyze specific function for Polly from Chapel Code
- Context: When Chapel code gets converted to C, it can be saved within a directory, containing a bunch of C files for every module used in Chapel Program. These all files get merged when converted by LLVM to LLVM-IR format (single .bc file)
- Solutions:
  - Check for any existing functionality in Polly which can analyze a specific function (Yet to figure it out)
  - Chapel originally has a --print-llvm-ir flag which can print ir pertaining to a particular function. Modify it to include global values used in these functions

