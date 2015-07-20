library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (mode in c("numeric", "integer")) {
  x <- runif(6, min=-6, max=6)
  w <- runif(6, min=0, max=6)
  storage.mode(x) <- mode
  storage.mode(w) <- mode
  if (mode == "numeric") w[1] <- Inf

  for (idxs in indexCases) {
    validateIndicesTestVector_w(x, w, idxs, ftest=weightedMean, fsure=weighted.mean, na.rm=TRUE, refine=TRUE)
    validateIndicesTestVector_w(x, w, idxs, ftest=weightedMean, fsure=weighted.mean, na.rm=FALSE, refine=TRUE)
  }
}
