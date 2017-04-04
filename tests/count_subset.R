library("matrixStats")

count_R <- function(x, value = TRUE, na.rm = FALSE, ...) {
  if (is.na(value)) {
    counts <- sum(is.na(x))
  } else {
    counts <- sum(x == value, na.rm = na.rm)
  }
  as.integer(counts)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -3, max = 3)
storage.mode(x) <- "integer"
for (idxs in index_cases) {
  validateIndicesTestVector(x, idxs,
                            ftest = count, fsure = count_R,
                            value = 0, na.rm = TRUE)
  validateIndicesTestVector(x, idxs,
                            ftest = count, fsure = count_R,
                            value = 0, na.rm = FALSE)
  validateIndicesTestVector(x, idxs,
                            ftest = count, fsure = count_R,
                            value = NA_integer_)
}
