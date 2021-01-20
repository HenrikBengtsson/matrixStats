library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  res
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm)
  res <- rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm)
  res <- colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(res)))
  res
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
                                ftest = rowVars, fsure = rowVars_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowVars_center, fsure = rowVars_R,
                                na.rm = na.rm)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colVars, fsure = rowVars_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colVars_center, fsure = rowVars_R,
                                na.rm = na.rm)
    }
  }
}
