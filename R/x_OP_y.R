x_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  na.rm <- as.logical(na.rm)
  .Call("x_OP_y", x, y, dim(x), na.rm, TRUE, package="matrixStats")
} # x_OP_y()


t_tx_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  x <- t(x)
  ans <- x_OP_y(x, y, FUN=FUN, na.rm=na.rm)
  ans <- t(ans)
  ans
} # t_tx_OP_y()


############################################################################
# HISTORY:
# 2014-11-24 [HB]
# o Created.
############################################################################
