library("matrixStats")

rowProds_R <- function(x, FUN = prod, na.rm = FALSE, ...) {
  apply(x, MARGIN = 1L, FUN = FUN, na.rm = na.rm)
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
                                ftest = rowProds, fsure = rowProds_R,
                                method = "expSumLog",
                                FUN = product, na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colProds, fsure = rowProds_R,
                                method = "expSumLog",
                                FUN = product, na.rm = na.rm)
    }
  }
}
