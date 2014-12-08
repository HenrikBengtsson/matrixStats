library("matrixStats")

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "", sep="")
  n <- 100L
  x <- runif(n, min=-5, max=5)
  storage.mode(x) <- mode
  str(x)

  w <- rep(1, times=n)
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))

  # Pull the mean towards zero
  w[1] <- 5
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))

  # Put even more weight on the zero
  w[1] <- 8.5
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))

  # All weight on the first value
  w[1] <- Inf
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))

  # All weight on the last value
  w[1] <- 1
  w[n] <- Inf
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))

  # All weights set to zero
  w <- rep(0, n)
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  stopifnot(identical(m1,m0))
} # for (mode ...)
