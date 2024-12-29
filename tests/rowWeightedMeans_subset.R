library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowWeightedMeans_R <- function(x, w, na.rm = FALSE, ..., useNames = TRUE) {
  res <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as rowWeightedMeans()
  idxs <- which(is.na(w) | w != 0)
  nw <- length(idxs)
  if (na.rm) na.rm <- anyMissing(x)
  if ((!is.null(w) && nw == 0L) || isFALSE(na.rm)) {
    if (!useNames) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  
  res
}

colWeightedMeans_R <- function(x, w, na.rm = FALSE, ..., useNames = TRUE) {
  res <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as colWeightedMeans()
  idxs <- which(is.na(w) | w != 0)
  nw <- length(idxs)
  if (!is.null(w) && nw == 0L) {
    if (!useNames) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  
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
        useNames <- c(TRUE, FALSE)
        useNames <- useNames[count %% length(useNames) + 1]

        validateIndicesTestMatrix_w(x, w, rows, cols, 
                                    ftest = rowWeightedMeans, fsure = rowWeightedMeans_R,
                                    na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix_w(x, w, rows, cols,
                                    fcoltest = colWeightedMeans, fsure = colWeightedMeans_R,
                                    na.rm = na.rm, useNames = useNames)
      }
    }
  }
}
