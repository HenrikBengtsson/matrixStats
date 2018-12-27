# Test inspired by the harmonic mean example in R-help
# thread '[R] Beyond double-precision?' on May 9, 2009.

library("matrixStats")
library("stats")

logSumExp0 <- function(lx) {
  idx_max <- which.max(lx)
  log1p(sum(exp(lx[-idx_max] - lx[idx_max]))) + lx[idx_max]
}

n <- 1e3
set.seed(1)

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(runif(n, min = 1.0, max = 3.0), nrow = 50L)
  storage.mode(x) <- mode
  str(x)

  # The logarithm of the harmonic mean by rows
  y_h <- log(1 / rowMeans(1 / x))
  str(y_h)

  lx_neg <- -log(x)

  y0 <- log(ncol(x)) - apply(lx_neg, MARGIN = 1L, FUN = logSumExp0)
  stopifnot(all.equal(y0, y_h))

  y1 <- log(ncol(x)) - apply(lx_neg, MARGIN = 1L, FUN = logSumExp)
  stopifnot(all.equal(y1, y0))

  y2 <- log(ncol(x)) - rowLogSumExps(lx_neg)
  stopifnot(all.equal(y2, y0))

  y3 <- log(ncol(x)) - colLogSumExps(t(lx_neg))
  stopifnot(all.equal(y3, y0))


  # The logarithm of the harmonic mean by columns
  y_h <- log(1 / colMeans(1 / x))
  str(y_h)

  y0 <- log(nrow(x)) - apply(lx_neg, MARGIN = 2L, FUN = logSumExp0)
  stopifnot(all.equal(y0, y_h))

  y1 <- log(nrow(x)) - apply(lx_neg, MARGIN = 2L, FUN = logSumExp)
  stopifnot(all.equal(y1, y0))

  y2 <- log(nrow(x)) - colLogSumExps(lx_neg)
  stopifnot(all.equal(y2, y0))

  y3 <- log(nrow(x)) - rowLogSumExps(t(lx_neg))
  stopifnot(all.equal(y3, y0))

  # Testing names
  rownames(lx_neg) <- seq_len(nrow(x))
  colnames(lx_neg) <- seq_len(ncol(x))
  y2 <- rowLogSumExps(lx_neg)
  stopifnot(identical(names(y2), rownames(lx_neg)))
  y3 <- colLogSumExps(t(lx_neg))
  stopifnot(identical(names(y3), rownames(lx_neg)))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Zero-size matrices
lx <- matrix(numeric(0L), nrow = 0L, ncol = 0L)
y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))

y <- colLogSumExps(lx)
print(y)
stopifnot(length(y) == ncol(lx))

## Zero-height matrices
lx <- matrix(numeric(0L), nrow = 0L, ncol = 10L)
y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))

y <- colLogSumExps(lx)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(all(y == -Inf))

## Zero-width matrices
lx <- matrix(numeric(0L), nrow = 10L, ncol = 0L)
y <- colLogSumExps(lx)
print(y)
stopifnot(length(y) == ncol(lx))

y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(y == -Inf))


## Matrices with one element
lx <- matrix(1.0, nrow = 1L, ncol = 1L)
y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(y == lx))

y <- colLogSumExps(lx)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(all(y == lx))

## All missing values
lx <- matrix(NA_real_, nrow = 1L, ncol = 1L)
y <- rowLogSumExps(lx, na.rm = TRUE)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(identical(y, -Inf))

lx <- matrix(NA_real_, nrow = 1L, ncol = 1L)
y <- colLogSumExps(lx, na.rm = TRUE)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(identical(y, -Inf))

lx <- matrix(NA_real_, nrow = 2L, ncol = 2L)
y <- rowLogSumExps(lx, na.rm = TRUE)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(y == -Inf))

y <- rowLogSumExps(lx, na.rm = FALSE)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(is.na(y) & !is.nan(y)))

lx <- matrix(NA_real_, nrow = 2L, ncol = 2L)
y <- colLogSumExps(lx, na.rm = TRUE)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(all(y == -Inf))

y <- colLogSumExps(lx, na.rm = FALSE)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(all(is.na(y) & !is.nan(y)))

## +Inf values
lx <- matrix(c(1, 2, +Inf), nrow = 3L, ncol = 2L)
y <- colLogSumExps(lx, na.rm = TRUE)
print(y)
stopifnot(length(y) == ncol(lx))
stopifnot(all(y == +Inf))

## multiple -Inf values
lx <- matrix(c(-Inf, -Inf), nrow = 2L, ncol = 3L)
y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(y == -Inf))

lx <- matrix(c(-Inf, 5, -Inf), nrow = 2L, ncol = 3L, byrow = TRUE)
y <- rowLogSumExps(lx)
print(y)
stopifnot(length(y) == nrow(lx))
stopifnot(all(y == 5))


## Bug report #104 (https://github.com/HenrikBengtsson/matrixStats/issues/104)
## (This would core dump on Windows)
x <- matrix(0.0, nrow = 2L, ncol = 32762L)
y <- colLogSumExps(x)
str(y)

## Bug report #120 (https://github.com/HenrikBengtsson/matrixStats/issues/120)
## (This would error if x had rownames/colnames and non-NULL rows/cols were
## used)
x <- matrix(runif(6), nrow = 2L, ncol = 3L,
            dimnames = list(c("A", "B"), c("a", "b", "c")))
y <- colLogSumExps(x, cols = 3:1)
stopifnot(names(y) == c("c", "b", "a"))
y <- rowLogSumExps(x, rows = 2)
stopifnot(names(y) == "B")
