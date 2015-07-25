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
# Multicore tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowRanges, fsure=rowRanges_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowMins, fsure=rowMins_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowMaxs, fsure=rowMaxs_R, mc.cores=2L)

    validateIndicesTestMatrix(x, rows, cols, fcolTest=colRanges, fsure=rowRanges_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colMins, fsure=rowMins_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colMaxs, fsure=rowMaxs_R, mc.cores=2L)
  }
}
