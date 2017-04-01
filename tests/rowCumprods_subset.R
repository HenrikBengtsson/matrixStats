library("matrixStats")

rowCumprods_R <- function(x) {
  suppressWarnings({
    y <- t(apply(x, MARGIN = 1L, FUN = cumprod))
  })
  dim(y) <- dim(x)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCumprods, fsure = rowCumprods_R)
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = function(x, rows, cols, ...) {
      t(colCumprods(t(x), rows = cols, cols = rows))
    }, fsure = rowCumprods_R)
  }
}
