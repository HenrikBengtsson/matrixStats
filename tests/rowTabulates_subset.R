library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowTabulates, fsure=rowTabulates)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowTabulates, fsure=rowTabulates, values=1:3)

    validateIndicesTestMatrix(x, rows, cols, ftest=colTabulates, fsure=colTabulates)
    validateIndicesTestMatrix(x, rows, cols, ftest=colTabulates, fsure=colTabulates, values=1:3)
  }
}
