library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowSds_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 1L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  sigma
}

colSds_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 2L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  sigma
}


rowSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm)
  sigma <- rowSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(sigma)))
  sigma
}

colSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm)
  sigma <- colSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(sigma)))
  sigma
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
                                ftest = rowSds, fsure = rowSds_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowSds_center, fsure = rowSds_R,
                                na.rm = na.rm)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colSds, fsure = rowSds_R,
                                na.rm = na.rm)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colSds_center, fsure = rowSds_R,
                                na.rm = na.rm)
    }
  }
}
