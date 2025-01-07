library("matrixStats")

rowMeans_R <- function(x, na.rm = FALSE, ..., useNames = TRUE) {
  res <- rowMeans(x, na.rm = na.rm)
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
  
  count <- 0L
  for (rows in index_cases) {
    for (cols in index_cases) {
      count <- count + 1L
      na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
      useNames <- c(TRUE, FALSE)
      useNames <- useNames[count %% length(useNames) + 1]
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMeans2, fsure = rowMeans_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMeans2, fsure = rowMeans_R,
                                na.rm = na.rm, useNames = useNames)
    }
  }
}
