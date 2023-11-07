library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowVars_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  
  # Keep naming support consistency same as rowVars()
  if (is.null(center) || ncol(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  res
}

colVars_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  
  # Keep naming support consistency same as colVars()
  if (is.null(center) || nrow(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  res
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  res <- rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  res <- colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
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

  count <- 0L
  for (rows in index_cases) {
    for (cols in index_cases) {
      count <- count + 1L
      na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
      useNames <- c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)
      useNames <- useNames[count %% length(useNames) + 1]
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowVars, fsure = rowVars_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowVars_center, fsure = rowVars_R,
                                na.rm = na.rm, center = TRUE, useNames = useNames)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colVars, fsure = rowVars_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colVars_center, fsure = rowVars_R,
                                na.rm = na.rm, center = TRUE, useNames = useNames)
    }
  }
}
