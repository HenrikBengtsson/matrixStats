library("matrixStats")

rowRanks_R <- function(x, ties.method = "average", ..., useNames = NA) {
  ans <- t(apply(x, MARGIN = 1L, FUN = rank, na.last = "keep",
                 ties.method = ties.method))
  
  # Preserve dimnames attribute?
  dim(ans) <- dim(x)
  dimnames(ans) <- if (isTRUE(useNames)) dimnames(x) else NULL

  ans
}

colRanks_R <- function(x, ties.method, preserveShape = FALSE, ..., useNames = NA) {
  ans <- t(apply(x, MARGIN = 2L, FUN = rank, na.last = "keep", ties.method = ties.method))
  
  # Preserve dimnames attribute?
  tx <- t(x)
  dim(ans) <- dim(tx)
  dimnames(ans) <- if (isTRUE(useNames)) dimnames(tx) else NULL
  
  if (preserveShape) ans <- t(ans)
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

colRanks_R_t <- function(x, rows, cols, ..., useNames = NA) {
  t(colRanks(t(x), rows = cols, cols = rows, preserveShape = TRUE, ..., useNames = useNames))
}

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
                                ftest = rowRanks, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = colRanks_R_t, fsure = rowRanks_R,
                                ties.method = "average", useNames = useNames)
      
      for (perserveShape in c(TRUE, FALSE)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = colRanks, fsure = colRanks_R,
                                  ties.method = "average", perserveShape = perserveShape,
                                  useNames = useNames)          
      }
    }
  }
}
