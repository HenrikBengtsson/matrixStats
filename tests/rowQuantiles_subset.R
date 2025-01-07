library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowQuantiles_R <- function(x, probs, na.rm = FALSE, drop = TRUE, ..., useNames = TRUE) {
  q <- apply(x, MARGIN = 1L, FUN = function(x, probs, na.rm) {
    if (!na.rm && any(is.na(x))) {
      na_value <- NA_real_
      storage.mode(na_value) <- storage.mode(x)
      rep(na_value, times = length(probs))

    } else {
      as.vector(quantile(x, probs = probs, na.rm = na.rm, names = FALSE, ...))
    }
  }, probs = probs, na.rm = na.rm)

  if (!is.null(dim(q))) q <- t(q)
  else dim(q) <- c(nrow(x), length(probs))

  colnames(q) <- matrixStats:::quantile_probs_names(probs)
  rownames(q) <- rownames(x)
  if (isFALSE(useNames)) dimnames(q) <- NULL

  if (drop) q <- drop(q)
  q
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
dimnames <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
probs <- c(0, 0.25, 0.75, 1)
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  
  count <- 0L
  for (rows in index_cases) {
    for (cols in index_cases) {
      count <- count + 1L
      na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
      useNames <- c(TRUE, FALSE)
      useNames <- useNames[count %% length(useNames) + 1]

      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowQuantiles, fsure = rowQuantiles_R,
                                probs = probs, na.rm = na.rm, drop = FALSE, useNames = useNames)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colQuantiles, fsure = rowQuantiles_R,
                                probs = probs, na.rm = na.rm, drop = FALSE, useNames = useNames)
    }
  }
}

