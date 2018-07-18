## July 18th diary entry

- While trying to link Polly-optimized IR with other object files, (in the linking phase), there seems to be some problem with that. Primarily due to the working environment not having cuda support and hence the required shared object is not available. For now, I have access to a GPU server. So I have currently duplicated the work there(both llvm+polly and chapel as well). There are some other issues with linking which I have yet to figure it out.
