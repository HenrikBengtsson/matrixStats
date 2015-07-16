library("matrixStats")

rowVars_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=var, na.rm=na.rm)
  })
}

colVars_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=2L, FUN=var, na.rm=na.rm)
  })
}


rowVars_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  center <- rowWeightedMeans(x, cols=cols, na.rm=na.rm)
  rowVars(x, rows=rows, cols=cols, center=center, na.rm=na.rm)
}

colVars_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  center <- colWeightedMeans(x, rows=rows, na.rm=na.rm)
  colVars(x, rows=rows, cols=cols, center=center, na.rm=na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols, ftest=rowVars, fsure=rowVars_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, ftest=rowVars_center, fsure=rowVars_R, na.rm=na.rm)

      validateIndicesTestMatrix(x, rows, cols, fcolTest=colVars, fsure=rowVars_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colVars_center, fsure=rowVars_R, na.rm=na.rm)
    }
  }
}
