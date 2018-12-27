library("matrixStats")

fcns <- list(
  varDiff = varDiff,
  sdDiff  = sdDiff,
  madDiff = madDiff,
  iqrDiff = iqrDiff
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (name in names(fcns)) {
  cat(sprintf("subsetted tests on %s()...\n", name))
  fcn <- fcns[[name]]

  for (mode in c("numeric", "integer")) {
    x <- runif(6, min = -6, max = 6)
    storage.mode(x) <- mode
    trim <- runif(1, min = 0, max = 0.5)
    if (mode == "numeric") x[1] <- Inf

    for (diff in 1:2) {
      for (idxs in index_cases) {
        validateIndicesTestVector(x, idxs,
                                  ftest = fcn, fsure = fcn,
                                  na.rm = TRUE, diff = diff, trim = trim)
        validateIndicesTestVector(x, idxs,
                                  ftest = fcn, fsure = fcn,
                                  na.rm = FALSE, diff = diff, trim = trim)
      }
    }
  }
  cat(sprintf("%s()...DONE\n", name))
}
