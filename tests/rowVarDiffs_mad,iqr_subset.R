library("matrixStats")

fcns <- list(
  madDiff = c(rowMadDiffs, colMadDiffs),
  iqrDiff = c(rowIQRDiffs, colIQRDiffs)
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])
trim <- runif(1, min = 0, max = 0.5)
for (fcn in names(fcns)) {
  cat(sprintf("subsetted tests on %s()...\n", fcn))
  row_fcn <- fcns[[fcn]][[1L]]
  col_fcn <- fcns[[fcn]][[2L]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6L, ncol = 6L)
    storage.mode(x) <- mode
    if (mode == "numeric") x[1:2, 3:4] <- Inf

    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      
      count <- 0L
      for (diff in 1:2) {
        for (rows in index_cases) {
          for (cols in index_cases) {
            count <- count + 1L
            na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
            useNames <- c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)
            useNames <- useNames[count %% length(useNames) + 1]
            validateIndicesTestMatrix(x, rows, cols,
                                      ftest = row_fcn, fsure = row_fcn,
                                      na.rm = na.rm, diff = diff, trim = trim, useNames = useNames)
            validateIndicesTestMatrix(x, rows, cols,
                                      fcoltest = col_fcn, fsure = row_fcn,
                                      na.rm = na.rm, diff = diff, trim = trim, useNames = useNames)
          }
        }
      }
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
