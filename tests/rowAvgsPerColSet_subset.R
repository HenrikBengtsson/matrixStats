library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
X <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
#W <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
for (rows in indexCases) {
  for (cols in indexCases) {
    if (is.null(rows)) {
      rows <- seq_len(nrow(X))
      rows. <- rows
    } else {
      rows. <- rows[is.finite(rows)]
    }

    if (is.null(cols)) {
      cols <- seq_len(ncol(X))
      cols. <- cols
    } else {
      cols. <- cols[is.finite(cols)]
    }

    suppressWarnings({
      actual <- tryCatch(rowAvgsPerColSet(X, rows=rows, S=matrix(cols, ncol=1), FUN=rowMeans), error=function(c) "error")
      expect <- tryCatch(rowMeans(X[rows,cols.,drop=FALSE], na.rm=TRUE), error=function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))

    suppressWarnings({
      actual <- tryCatch(colAvgsPerRowSet(X, cols=cols, S=matrix(rows, ncol=1), FUN=colMeans), error=function(c) "error")
      expect <- tryCatch(colMeans(X[rows.,cols,drop=FALSE], na.rm=TRUE), error=function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))
  }
}
