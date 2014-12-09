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
