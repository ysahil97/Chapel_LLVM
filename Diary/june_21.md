## June 21st entry

### Working on Phillip's fixed point solution
- Today, I had tried to implement philip's idea of fixed point solution in my patch, in order to solve the instability of the previous approach with respect to being highly dependent on the order of loads analyzed. There were some initial issues, but later they turned out to be improper implementations. Now, a proper patch has been updated to the review which does the same task without considering the order of load being analyzed for it's invariant property
