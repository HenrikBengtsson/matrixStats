library("matrixStats")

rowCounts_R <- function(x, value = TRUE, na.rm = FALSE, ...) {
  if (is.null(value)) value <- sort(unique(as.vector(x)))
  counts <- matrix(0L, nrow = nrow(x), ncol = length(value))
  colnames(counts) <- value
  
  for (i in seq_along(value)) {
    if (is.na(value[i])) {
      counts[, i] <- apply(x, MARGIN = 1L, FUN = function(x) 
        sum(is.na(x))
      )
    } else {
      counts[, i] <- apply(x, MARGIN = 1L, FUN = function(x)
        sum(x == value[i], na.rm = na.rm)
      )
    }
  }
  if (length(value) == 1) as.vector(counts) else counts
} # rowCounts_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_real_
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = 0, na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = 0, na.rm = TRUE)
    for (value in c(0, NA_integer_)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = value)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = value)
    }
  }
}

x <- matrix(rep(letters, length.out = 6 * 6), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_character_
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = "g", na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = "g", na.rm = TRUE)
    for (value in c("g", NA_character_)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowCounts, fsure = rowCounts_R,
                                value = value)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colCounts, fsure = rowCounts_R,
                                value = value)
    }
  }
}

# Repeat tests for length(value) > 1

x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_real_
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = c(0, 1, 2), na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = c(0, 1, 2), na.rm = TRUE)
    value <- c(0, NA_integer_)
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = value)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = value)
  }
}

x <- matrix(rep(letters, length.out = 6 * 6), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_character_
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = c("g", "h"), na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = c("g", "h"), na.rm = TRUE)
    value <- c("g", NA_character_)
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = value)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = value)
  }
}

# Repeat tests for value = NULL

x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_real_
storage.mode(x) <- "integer"
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = NULL, na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = NULL, na.rm = TRUE)
    value <- NULL
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = value)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = value)
  }
}

x <- matrix(rep(letters, length.out = 6 * 6), nrow = 6, ncol = 6)
x[2:3, 3:4] <- NA_character_
for (rows in index_cases) {
  for (cols in index_cases) {
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = NULL, na.rm = TRUE)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = NULL, na.rm = TRUE)
    value <- NULL
    validateIndicesTestMatrix(x, rows, cols,
                              ftest = rowCounts, fsure = rowCounts_R,
                              value = value)
    validateIndicesTestMatrix(x, rows, cols,
                              fcoltest = colCounts, fsure = rowCounts_R,
                              value = value)
  }
}
