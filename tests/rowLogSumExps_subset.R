library("matrixStats")

rowLogSumExps_R <- function(x, ..., useNames = TRUE) {
  res <- apply(x, MARGIN = 1L, FUN = function(rx, ...) {
    log(sum(exp(rx), ...))
  }, ...)
  if (!useNames) names(res) <- NULL
  res
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      for (useNames in c(TRUE, FALSE)){
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowLogSumExps,
                                  fsure = rowLogSumExps_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colLogSumExps,
                                  fsure = rowLogSumExps_R,
                                  na.rm = na.rm, useNames = useNames)
        
        # Check names attribute
        dimnames(x) <- dimnames
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowLogSumExps,
                                  fsure = rowLogSumExps_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colLogSumExps,
                                  fsure = rowLogSumExps_R,
                                  na.rm = na.rm, useNames = useNames)
        dimnames(x) <- NULL
      }
    }
  }
}
