# Test inspired by the harmonic mean example in R-help
# thread '[R] Beyond double-precision?' on May 9, 2009.

library("matrixStats")
library("stats")

logSumExp0 <- function(lx) {
  iMax <- which.max(lx)
  log1p(sum(exp(lx[-iMax] - lx[iMax]))) + lx[iMax]
} # logSumExp0()


n <- 1e3
set.seed(1)

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  X <- matrix(runif(n, min=1.0, max=3.0), nrow=50L)
  storage.mode(X) <- mode
  str(X)

  # The logarithm of the harmonic mean by rows
  yH <- log(1/rowMeans(1/X))
  str(yH)

  nlX <- -log(X)

  y0 <- log(ncol(X)) - apply(nlX, MARGIN=1L, FUN=logSumExp0)
  stopifnot(all.equal(y0,yH))

  y1 <- log(ncol(X)) - apply(nlX, MARGIN=1L, FUN=logSumExp)
  stopifnot(all.equal(y1,y0))

  y2 <- log(ncol(X)) - rowLogSumExps(nlX)
  stopifnot(all.equal(y2,y0))

  y3 <- log(ncol(X)) - colLogSumExps(t(nlX))
  stopifnot(all.equal(y3,y0))


  # The logarithm of the harmonic mean by columns
  yH <- log(1/colMeans(1/X))
  str(yH)

  y0 <- log(nrow(X)) - apply(nlX, MARGIN=2L, FUN=logSumExp0)
  stopifnot(all.equal(y0,yH))

  y1 <- log(nrow(X)) - apply(nlX, MARGIN=2L, FUN=logSumExp)
  stopifnot(all.equal(y1,y0))

  y2 <- log(nrow(X)) - colLogSumExps(nlX)
  stopifnot(all.equal(y2,y0))

  y3 <- log(nrow(X)) - rowLogSumExps(t(nlX))
  stopifnot(all.equal(y3,y0))

  # Testing names
  rownames(nlX) <- seq_len(nrow(X))
  colnames(nlX) <- seq_len(ncol(X))
  y2 <- rowLogSumExps(nlX)
  stopifnot(identical(names(y2), rownames(nlX)))
  y3 <- colLogSumExps(t(nlX))
  stopifnot(identical(names(y3), rownames(nlX)))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Zero-size matrices
lX <- matrix(numeric(0L), nrow=0L, ncol=0L)
y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))

y <- colLogSumExps(lX)
print(y)
stopifnot(length(y) == ncol(lX))

## Zero-height matrices
lX <- matrix(numeric(0L), nrow=0L, ncol=10L)
y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))

y <- colLogSumExps(lX)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(all(y == -Inf))

## Zero-width matrices
lX <- matrix(numeric(0L), nrow=10L, ncol=0L)
y <- colLogSumExps(lX)
print(y)
stopifnot(length(y) == ncol(lX))

y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(y == -Inf))


## Matrices with one element
lX <- matrix(1.0, nrow=1L, ncol=1L)
y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(y == lX))

y <- colLogSumExps(lX)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(all(y == lX))

## All missing values
lX <- matrix(NA_real_, nrow=1L, ncol=1L)
y <- rowLogSumExps(lX, na.rm=TRUE)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(identical(y, -Inf))

lX <- matrix(NA_real_, nrow=1L, ncol=1L)
y <- colLogSumExps(lX, na.rm=TRUE)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(identical(y, -Inf))

lX <- matrix(NA_real_, nrow=2L, ncol=2L)
y <- rowLogSumExps(lX, na.rm=TRUE)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(y == -Inf))

y <- rowLogSumExps(lX, na.rm=FALSE)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(is.na(y) & !is.nan(y)))

lX <- matrix(NA_real_, nrow=2L, ncol=2L)
y <- colLogSumExps(lX, na.rm=TRUE)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(all(y == -Inf))

y <- colLogSumExps(lX, na.rm=FALSE)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(all(is.na(y) & !is.nan(y)))

## +Inf values
lX <- matrix(c(1, 2, +Inf), nrow=3L, ncol=2L)
y <- colLogSumExps(lX, na.rm=TRUE)
print(y)
stopifnot(length(y) == ncol(lX))
stopifnot(all(y == +Inf))

## multiple -Inf values
lX <- matrix(c(-Inf, -Inf), nrow=2L, ncol=3L)
y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(y == -Inf))

lX <- matrix(c(-Inf, 5, -Inf), nrow=2L, ncol=3L, byrow=1)
y <- rowLogSumExps(lX)
print(y)
stopifnot(length(y) == nrow(lX))
stopifnot(all(y == 5))
