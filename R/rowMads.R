rowMads <- function(x, centers=NULL, constant=1.4826, ...) {
  if (is.null(centers)) {
    centers <- rowMedians(x, ...);
  }
  # HJ
  # enlarge 'centers' so it is the same shape as 'x'
  # This is not actually necessary. It would be re-cycled
  # for 'x - centers' correctly.
  # But it enforces that 'x' must be a matrix.
  ncol <- ncol(x);
  centers <- matrix(rep(centers, times=ncol), ncol=ncol);
  x <- x - centers;
  x <- abs(x);
  x <- rowMedians(x, ...);
  x <- constant*x;
  x;
} # rowMads()

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
  nrow <- nrow(x);
  centers <- matrix(rep(centers, each=nrow), nrow=nrow);
  x <- x - centers;
  x <- abs(x);
  x <- colMedians(x, ...);
  x <- constant*x;
  x;
} # colMads()

############################################################################
# HISTORY:
# 2011-10-13 [HJ]
# o Implemented colMads() as rowMads() by using the improved colMedians().
# o Now rowMads() expands 'center' to a matrix of the same dimensions as
#   'x'.  This is not actually necessary, but it enforces that 'x' must be
#   a matrix.
# 2008-03-26 [HB] 
# o Created.
############################################################################
