library("matrixStats")

rowVars_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=var, na.rm=na.rm)
  })
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowVars, fsure=rowVars_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colVars, fsure=rowVars_R, mc.cores=2L)
  }
}
