## July 13th Diary Entry

- Before moving forward, I had realized that the bollu's branch was not up to date with what was present in the phabricator review. So I had to port  in those extra changes to my local copy. This ensured that codegen was now working properly for the stride based case.

- As we were testing for PPCG codegeneration, I had seen that Polly\_array\_index() was not getting recognized by the kernel. So by simple string matching, I tried to allow that function. With that hurdle aside, it now fails at isl\_ast exception which lies deep inside the isl schedule. The end message being that the guard node is having extra parameters than its space. I am trying to figure out how is this happening.
