library("matrixStats")
library("stats")

logSumExp_R <- function(lx, na.rm = FALSE) {
  log(sum(exp(lx), na.rm = na.rm))
}

## R-help thread \emph{'[R] Beyond double-precision?'} on May 9, 2009.

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  set.seed(1)
  x <- runif(20, min = 1.0, max = 3.0)
  storage.mode(x) <- mode
  str(x)

  ## The logarithm of the harmonic mean
  y0 <- log(1 / mean(1 / x))
  print(y0)  ## -1.600885

  lx <- log(x)
  y1 <- log(length(x)) - logSumExp(-lx)
  print(y1)  ## [1] -1.600885

  # Sanity check
  stopifnot(all.equal(y1, y0))

  y2 <- log(length(x)) - logSumExp_R(-lx)
  # Sanity check
  stopifnot(all.equal(y2, y0))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## NA values
lx <- c(1, 2, 3)
lx[2] <- NA_real_
y0 <- logSumExp_R(lx, na.rm = FALSE)
y <- logSumExp(lx, na.rm = FALSE)
print(y)
stopifnot(identical(y, NA_real_))
stopifnot(all.equal(y, y0))

y0 <- logSumExp_R(lx, na.rm = TRUE)
y <- logSumExp(lx, na.rm = TRUE)
print(y)
stopifnot(all.equal(y, y0))

## NaN values
lx <- c(1, 2, 3)
lx[2] <- NaN
y0 <- logSumExp_R(lx, na.rm = FALSE)
y <- logSumExp(lx, na.rm = FALSE)
print(y)
stopifnot(identical(y, NA_real_))
stopifnot(all.equal(y, y0))

y0 <- logSumExp_R(lx, na.rm = TRUE)
y <- logSumExp(lx, na.rm = TRUE)
print(y)
stopifnot(all.equal(y, y0))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Zero-length vectors
lx <- numeric(0L)
y0 <- logSumExp_R(lx)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, -Inf))
stopifnot(all.equal(y, y0))

## Vectors of length one
lx <- 1.0
y0 <- logSumExp_R(lx)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, lx))
stopifnot(all.equal(y, y0))

lx <- NA_real_
y0 <- logSumExp_R(lx, na.rm = TRUE)
y <- logSumExp(lx, na.rm = TRUE)
print(y)
stopifnot(identical(y, -Inf))
stopifnot(all.equal(y, y0))

## All missing values
lx <- c(NA_real_, NA_real_)
y0 <- logSumExp_R(lx, na.rm = TRUE)
y <- logSumExp(lx, na.rm = TRUE)
print(y)
stopifnot(identical(y, -Inf))
stopifnot(all.equal(y, y0))

lx <- c(NA_real_, NA_real_)
y0 <- logSumExp_R(lx, na.rm = FALSE)
y <- logSumExp(lx, na.rm = FALSE)
print(y)
stopifnot(identical(y, NA_real_))
stopifnot(all.equal(y, y0))


## +Inf values
lx <- c(1, 2, +Inf)
y0 <- logSumExp_R(lx)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, +Inf))
stopifnot(all.equal(y, y0))

## First element is a missing value, cf. PR #33
lx <- c(NA_real_, 1)
y0 <- logSumExp_R(lx)
print(y0)
y <- logSumExp(lx, na.rm = FALSE)
print(y)
stopifnot(identical(y, NA_real_))
stopifnot(all.equal(y, y0))

y0 <- logSumExp_R(lx, na.rm = TRUE)
print(y0)
y <- logSumExp(lx, na.rm = TRUE)
print(y)
stopifnot(identical(y, 1))
stopifnot(all.equal(y, y0))

## Multiple -Inf values, cf. issue #84
lx <- c(-Inf, -Inf)
y0 <- logSumExp_R(lx)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, -Inf))
stopifnot(all.equal(y, y0))

lx <- c(-Inf, 5, -Inf)
y0 <- logSumExp_R(lx)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, 5))
stopifnot(all.equal(y, y0))
