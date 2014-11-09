allocVector <- function(length, value=0.0, ...) {
  length <- as.integer(length)
  .Call("allocVector2", length, value, PACKAGE="matrixStats")
} # allocVector()

allocMatrix <- function(nrow, ncol, value=0.0, ...) {
  nrow <- as.integer(nrow)
  ncol <- as.integer(ncol)
  .Call("allocMatrix2", nrow, ncol, value, PACKAGE="matrixStats")
} # allocMatrix()

allocArray <- function(dim, value=0.0, ...) {
  dim <- as.integer(dim)
  .Call("allocArray2", dim, value, PACKAGE="matrixStats")
} # allocArray()


############################################################################
# HISTORY:
# 2014-11-08 [HB]
# o Created.
############################################################################
