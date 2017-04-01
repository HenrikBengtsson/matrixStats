library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (mode in c("numeric", "integer")) {
  x <- runif(6, min = -6, max = 6)
  w <- runif(6, min = 0, max = 6)
  storage.mode(x) <- mode
  storage.mode(w) <- mode
  if (mode == "numeric") w[1] <- Inf

  for (idxs in index_cases) {
    validateIndicesTestVector_w(x, w, idxs,
                                ftest = weightedMedian,
                                fsure = weightedMedian,
                                na.rm = TRUE)
    validateIndicesTestVector_w(x, w, idxs,
                                ftest = weightedMedian,
                                fsure = weightedMedian,
                                na.rm = FALSE)

    for (ties in c("weighted", "mean", "min", "max")) {
      validateIndicesTestVector_w(x, w, idxs,
                                  ftest = weightedMedian,
                                  fsure = weightedMedian,
                                  na.rm = TRUE, ties = ties)
      validateIndicesTestVector_w(x, w, idxs,
                                  ftest = weightedMedian,
                                  fsure = weightedMedian,
                                  na.rm = FALSE, ties = ties)
    }
  }
}
