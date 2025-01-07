library("matrixStats")

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
      useNames <- c(TRUE, FALSE)
      useNames <- useNames[count %% length(useNames) + 1]
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowTabulates, fsure = rowTabulates, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowTabulates, fsure = rowTabulates,
                                values = 1:3, useNames = useNames)
  
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = colTabulates, fsure = colTabulates, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = colTabulates, fsure = colTabulates,
                                values = 1:3, useNames = useNames)
    }
  }
}
