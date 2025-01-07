library("matrixStats")

rowOrderStats_R <- function(x, probs, ..., useNames = TRUE) {
  ans <- apply(x, MARGIN = 1L, FUN = quantile, probs = probs, type = 3L)

  # Remove Attributes
  if (!useNames || length(ans) == 0L) attributes(ans) <- NULL
  ans
} # rowOrderStats_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

probs <- 0.3
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      # Check names attribute
      for (useNames in c(TRUE, FALSE)) {
        if (is.null(cols)) which <- round(probs * ncol(x))
        else {
          xxrows <- rows
          suppressWarnings({
            xx <- tryCatch(x[, cols, drop = FALSE], error = function(c) "error")
            if (identical(xx, "error")) which <- 0L
            else which <- round(probs * ncol(xx))
          })
        }
        if (which == 0L) next
    
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowOrderStats, fsure = rowOrderStats_R,
                                  which = which, probs = probs, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colOrderStats, fsure = rowOrderStats_R,
                                  which = which, probs = probs, useNames = useNames)
      }
    }
  }
}
