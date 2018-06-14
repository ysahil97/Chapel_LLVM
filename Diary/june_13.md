## June 13th entry

### Discussion on Possible implementation of auto-delinearization of 1D-array
- Given the fact that Chapel flattens the multi-dimensional arrays and uses linearized access function to access the corresponding memory location. This poses a problem for Polly to construct a multi-dimensional structure from a 1-D case. With the help of some restrictions (like index variables are not shared among the dimesions) we can get a general pattern which can be taken advantage of for constructing the mutli-dimensional model. But this assumption has its own drawbacks and it can sometimes be not valid
