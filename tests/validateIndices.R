library(matrixStats)

source("utils/validateIndicesFramework.R")

ftest <- function(x, idxs) validateIndices(idxs, length(x))

x <- 1:6
for (idxs in index_cases) {
  for (mode in c("integer", "numeric", "logical")) {
    if (!is.null(idxs)) {
      suppressWarnings({storage.mode(idxs) <- mode})
    }
    validateIndicesTestVector(x, idxs, ftest = ftest, fsure = identity)
  }
}

ftest <- function(x, idxs) validateIndices(idxs, length(x))

for (idxs in index_error_cases) {
  validateIndicesTestVector(x, idxs, ftest = ftest, fsure = identity)
}


ftest <- function(x, rows, cols) {
  vr <- validateIndices(rows, dim(x)[1], FALSE)
  vc <- validateIndices(cols, dim(x)[2], FALSE)

  stopifnot(all((vr > 0 & vr <= dim(x)[1]) | is.na(vr)))
  stopifnot(all((vc > 0 & vc <= dim(x)[2]) | is.na(vc)))
  suppressWarnings(x <- x[vr, vc, drop = FALSE])
  x
}

x <- matrix(1:36, nrow = 6, ncol = 6)
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols, ftest = ftest, fsure = identity)
  }
}
