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

# Check counts independently of rowCounts() and colCounts(), including bins
# which occur more than once and repeated or missing subset indices.
checkSubsetBins <- function(x, rows, cols, keys, useNames) {
  selected <- x[rows, cols, drop = FALSE]
  for (byRow in c(TRUE, FALSE)) {
    groups <- if (byRow) selected else t(selected)
    bins <- keys
    if (is.null(bins)) {
      distinct <- unique(as.vector(groups))
      bins <- if (is.raw(distinct)) as.raw(sort(as.integer(distinct))) else
        sort(distinct, na.last = TRUE)
    }
    expected <- matrix(0L, nrow(groups), length(bins))
    for (g in seq_len(nrow(groups))) {
      values <- groups[g, ]
      for (k in seq_along(bins)) {
        expected[g, k] <- if (is.na(bins[k])) sum(is.na(values)) else
          sum(values == bins[k], na.rm = TRUE)
      }
    }
    colnames(expected) <- if (is.raw(bins) && length(bins))
      sprintf("0x%x", as.integer(bins)) else as.character(bins)
    if (useNames && !is.null(rownames(groups))) rownames(expected) <- rownames(groups)
    tabulate <- if (byRow) rowTabulates else colTabulates
    actual <- tabulate(x, rows = rows, cols = cols, values = keys, useNames = useNames)
    stopifnot(identical(actual, expected))
  }
}

set.seed(137)
for (pool in list(c(-.Machine$integer.max, 0L, 1L, NA_integer_),
                  c(TRUE, FALSE, NA), as.raw(c(0, 1, 127, 255)))) {
  x <- matrix(sample(pool, 35L, replace = TRUE), 5L, 7L,
              dimnames = list(letters[1:5], LETTERS[1:7]))
  for (useNames in c(FALSE, TRUE)) {
    for (keys in list(NULL, pool[c(3, 2, 3, 1)])) {
      checkSubsetBins(x, c(4L, NA_integer_, 4L), c(7L, 2L), keys, useNames)
    }
    checkSubsetBins(x, c(3L, 1L), integer(), pool, useNames)
  }
}
