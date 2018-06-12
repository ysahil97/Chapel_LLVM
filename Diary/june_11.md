## June 11th entry

### Patch to recognise invariant loads
- With respect to the first problem discussed in June 8th diary entry, A patch has been created which detects specific patterns of invariant loads.Link: [Here](https://reviews.llvm.org/D48026)
- A test case has also been created and shared among the mentors. It is currently not included in the patch itself.


### Approaches to resolve non-affine access in Chapel IR
- Right now, `SCEVValidator.cpp` invalidates Chapel's 2D array access as it considers the product of an Induction Variable(IV) and a parameter (PARAM) to be non-affine. As a part of the experimentation, we can manually modify the IR by replacing the PARAM with the actual value (The value is a constant, namely the size of the row in the 2D array, which is accessed each and every time from the array descriptor).
