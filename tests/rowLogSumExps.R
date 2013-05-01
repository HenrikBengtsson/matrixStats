library("matrixStats")

## R-help thread \emph{'[R] Beyond double-precision?'} on May 9, 2009.

set.seed(1)
X <- matrix(runif(5000), nrow=100, ncol=50)


## The logarithm of the harmonic mean by rows
y0 <- log(1/rowMeans(1/X))

lX <- log(X)
y1 <- log(ncol(X)) - rowLogSumExps(-lX)
y1b <- log(ncol(X)) - colLogSumExps(t(-lX))
y1c <- log(ncol(X)) - apply(-lX, MARGIN=1L, FUN=logSumExp);

# Sanity check
stopifnot(all.equal(y1, y0))
stopifnot(all.equal(y1b, y1))
stopifnot(all.equal(y1c, y1))


## The logarithm of the harmonic mean by columns
y0 <- log(1/colMeans(1/X))

lX <- log(X)
y1 <- log(nrow(X)) - colLogSumExps(-lX)
y1b <- log(nrow(X)) - rowLogSumExps(t(-lX))
y1c <- log(nrow(X)) - apply(-lX, MARGIN=2L, FUN=logSumExp);

# Sanity check
stopifnot(all.equal(y1, y0))
stopifnot(all.equal(y1b, y1))
stopifnot(all.equal(y1c, y1))
