library("matrixStats")

rowCumsums_R <- function(x) {
  suppressWarnings({
    y <- t(apply(x, MARGIN=1L, FUN=cumsum))
  })
  dim(y) <- dim(x)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-3, max=3), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowCumsums, fsure=rowCumsums_R)
    validateIndicesTestMatrix(x, rows, cols, ftest=function(x, rows, cols, ...) {
      t(colCumsums(t(x), rows=cols, cols=rows))
    }, fsure=rowCumsums_R)
  }
}
