library("matrixStats")

rowMins_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = min, ...)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
} # rowMins_R()

rowMaxs_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = max, ...)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
} # rowMaxs_R()

rowRanges_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    ans <- t(apply(x, MARGIN = 1L, FUN = range, ...))
  })

  # Preserve rownames attribute
  dim <- c(dim(x)[1], 2L)
  if (!isTRUE(all.equal(dim(ans), dim))) {
    dim(ans) <- dim
    rownames <- rownames(x)
    if (!is.null(dimnames)) rownames(ans) <- rownames
  }
  if (is.na(useNames) || !useNames) dimnames(ans) <- NULL
  ans
} # rowRanges_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check rownames/names attributes
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
                                ftest = rowRanges, fsure = rowRanges_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMins, fsure = rowMins_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowMaxs, fsure = rowMaxs_R,
                                na.rm = na.rm, useNames = useNames)

      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colRanges, fsure = rowRanges_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMins, fsure = rowMins_R,
                                na.rm = na.rm, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colMaxs, fsure = rowMaxs_R,
                                na.rm = na.rm, useNames = useNames)
    }
  }
}
