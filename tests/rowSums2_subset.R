library("matrixStats")

rowSums2_R <- function(x, na.rm = FALSE, ...) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::rowSums() doesn't.  What should rowSums2() do?
  ## apply(x, MARGIN = 1L, FUN = sum, na.rm = na.rm)
  rowSums(x, na.rm = na.rm)
}

colSums2_R <- function(x, na.rm = FALSE, ...) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::colSums() doesn't.  What should colSums2() do?
  ## apply(x, MARGIN = 2L, FUN = sum, na.rm = na.rm)
  colSums(x, na.rm = na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowSums2, fsure = rowSums2_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colSums2, fsure = rowSums2_R,
                                na.rm = na.rm)
    }
  }
}
