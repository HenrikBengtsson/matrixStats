rowMads <- function(x, centers=NULL, constant=1.4826, ...) {
  if (is.null(centers)) {
    centers <- rowMedians(x, ...);
  }
  # HJ
  # enlarge 'centers' so it is the same shape as 'x'
  # This is not actually necessary. It would be re-cycled
  # for 'x - centers' correctly.
  # But it enforces that 'x' must be a matrix.
  ncol <- ncol(x)
  centers <- matrix(rep(centers, times=ncol), ncol=ncol)
  x <- x - centers;
  x <- abs(x);
  x <- rowMedians(x, ...);
  x <- constant*x;
  x;
}

# HJ
colMads <- function(x, centers=NULL, constant=1.4826, ...) {
  if (is.null(centers)) {
    centers <- colMedians(x, ...)
  }
  # HJ
  # enlarge 'centers' so it is the same shape as 'x'
  # This is absolutely necessary! It would be re-cycled
  # for 'x - centers' incorrectly.
  # It also enforces that 'x' must be a matrix.
  nrow <- nrow(x)
  centers <- matrix(rep(centers, each=nrow), nrow=nrow)
  x <- x - centers;
  x <- abs(x);
  x <- colMedians(x, ...);
  x <- constant*x;
  x;
}

############################################################################
# HISTORY:
# 2008-03-26 [HB] 
# o Created.
############################################################################
