library("matrixStats")

rowRanks_R <- function(x, ties.method = "average", ..., useNames = TRUE) {
  ans <- t(apply(x, MARGIN = 1L, FUN = rank, na.last = "keep",
                 ties.method = ties.method))
  
  # Preserve dimnames attribute
  dim(ans) <- dim(x)
  dimnames <- dimnames(x)
  if (useNames && !is.null(dimnames)) dimnames(ans) <- dimnames

  ans
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check dimnames attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

colRanks_R_t <- function(x, rows, cols, ..., useNames = TRUE) {
  t(colRanks(t(x), rows = cols, cols = rows, preserveShape = TRUE, ..., useNames = useNames))
}

colRanks_R <- function(x, rows, cols, ..., useNames = TRUE) {
  colRanks(t(x), rows = cols, cols = rows, preserveShape = FALSE, ..., useNames = useNames)
}

for (rows in index_cases) {
  for (cols in index_cases) {
    for (useNames in c(TRUE, FALSE)){
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowRanks, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
  
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = colRanks_R_t, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
      
      # Check dimnames attribute
      dimnames(x) <- dimnames
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowRanks, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = colRanks_R, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
      dimnames(x) <- NULL
    }
  }
}
