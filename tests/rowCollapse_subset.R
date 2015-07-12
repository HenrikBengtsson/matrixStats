library("matrixStats")

rowCollapse_R <- function(x, idxs, ...) {
  ans <- c()
  storage.mode(ans) <- storage.mode(x)
  for (ii in seq_len(length(idxs))) {
    ans[ii] <- x[ii,idxs[ii]]
  }
  ans
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
idxs <- seq_len(6)
for (rows in indexCases) {
  if (is.null(rows)) rows <- seq_len(nrow(x))

  suppressWarnings({
    actual <- tryCatch(rowCollapse(x, idxs, rows=rows), error=function(c) "error")
    expect <- tryCatch(rowCollapse_R(x[rows,,drop=FALSE], idxs[rows]), error=function(c) "error")
  })
  stopifnot(all.equal(actual, expect))

  suppressWarnings({
    actual <- tryCatch(colCollapse(t(x), idxs, cols=rows), error=function(c) "error")
  })
  stopifnot(all.equal(actual, expect))
}
