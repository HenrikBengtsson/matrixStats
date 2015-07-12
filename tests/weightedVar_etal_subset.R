library("matrixStats")

FUNs <- list(
  weightedVar=weightedVar,
  weightedSd=weightedSd,
  weightedMad=weightedMad
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
    w <- runif(6, min=0, max=6)
    storage.mode(x) <- mode
    storage.mode(w) <- mode
    if (mode == "numeric") w[1] <- Inf

    for (idxs in indexCases) {
      validateIndicesTestVector_w(x, w, idxs, ftest=FUN, fsure=FUN, na.rm=TRUE)
      validateIndicesTestVector_w(x, w, idxs, ftest=FUN, fsure=FUN, na.rm=FALSE)
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
