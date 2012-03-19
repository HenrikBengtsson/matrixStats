rowMads <- function(x, centers=rowMedians(x,...), constant=1.4826, ...) {
  x <- x - centers;
  x <- abs(x);
  x <- rowMedians(x, ...);
  x <- constant*x;
  x;
} # rowMads()


colMads <- function(x, centers=colMedians(x,...), constant=1.4826, ...) {
  for (cc in seq(length=ncol(x))) {
    x[,cc] <- x[,cc] - centers[cc];
  }
  x <- abs(x);
  x <- colMedians(x, ...);
  x <- constant*x;
  x;
} # colMads()

############################################################################
# HISTORY:
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
