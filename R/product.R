product <- function(x, na.rm=FALSE, ...) {
  .Call("productExpSumLog", x, as.logical(na.rm), TRUE, PACKAGE="matrixStats");
} # product()


############################################################################
# HISTORY:
# 2014-06-04 [HB]
# o Created.
############################################################################
