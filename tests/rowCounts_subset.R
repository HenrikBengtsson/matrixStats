library("matrixStats")

rowCounts_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = TRUE) {
  if (is.na(value)) {
    counts <- apply(x, MARGIN = 1L, FUN = function(x)
      sum(is.na(x))
    )
  } else {
    counts <- apply(x, MARGIN = 1L, FUN = function(x)
      sum(x == value, na.rm = na.rm)
    )
  }
  # Preserve names attribute
  names <- names(counts)  
  counts <- as.integer(counts)
  if (useNames && !is.null(names)) names(counts) <- names
  counts
} # rowCounts_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_real_
storage.mode(x) <- "integer"

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

for (rows in index_cases) {
  for (cols in index_cases) {
    for (useNames in c(TRUE, FALSE)){
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = 0, na.rm = TRUE, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = 0, na.rm = TRUE, useNames = useNames)
      for (value in c(0, NA_integer_)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
      }
      
      # Check names attribute
      dimnames(x) <- dimnames
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = 0, na.rm = TRUE, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = 0, na.rm = TRUE, useNames = useNames)
      for (value in c(0, NA_integer_)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
      }
      dimnames(x) <- NULL
    }
  }
}

x <- matrix(rep(letters, length.out = 6 * 6), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_character_
for (rows in index_cases) {
  for (cols in index_cases) {
    for (useNames in c(TRUE, FALSE)){
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = "g", na.rm = TRUE, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = "g", na.rm = TRUE, useNames = useNames)
      for (value in c("g", NA_character_)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
      }
      
      # Check names attribute
      dimnames(x) <- dimnames
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = "g", na.rm = TRUE, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = "g", na.rm = TRUE, useNames = useNames)
      for (value in c("g", NA_character_)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colCounts, fsure = rowCounts_R,
                                  value = value, useNames = useNames)
      }
      dimnames(x) <- NULL
    }
  }
}
