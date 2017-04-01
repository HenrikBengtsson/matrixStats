library("matrixStats")

fcns <- list(
  weightedVar = c(rowWeightedVars, colWeightedVars),
  weightedSd = c(rowWeightedSds, colWeightedSds),
  weightedMad = c(rowWeightedMads, colWeightedMads)
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (fcn in names(fcns)) {
  cat(sprintf("subsetted tests on matrix %s()...\n", fcn))
  row_fcn <- fcns[[fcn]][[1]]
  col_fcn <- fcns[[fcn]][[2]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
    w <- runif(6, min = 0, max = 6)
    storage.mode(x) <- mode
    storage.mode(w) <- mode
    if (mode == "numeric") w[1] <- Inf

    for (rows in index_cases) {
      for (cols in index_cases) {
        for (na.rm in c(TRUE, FALSE)) {
          validateIndicesTestMatrix_w(x, w, rows, cols,
                                      ftest = row_fcn, fsure = row_fcn,
                                      na.rm = na.rm)
          validateIndicesTestMatrix_w(x, w, rows, cols,
                                      fcoltest = col_fcn, fsure = row_fcn,
                                      na.rm = na.rm)
        }
      }
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
