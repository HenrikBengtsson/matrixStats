library("matrixStats")

rowMedians_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=median, na.rm=na.rm)
}

colMedians_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=2L, FUN=median, na.rm=na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Multicore tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-3, max=3), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowMedians, fsure=rowMedians_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colMedians, fsure=rowMedians_R, mc.cores=2L)
  }
}
