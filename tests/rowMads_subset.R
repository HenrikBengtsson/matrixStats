library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowMads_R <- function(x, na.rm = FALSE, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = mad, na.rm = na.rm)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

colMads_R <- function(x, na.rm = FALSE, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = mad, na.rm = na.rm)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

rowMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- rowMedians(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  rowMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
}

colMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- colMedians(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  colMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
}


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
      na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
      useNames <- c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)
      useNames <- useNames[count %% length(useNames) + 1]
      
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMads, fsure = rowMads_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMads_center, fsure = rowMads_R,
                                na.rm = na.rm, useNames = useNames)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMads, fsure = rowMads_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMads_center, fsure = rowMads_R,
                                na.rm = na.rm, useNames = useNames)
    }
  }
}
