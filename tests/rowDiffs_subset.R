library("matrixStats")

rowDiffs_R <- function(x, lag = 1L, differences = 1L, ..., useNames = NA) {
  ncol2 <- ncol(x) - lag * differences
  if (ncol2 <= 0) {
    y <- matrix(x[integer(0L)], nrow = nrow(x), ncol = 0L)
    # Preserve names attribute
    if (isTRUE(useNames) && !is.null(rownames(x))) rownames(y) <- rownames(x)
    return(y)
  }
  suppressWarnings({
    y <- apply(x, MARGIN = 1L, FUN = diff, lag = lag, differences = differences)
  })
  y <- t(y)
  
  # Preserve dimnames attribute
  dim(y) <- c(nrow(x), ncol2)
  if (isTRUE(useNames) && !is.null(dimnames(x))) {
    colnames <- colnames(x)
    if (!is.null(colnames)) {
      len <- length(colnames)
      colnames <- colnames[(len - ncol2 + 1):len]
    }
    dimnames(y) <- list(rownames(x), colnames)      
  }
  else dimnames(y) <- NULL
  
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check dimnames attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      for (lag in 1:2) {
        for (differences in 1:3) {
          # Check dimnames attribute
          for (useNames in c(NA, TRUE, FALSE)) {
            validateIndicesTestMatrix(x, rows, cols,
                                      ftest = rowDiffs, fsure = rowDiffs_R,
                                      lag = lag, differences = differences, useNames = useNames)
            validateIndicesTestMatrix(x, rows, cols,
                                      ftest = function(x, rows, cols, ..., useNames) {
              t(colDiffs(t(x), rows = cols, cols = rows, ..., useNames = useNames))
                                      }, fsure = rowDiffs_R,
                                      lag = lag, differences = differences, useNames = useNames)
          }
        }
      }
    }
  }
}
