library("matrixStats")

rowWeightedMeans_R <- function(x, w, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=weighted.mean, w=w, na.rm=na.rm, ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (mode in c("numeric", "integer")) {
  x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
  w <- runif(6, min=0, max=6)
  storage.mode(x) <- mode
  storage.mode(w) <- mode
  if (mode == "numeric") w[1] <- Inf

  for (rows in indexCases) {
    for (cols in indexCases) {
      for (na.rm in c(TRUE, FALSE)) {
        validateIndicesTestMatrix_w(x, w, rows, cols, ftest=rowWeightedMeans, fsure=rowWeightedMeans_R, na.rm=na.rm)
        validateIndicesTestMatrix_w(x, w, rows, cols, fcolTest=colWeightedMeans, fsure=rowWeightedMeans_R, na.rm=na.rm)
      }
    }
  }
}
