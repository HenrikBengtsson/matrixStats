library("matrixStats")

rowProds_R <- function(x, FUN=prod, na.rm=FALSE, ...) {
  y <- apply(x, MARGIN=1L, FUN=FUN, na.rm=na.rm)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
method <- "expSumLog"
FUN <- product
for (rows in indexCases) {
  for (cols in indexCases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols, ftest=rowProds, fsure=rowProds_R, method=method, FUN=FUN, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colProds, fsure=rowProds_R, method=method, FUN=FUN, na.rm=na.rm)
    }
  }
}
