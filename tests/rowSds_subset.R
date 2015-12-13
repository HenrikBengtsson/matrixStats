library("matrixStats")

rowSds_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=sd, na.rm=na.rm)
  })
}

colSds_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=2L, FUN=sd, na.rm=na.rm)
  })
}


rowSds_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  center <- rowWeightedMeans(x, cols=cols, na.rm=na.rm)
  rowSds(x, rows=rows, cols=cols, center=center, na.rm=na.rm)
}

colSds_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  center <- colWeightedMeans(x, rows=rows, na.rm=na.rm)
  colSds(x, rows=rows, cols=cols, center=center, na.rm=na.rm)
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
      validateIndicesTestMatrix(x, rows, cols, ftest=rowSds, fsure=rowSds_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, ftest=rowSds_center, fsure=rowSds_R, na.rm=na.rm)

      validateIndicesTestMatrix(x, rows, cols, fcolTest=colSds, fsure=rowSds_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colSds_center, fsure=rowSds_R, na.rm=na.rm)
    }
  }
}
