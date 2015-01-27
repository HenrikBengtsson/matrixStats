library("matrixStats")
library("stats")

## R-help thread \emph{'[R] Beyond double-precision?'} on May 9, 2009.

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")

  set.seed(1)
  x <- runif(20, min=1.0, max=3.0)
  storage.mode(x) <- mode
  str(x)

  ## The logarithm of the harmonic mean
  y0 <- log(1/mean(1/x))
  print(y0)  ## -1.600885

  lx <- log(x)
  y1 <- log(length(x)) - logSumExp(-lx)
  print(y1)  ## [1] -1.600885

  # Sanity check
  stopifnot(all.equal(y1, y0))

} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## NA values
lx <- c(1,2,3)
lx[2] <- NA_real_
y <- logSumExp(lx, na.rm=FALSE)
print(y)
stopifnot(identical(y, NA_real_))

y <- logSumExp(lx, na.rm=TRUE)
print(y)

## NaN values
lx <- c(1,2,3)
lx[2] <- NaN
y <- logSumExp(lx, na.rm=FALSE)
print(y)
stopifnot(identical(y, NA_real_))

y <- logSumExp(lx, na.rm=TRUE)
print(y)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Zero-length vectors
lx <- numeric(0L)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, -Inf))

## Vectors of length one
lx <- 1.0
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, lx))

lx <- NA_real_
y <- logSumExp(lx, na.rm=TRUE)
print(y)
stopifnot(identical(y, -Inf))

## All missing values
lx <- c(NA_real_, NA_real_)
y <- logSumExp(lx, na.rm=TRUE)
print(y)
stopifnot(identical(y, -Inf))

lx <- c(NA_real_, NA_real_)
y <- logSumExp(lx, na.rm=FALSE)
print(y)
stopifnot(identical(y, NA_real_))


## +Inf values
lx <- c(1, 2, +Inf)
y <- logSumExp(lx)
print(y)
stopifnot(identical(y, +Inf))
