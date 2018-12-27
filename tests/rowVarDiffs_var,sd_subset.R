library("matrixStats")

fcns <- list(
  varDiff  = c(rowVarDiffs, colVarDiffs),
  sdDiff   = c(rowSdDiffs, colSdDiffs)
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
trim <- runif(1, min = 0, max = 0.5)
for (fcn in names(fcns)) {
  cat(sprintf("subsetted tests on %s()...\n", fcn))
  row_fcn <- fcns[[fcn]][[1L]]
  col_fcn <- fcns[[fcn]][[2L]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6L, ncol = 6L)
    storage.mode(x) <- mode
    if (mode == "numeric") x[1:2, 3:4] <- Inf

    for (diff in 1:2) {
      for (rows in index_cases) {
        for (cols in index_cases) {
          for (na.rm in c(TRUE, FALSE)) {
            validateIndicesTestMatrix(x, rows, cols,
                                      ftest = row_fcn, fsure = row_fcn,
                                      na.rm = na.rm, diff = diff, trim = trim)
            validateIndicesTestMatrix(x, rows, cols,
                                      fcoltest = col_fcn, fsure = row_fcn,
                                      na.rm = na.rm, diff = diff, trim = trim)
          }
        }
      }
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
