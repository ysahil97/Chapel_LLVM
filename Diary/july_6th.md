## July 6th Diary Entry

- On debugging the failed regression cases, it was found out that there were some places where `Sizes` were not replaced by `Shapes.sizes()`. After such replacement, everything worked fine. These changes have been put up as a review on Phabricator.
