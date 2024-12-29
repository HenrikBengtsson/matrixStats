library("matrixStats")

rowSums2_R <- function(x, na.rm = FALSE, ..., useNames = TRUE) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::rowSums() doesn't.  What should rowSums2() do?
  ## apply(x, MARGIN = 1L, FUN = sum, na.rm = na.rm)
  res <- rowSums(x, na.rm = na.rm)
  if (!useNames) names(res) <- NULL
  res
}

colSums2_R <- function(x, na.rm = FALSE, ..., useNames = TRUE) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::colSums() doesn't.  What should colSums2() do?
  ## apply(x, MARGIN = 2L, FUN = sum, na.rm = na.rm)
  res <- colSums(x, na.rm = na.rm)
  if (!useNames) names(res) <- NULL
  res
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
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
        for (useNames in c(TRUE, FALSE)) {
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowSums2, fsure = rowSums2_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colSums2, fsure = rowSums2_R,
                                    na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
}
