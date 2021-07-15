library("matrixStats")

rowAlls_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = NA) {
  if (is.na(value)) {
    res <- apply(is.na(x), MARGIN = 1L, FUN = all, na.rm = na.rm)
  } else {
    y <- x == value
    
    # Preserve dimnames attribute
    dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
    if (!isTRUE(all.equal(dim(y), dim))) {
      dim(y) <- dim
      dimnames <- dimnames(x)
      if (!is.null(dimnames)) dimnames(y) <- dimnames
    }
    
    res <- apply(y, MARGIN = 1L, FUN = all, na.rm = na.rm)
  }
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

rowAnys_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = NA) {
  if (is.na(value)) {
    res <- apply(is.na(x), MARGIN = 1L, FUN = any, na.rm = na.rm)
  } else {
    y <- x == value
    
    # Preserve dimnames attribute
    dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
    if (!isTRUE(all.equal(dim(y), dim))) {
      dim(y) <- dim
      dimnames <- dimnames(x)
      if (!is.null(dimnames)) dimnames(y) <- dimnames
    }
    
    res <- apply(y, MARGIN = 1L, FUN = any, na.rm = na.rm)
  }
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

rowAnyMissings_R <- function(x, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = anyMissing)
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}


all_R <- function(x, value = TRUE, ...) {
  if (is.na(value)) {
    all(is.na(x), ...)
  } else {
    all(x == value, ...)
  }
}

any_R <- function(x, value = TRUE, ...) {
  if (is.na(value)) {
    any(is.na(x), ...)
  } else {
    any(x == value, ...)
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -3, max = 3), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"
x[2:3, ] <- NA_integer_
x[2, 1] <- 0L
x[4:5, ] <- 0L
x[4, 6] <- NA_integer_

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
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = 0, na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = 0, na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = NA_integer_, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = 0, na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = 0, na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = NA_integer_, useNames = useNames)
    
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = 0, na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = 0, na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = NA_integer_, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = 0, na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = 0, na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = NA_integer_, useNames = useNames)
    
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnyMissings,
                                  fsure = rowAnyMissings_R, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnyMissings,
                                  fsure = rowAnyMissings_R, useNames = useNames)        
      }
    }
  }
}

for (rr in seq_len(nrow(x))) {
  for (idxs in index_cases) {
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = 0, na.rm = TRUE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = 0, na.rm = FALSE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = NA_integer_)

    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = 0, na.rm = TRUE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = 0, na.rm = FALSE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = NA_integer_)
  }
}


storage.mode(x) <- "character"
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (rows in index_cases) {
    for (cols in index_cases) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = "0", na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = "0", na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAlls, fsure = rowAlls_R,
                                  value = NA_character_, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = "0", na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = "0", na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAlls, fsure = rowAlls_R,
                                  value = NA_character_, useNames = useNames)
    
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = "0", na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = "0", na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnys, fsure = rowAnys_R,
                                  value = NA_character_, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = "0", na.rm = TRUE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = "0", na.rm = FALSE, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnys, fsure = rowAnys_R,
                                  value = NA_character_, useNames = useNames)
    
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowAnyMissings,
                                  fsure = rowAnyMissings_R, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colAnyMissings,
                                  fsure = rowAnyMissings_R, useNames = useNames)        
      }
    }
  }
}

for (rr in seq_len(nrow(x))) {
  for (idxs in index_cases) {
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = "0", na.rm = TRUE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = "0", na.rm = FALSE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = allValue, fsure = all_R,
                              value = NA_integer_)

    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = "0", na.rm = TRUE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = "0", na.rm = FALSE)
    validateIndicesTestVector(x[rr, ], idxs,
                              ftest = anyValue, fsure = any_R,
                              value = NA_integer_)
  }
}
