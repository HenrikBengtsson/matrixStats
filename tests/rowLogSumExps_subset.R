library("matrixStats")

rowLogSumExps_R <- function(x, ...) {
  apply(x, MARGIN = 1L, FUN = function(rx, ...) {
    log(sum(exp(rx), ...))
  }, ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowLogSumExps,
                                fsure = rowLogSumExps_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colLogSumExps,
                                fsure = rowLogSumExps_R,
                                na.rm = na.rm)
    }
  }
}
