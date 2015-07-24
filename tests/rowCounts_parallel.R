library("matrixStats")

rowCounts_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.na(x)))
  } else {
    counts <- apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm))
  }
  as.integer(counts)
} # rowCounts_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Multicore tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-3, max=3), nrow=6, ncol=6)
x[2:3,3:4] <- NA_real_
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowCounts, fsure=rowCounts_R, value=0, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colCounts, fsure=rowCounts_R, value=0, mc.cores=2L)
  }
}
