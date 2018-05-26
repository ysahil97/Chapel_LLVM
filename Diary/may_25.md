## May 25th entry

### Applied -O3 on Chapel IR's
- I tried to apply `-polly` on Chapel IR's related to 2d loop initialization and 2d matrix multiplication, only after applying `-O3`. It worked. Currently, it needs to be resolved with the mentors whether this is acceptable or not.

### Created two new test cases
- Two new test cases were created which are related with **3D Loop Initialization** and **2d Matrix Multiplication(non-square sizes)**. Under the _assumption_ of applying `-O3` before `-polly`, I tried to check if it recognizes SCoP's as before. The end result is that it did. These cases are added to the repository as their respective folders.
