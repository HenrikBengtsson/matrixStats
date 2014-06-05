# Test inspired by the harmonic mean example in R-help
# thread '[R] Beyond double-precision?' on May 9, 2009.

library("matrixStats")
library("stats")

logSumExp0 <- function(lx) {
  iMax <- which.max(lx)
  log1p(sum(exp(lx[-iMax] - lx[iMax]))) + lx[iMax]
} # logSumExp0()


n <- if (Sys.getenv("_R_CHECK_FULL_") == "") 1e6 else 1e7

set.seed(1)
X <- matrix(runif(n), nrow=1000L)


##############################################################
# The logarithm of the harmonic mean by rows
##############################################################
yH <- log(1/rowMeans(1/X))

nlX <- -log(X)

y0 <- log(ncol(X)) - apply(nlX, MARGIN=1L, FUN=logSumExp0)
stopifnot(all.equal(y0,yH))

y1 <- log(ncol(X)) - apply(nlX, MARGIN=1L, FUN=logSumExp)
stopifnot(all.equal(y1,y0))

y2 <- log(ncol(X)) - rowLogSumExps(nlX)
stopifnot(all.equal(y2,y0))

y3 <- log(ncol(X)) - colLogSumExps(t(nlX))
stopifnot(all.equal(y3,y0))


##############################################################
# The logarithm of the harmonic mean by columns
##############################################################
yH <- log(1/colMeans(1/X))

y0 <- log(nrow(X)) - apply(nlX, MARGIN=2L, FUN=logSumExp0)
stopifnot(all.equal(y0,yH))

y1 <- log(nrow(X)) - apply(nlX, MARGIN=2L, FUN=logSumExp)
stopifnot(all.equal(y1,y0))

y2 <- log(nrow(X)) - colLogSumExps(nlX)
stopifnot(all.equal(y2,y0))

y3 <- log(nrow(X)) - rowLogSumExps(t(nlX))
stopifnot(all.equal(y3,y0))
