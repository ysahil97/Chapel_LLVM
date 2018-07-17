## July 16th entry

- Today, I had debugged further on the weird assertion failure happening when we use `-polly-codegen-ppcg`. After several rounds of exhausting debugging, I reached to the conclusion that the Context and Assumed Context were not of the same dimension which caused isl to fail. This means that the scope of this error again lies in improper scop generation. In the mentor meeting, as a temporary fix, it was decided to just realign context according to assumed context while looking for the cause afterwards.
