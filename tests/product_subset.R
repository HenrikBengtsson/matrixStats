library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -6, max = 6)
storage.mode(x) <- "integer"
for (idxs in index_cases) {
  validateIndicesTestVector(x, idxs,
                            ftest = product, fsure = prod,
                            na.rm = TRUE)
  validateIndicesTestVector(x, idxs,
                            ftest = product, fsure = prod,
                            na.rm = FALSE)
}
