library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowLogSumExps_R <- function(x, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = function(rx, ...) {
    log(sum(exp(rx), ...))
  }, ...)
  if (isFALSE(useNames)) names(res) <- NULL
  res
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      for (na.rm in c(TRUE, FALSE)) {
        for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowLogSumExps,
                                    fsure = rowLogSumExps_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colLogSumExps,
                                    fsure = rowLogSumExps_R,
                                    na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
}
