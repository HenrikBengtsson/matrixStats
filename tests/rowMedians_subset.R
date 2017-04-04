library("matrixStats")

rowMedians_R <- function(x, na.rm = FALSE, ...) {
  apply(x, MARGIN = 1L, FUN = median, na.rm = na.rm)
}

colMedians_R <- function(x, na.rm = FALSE, ...) {
  apply(x, MARGIN = 2L, FUN = median, na.rm = na.rm)
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
                                ftest = rowMedians, fsure = rowMedians_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMedians, fsure = rowMedians_R,
                                na.rm = na.rm)
    }
  }
}
