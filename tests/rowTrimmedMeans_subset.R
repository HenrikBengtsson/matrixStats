library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rowTrimmedMeans <- function(y, ...) apply(y, 1, mean, ...)
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"
for (trim in c(0.2, 0.4, 0.5)) {
  for (rows in index_cases) {
    for (cols in index_cases) {
      for (na.rm in c(TRUE, FALSE)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowMeans2, 
                                  fsure = rowTrimmedMeans,
                                  trim = trim,
                                  na.rm = na.rm)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colMeans2,
                                  fsure = rowTrimmedMeans,
                                  trim = trim,
                                  na.rm = na.rm)
      }
    }
  }
}
