library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min=-3, max=3)
x[2] <- NA
for (mode in c("integer", "numeric")) {
  storage.mode(x) <- mode
  for (idxs in indexCases) {
    validateIndicesTestVector(x, idxs, ftest=anyMissing, fsure=function(x, ...) {
        anyValue(x, value=NA)
    })
  }
}
