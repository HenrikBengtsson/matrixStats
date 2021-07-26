library("matrixStats")

rowCumprods_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    y <- t(apply(x, MARGIN = 1L, FUN = cumprod))
  })

  # Preserve dimnames attribute?
  dim(y) <- dim(x)
  dimnames <- dimnames(x)
  if (isTRUE(useNames) && !is.null(dimnames)) dimnames(y) <- dimnames  
  
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check dimnames attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowCumprods, fsure = rowCumprods_R, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = function(x, rows, cols, ..., useNames) {
          t(colCumprods(t(x), rows = cols, cols = rows, useNames = useNames))
        }, fsure = rowCumprods_R, useNames = useNames)
      }
    }
  }
}
