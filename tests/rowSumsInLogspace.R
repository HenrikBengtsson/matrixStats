library("matrixStats")

## R-help thread \emph{'[R] Beyond double-precision?'} on May 9, 2009.

set.seed(1)
X <- matrix(runif(500), nrow=50, ncol=10)


## The logarithm of the harmonic mean by rows
y0 <- log(1/rowMeans(1/X))

lX <- log(X)
y1 <- log(ncol(X)) - rowSumsInLogspace(-lX)

# Sanity check
stopifnot(all.equal(y1, y0))


## The logarithm of the harmonic mean by columns
y0 <- log(1/colMeans(1/X))

lX <- log(X)
y1 <- log(nrow(X)) - colSumsInLogspace(-lX)

# Sanity check
stopifnot(all.equal(y1, y0))
