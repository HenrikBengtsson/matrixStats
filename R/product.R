product <- function(x, idxs=NULL, na.rm=FALSE, ...) {
  if (!is.null(idxs)) x <- x[idxs]

  .Call("productExpSumLog", x, as.logical(na.rm), TRUE, PACKAGE="matrixStats");
} # product()


############################################################################
# HISTORY:
# 2015-06-03 [DJ]
# o Supported subsetted computation.
# 2014-06-04 [HB]
# o Created.
############################################################################
