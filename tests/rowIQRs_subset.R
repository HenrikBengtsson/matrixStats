library("matrixStats")

rowIQRs_R <- function(x, na.rm = FALSE, ..., useNames = NA) {
  quantile_na <- function(x, ..., na.rm = FALSE) {
    if (!na.rm && anyMissing(x))
      return(c(NA_real_, NA_real_))
    quantile(x, ..., na.rm = na.rm)
  }
  q <- apply(x, MARGIN = 1L, FUN = quantile_na,
             probs = c(0.25, 0.75), na.rm = na.rm)
  rownames(q) <- NULL # Not needed anymore
  
  # Preserve names attribute
  dim(q) <- c(2L, nrow(x))
  names <- rownames(x)
  if (isTRUE(useNames) && !is.null(names)) colnames(q) <- names
  
  q[2L, , drop = TRUE] - q[1L, , drop = TRUE]
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -6, max = 6)
for (idxs in index_cases) {
  for (na.rm in c(TRUE, FALSE)) {
    validateIndicesTestVector(x, idxs, ftest = iqr, fsure = function(x, na.rm) {
      dim(x) <- c(1L, length(x))
      rowIQRs_R(x, na.rm = na.rm)
    }, na.rm = na.rm)
  }
}

x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)

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
                                    ftest = rowIQRs, fsure = rowIQRs_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colIQRs, fsure = rowIQRs_R,
                                    na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
}
