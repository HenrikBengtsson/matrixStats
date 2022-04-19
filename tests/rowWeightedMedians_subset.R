library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowWeightedMedians_R <- function(x, w, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = weightedMedian, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as rowWeightedMedians()
  if (!is.null(w)) {
    if (isFALSE(useNames)) names(res) <- NULL
  }
  else if (is.na(useNames) || !useNames) names(res) <- NULL
  
  res
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])
for (mode in c("numeric", "integer", "logical")) {
  x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
  w <- runif(6, min = 0, max = 6)
  storage.mode(x) <- mode
  storage.mode(w) <- if (mode == "logical") "integer" else mode
  if (mode == "numeric") w[1] <- Inf

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

        validateIndicesTestMatrix_w(x, w, rows, cols,
                                    ftest = rowWeightedMedians,
                                    fsure = rowWeightedMedians_R,
                                    na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix_w(x, w, rows, cols,
                                    fcoltest = colWeightedMedians,
                                    fsure = rowWeightedMedians_R,
                                    na.rm = na.rm, useNames = useNames)
      }
    }
  }
}
