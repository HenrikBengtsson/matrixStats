library("matrixStats")

rowQuantiles_R <- function(x, probs, na.rm = FALSE, drop = TRUE, ...) {
  q <- apply(x, MARGIN = 1L, FUN = function(x, probs, na.rm) {
    if (!na.rm && any(is.na(x))) {
      na_value <- NA_real_
      storage.mode(na_value) <- storage.mode(x)
      rep(na_value, times = length(probs))

    } else {
      as.vector(quantile(x, probs = probs, na.rm = na.rm, ...))
    }
  }, probs = probs, na.rm = na.rm)

  if (!is.null(dim(q))) q <- t(q)
  else dim(q) <- c(nrow(x), length(probs))

  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100 * probs)
  rownames(q) <- rownames(x)

  if (drop) q <- drop(q)
  q
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
probs <- c(0, 0.25, 0.75, 1)
for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols,
                                ftest = rowQuantiles, fsure = rowQuantiles_R,
                                probs = probs, na.rm = na.rm, drop = FALSE)
      validateIndicesTestMatrix(x, rows, cols,
                                fcoltest = colQuantiles, fsure = rowQuantiles_R,
                                probs = probs, na.rm = na.rm, drop = FALSE)
    }
  }
}
