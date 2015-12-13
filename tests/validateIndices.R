library(matrixStats)

source("utils/validateIndicesFramework.R")
x <- 1:6
for (idxs in indexCases) {
  for (mode in c("integer", "numeric", "logical")) {
    if (!is.null(idxs)) {
      suppressWarnings({storage.mode(idxs) <- mode})
    }

    validateIndicesTestVector(x, idxs, ftest=function(x, idxs) {
      validateIndices(idxs, length(x))
    }, fsure=function(x) x)
  }
}

for (idxs in indexErrorCases) {
  validateIndicesTestVector(x, idxs, ftest=function(x, idxs) {
    validateIndices(idxs, length(x))
  }, fsure=function(x) x)
}

x <- matrix(1:36, 6, 6)
for (rows in indexCases) {
  for (cols in indexCases) {

    validateIndicesTestMatrix(x, rows, cols, ftest=function(x, rows, cols) {
      vr <- validateIndices(rows, dim(x)[1], FALSE)
      vc <- validateIndices(cols, dim(x)[2], FALSE)

      stopifnot(all((vr > 0 & vr <= dim(x)[1]) | is.na(vr)))
      stopifnot(all((vc > 0 & vc <= dim(x)[2]) | is.na(vc)))
      suppressWarnings({x[vr,vc,drop=FALSE]})

    }, fsure=function(x) x)
  }
}
