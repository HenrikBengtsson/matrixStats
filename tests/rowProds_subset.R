library("matrixStats")

rowProds_R <- function(x, FUN = prod, na.rm = FALSE, ..., useNames = TRUE) {
  res <- apply(x, MARGIN = 1L, FUN = FUN, na.rm = na.rm)
  if (!useNames) names(res) <- NULL
  res
}

# Compare each selected group with its scalar operation. Duplicate and
# missing indices affect both the values and the labels of the result.
x <- matrix(c(-0, 2, -4, NA_real_, Inf, 0, 3, NaN, -1, 1, 5, -2), 3L,
            dimnames = list(letters[1:3], LETTERS[1:4]))
rows <- c(2L, NA_integer_, 2L, 1L)
cols <- c(4L, 2L, 1L, 4L)
selected <- x[rows, cols, drop = FALSE]
for (byRow in c(TRUE, FALSE)) {
  groups <- if (byRow) selected else t(selected)
  reduce <- if (byRow) rowProds else colProds
  for (remove in c(TRUE, FALSE)) {
    for (method in c("direct", "expSumLog")) {
      scalar <- if (method == "direct") prod else product
      expected <- vapply(seq_len(nrow(groups)), function(i) {
        scalar(groups[i, ], na.rm = remove)
      }, double(1L))
      names(expected) <- rownames(groups)
      actual <- reduce(x, rows = rows, cols = cols, na.rm = remove, method = method)
      stopifnot(identical(actual, expected))
      zeros <- which(expected == 0)
      stopifnot(identical(1 / actual[zeros], 1 / expected[zeros]))
      stopifnot(identical(reduce(x, rows = rows, cols = cols, na.rm = remove,
                               method = method, useNames = FALSE), unname(expected)))
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      for (na.rm in c(TRUE, FALSE)) {
        for (useNames in c(TRUE, FALSE)) {
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowProds, fsure = rowProds_R,
                                    method = "expSumLog",
                                    FUN = product, na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colProds, fsure = rowProds_R,
                                    method = "expSumLog",
                                    FUN = product, na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
}
