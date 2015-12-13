library("matrixStats")

rowDiffs_R <- function(x, lag=1L, differences=1L, ...) {
  ncol2 <- ncol(x) - lag*differences
  if (ncol2 <= 0) {
    return(matrix(x[integer(0L)], nrow=nrow(x), ncol=0L))
  }
  suppressWarnings({
    y <- apply(x, MARGIN=1L, FUN=diff, lag=lag, differences=differences)
  })
  y <- t(y)
  dim(y) <- c(nrow(x), ncol2)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    for (lag in 1:2) {
      for (differences in 1:3) {
        validateIndicesTestMatrix(x, rows, cols, ftest=rowDiffs, fsure=rowDiffs_R, lag=lag, differences=differences)
        validateIndicesTestMatrix(x, rows, cols, ftest=function(x, rows, cols, ...) {
          t(colDiffs(t(x), rows=cols, cols=rows, ...))
        }, fsure=rowDiffs_R, lag=lag, differences=differences)
      }
    }
  }
}
