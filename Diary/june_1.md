## June 1st entry

### Exploring the cause.
- With the llc results showing that the original bitcode is outperforming the polly optimized one, the process of debugging started. I believe that this SCoP was originally allowed due to `-polly-process-unprofitable` flag. This also indicates that the SCoP recognized may be unprofitable. With the absence of this flag, no SCoP's were detected. On debugging this program, it was found out that the same SCoP was actually considered initially, but was not considered profitable, so it was discarded.
