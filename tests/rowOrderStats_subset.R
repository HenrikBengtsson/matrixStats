library("matrixStats")

rowOrderStats_R <- function(x, probs, ...) {
  ans <- apply(x, MARGIN=1L, FUN=quantile, probs=probs, type=3L)

  # Remove Attributes
  attributes(ans) <- NULL
  ans
} # rowOrderStats_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
probs <- 0.3
for (rows in indexCases) {
  for (cols in indexCases) {
    if (is.null(cols)) which <- round(probs*ncol(x))
    else {
      xxrows <- rows
      suppressWarnings({
        xx <- tryCatch(x[,cols,drop=FALSE], error=function(c) "error")
        if (identical(xx, "error")) which <- 0
        else which <- round(probs*ncol(xx))
      })
    }
    if (which == 0) next

    validateIndicesTestMatrix(x, rows, cols, ftest=rowOrderStats, fsure=rowOrderStats_R, which=which, probs=probs)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colOrderStats, fsure=rowOrderStats_R, which=which, probs=probs)
  }
}
