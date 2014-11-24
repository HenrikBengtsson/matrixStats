rowMads <- function(x, centers=NULL, constant=1.4826, na.rm=FALSE, xdim=dim(x), ...) {
  if (is.null(centers)) {
    xdim <- as.integer(xdim)
    na.rm <- as.logical(na.rm)
    constant = as.numeric(constant)
    hasNAs <- TRUE
    x <- .Call("rowMads", x, xdim, constant, na.rm, hasNAs, TRUE, PACKAGE="matrixStats");
  } else {
    x <- x - centers
    x <- abs(x)
    x <- rowMedians(x, na.rm=na.rm, ...)
    x <- constant*x
  }
  x
} # rowMads()


colMads <- function(x, centers=NULL, constant=1.4826, na.rm=FALSE, xdim=dim(x), ...) {
  if (is.null(centers)) {
    xdim <- as.integer(xdim)
    na.rm <- as.logical(na.rm)
    constant = as.numeric(constant)
    hasNAs <- TRUE
    x <- .Call("rowMads", x, xdim, constant, na.rm, hasNAs, FALSE, PACKAGE="matrixStats");
  } else {
    for (cc in seq(length=ncol(x))) {
      x[,cc] <- x[,cc] - centers[cc]
    }
    x <- abs(x)
    x <- colMedians(x, na.rm=na.rm, ...)
    x <- constant*x
  }
  x
} # colMads()


############################################################################
# HISTORY:
# 2014-11-17 [HB]
# o SPEEDUP: Implemented (col|row)Mads(..., centers=NULL) in native code.
# 2012-03-19 [HJ]
# o Changed default value of centers to row/colMedians(x,...)
# 2012-03-04 [HC]
# o BUG FIX: colMads() would return the incorrect estimates. This bug
#   was introduced in matrixStats v0.4.0 (2011-11-11).
# 2011-11-11 [HB]
# o Dropped the previously introduced expansion of 'center' in rowMads()
#   and colMads().  It added unnecessary overhead if not needed.
# 2011-10-13 [HJ]
# o Implemented colMads() as rowMads() by using the improved colMedians().
# o Now rowMads() expands 'center' to a matrix of the same dimensions as
#   'x'.  This is not actually necessary, but it enforces that 'x' must be
#   a matrix.
# 2008-03-26 [HB]
# o Created.
############################################################################
