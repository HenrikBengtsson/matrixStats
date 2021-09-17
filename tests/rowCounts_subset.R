library("matrixStats")

rowCounts_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = NA) {
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
  if (isTRUE(useNames) && !is.null(names)) names(counts) <- names
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

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
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
      }
    }
  }
}

x <- matrix(rep(letters, length.out = 6 * 6), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_character_
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  
  count <- 0L
  for (rows in index_cases) {
    for (cols in index_cases) {
      count <- count + 1L
      na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
      useNames <- c(NA, TRUE, FALSE)[count %% 3 + 1]
      
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
    }
  }
}
