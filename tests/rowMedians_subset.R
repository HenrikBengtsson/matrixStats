library("matrixStats")

rowMedians_R <- function(x, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = median, na.rm = na.rm)
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

colMedians_R <- function(x, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 2L, FUN = median, na.rm = na.rm)
  if (is.na(useNames) || !useNames) names(res) <- NULL
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
        for (useNames in c(NA, TRUE, FALSE)) {
          validateIndicesTestMatrix(x, rows, cols,
                                    ftest = rowMedians, fsure = rowMedians_R,
                                    na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix(x, rows, cols,
                                    fcoltest = colMedians, fsure = rowMedians_R,
                                    na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
}
