library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binCounts_hist <- function(x, bx, right = FALSE, ...) {
  n0 <- graphics::hist(x, breaks = bx, right = right,
                       include.lowest = TRUE, plot = FALSE)$counts
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -6, max = 6)
storage.mode(x) <- "integer"
bx <- c(-6, 0, 3, 4, 10)
for (idxs in index_cases) {
  validateIndicesTestVector(x, idxs,
                            ftest = binCounts, fsure = binCounts_hist,
                            bx = bx, right = FALSE)
  validateIndicesTestVector(x, idxs,
                            ftest = binCounts, fsure = binCounts_hist,
                            bx = bx, right = TRUE)
}
