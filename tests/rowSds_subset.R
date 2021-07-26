library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowSds_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 1L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  
  # Keep naming support consistency same as rowSds()
  if (is.null(center) || ncol(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(sigma) <- NULL
  }
  else if (isFALSE(useNames)) names(sigma) <- NULL
  sigma
}

colSds_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 2L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  
  # Keep naming support consistency same as colSds()
  if (is.null(center) || nrow(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(sigma) <- NULL
  }
  else if (isFALSE(useNames)) names(sigma) <- NULL
  sigma
}


rowSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  sigma <- rowSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(sigma)))
  sigma
}

colSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  sigma <- colSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(sigma)))
  sigma
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
        for (useNames in c(NA, TRUE, FALSE)) {
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowSds, fsure = rowSds_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowSds_center, fsure = rowSds_R,
                                    na.rm = na.rm, center = TRUE, useNames = useNames)
    
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colSds, fsure = rowSds_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colSds_center, fsure = rowSds_R,
                                    na.rm = na.rm, center = TRUE, useNames = useNames)
        }
      }
    }
  }
}
