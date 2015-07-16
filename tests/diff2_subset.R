library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min=-6, max=6)
for (l in 1:2) {
  for (d in 1:2) {
    for (idxs in indexCases) {
      validateIndicesTestVector(x, idxs, ftest=diff2, fsure=diff, lag=l, differences=d)
    }
  }
}
