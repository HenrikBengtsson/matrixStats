library("matrixStats")

rowMads_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 1L, FUN = mad, na.rm = na.rm)
  })
}

colMads_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 2L, FUN = mad, na.rm = na.rm)
  })
}

rowMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowMedians(x, cols = cols, na.rm = na.rm)
  rowMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}

colMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colMedians(x, rows = rows, na.rm = na.rm)
  colMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMads, fsure = rowMads_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMads_center, fsure = rowMads_R,
                                na.rm = na.rm)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMads, fsure = rowMads_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMads_center, fsure = rowMads_R,
                                na.rm = na.rm)
    }
  }
}
