library("matrixStats")

rowMins_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=min, ...)
  })
} # rowMins_R()

rowMaxs_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=max, ...)
  })
} # rowMaxs_R()

rowRanges_R <- function(x, ...) {
  suppressWarnings({
    ans <- t(apply(x, MARGIN=1L, FUN=range, ...))
  })
  dim(ans) <- c(dim(x)[1], 2)
  ans
} # rowRanges_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols, ftest=rowRanges, fsure=rowRanges_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, ftest=rowMins, fsure=rowMins_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, ftest=rowMaxs, fsure=rowMaxs_R, na.rm=na.rm)

      validateIndicesTestMatrix(x, rows, cols, fcolTest=colRanges, fsure=rowRanges_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colMins, fsure=rowMins_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colMaxs, fsure=rowMaxs_R, na.rm=na.rm)
    }
  }
}
