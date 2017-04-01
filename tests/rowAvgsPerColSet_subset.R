library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
#W <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
for (rows in index_cases) {
  for (cols in index_cases) {
    if (is.null(rows)) {
      rows <- seq_len(nrow(x))
      rows_finite <- rows
    } else {
      rows_finite <- rows[is.finite(rows)]
    }

    if (is.null(cols)) {
      cols <- seq_len(ncol(x))
      cols_finite <- cols
    } else {
      cols_finite <- cols[is.finite(cols)]
    }

    suppressWarnings({
      actual <- tryCatch({
        rowAvgsPerColSet(x, rows = rows, S = matrix(cols, ncol = 1),
                         FUN = rowMeans)
      }, error = function(c) "error")
      expect <- tryCatch({
        rowMeans(x[rows, cols_finite, drop = FALSE], na.rm = TRUE)
      }, error = function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))

    suppressWarnings({
      actual <- tryCatch({
        colAvgsPerRowSet(x, cols = cols, S = matrix(rows, ncol = 1),
                         FUN = colMeans)
      }, error = function(c) "error")
      expect <- tryCatch({
        colMeans(x[rows_finite, cols, drop = FALSE], na.rm = TRUE)
      }, error = function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))
  }
}
