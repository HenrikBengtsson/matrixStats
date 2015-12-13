library("matrixStats")

FUNs <- list(
  varDiff=varDiff,
  sdDiff=sdDiff,
  madDiff=madDiff,
  iqrDiff=iqrDiff
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (fcn in names(FUNs)) {
  cat(sprintf("subsetted tests on %s()...\n", fcn))
  FUN <- FUNs[[fcn]]

  for (mode in c("numeric", "integer")) {
    x <- runif(6, min=-6, max=6)
    storage.mode(x) <- mode
    trim <- runif(1, min=0, max=0.5)
    if (mode == "numeric") x[1] <- Inf

    for (diff in 1:2) {
      for (idxs in indexCases) {
        validateIndicesTestVector(x, idxs, ftest=FUN, fsure=FUN, na.rm=TRUE, diff=diff, trim=trim)
        validateIndicesTestVector(x, idxs, ftest=FUN, fsure=FUN, na.rm=FALSE, diff=diff, trim=trim)
      }
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
