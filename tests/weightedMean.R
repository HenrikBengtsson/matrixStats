library("matrixStats")

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "", sep="")
  n <- 2L
  x <- runif(n, min=-5, max=5)
  storage.mode(x) <- mode
  str(x)

  cat("All weights are 1\n")
  w <- rep(1, times=n)
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))

  cat("First weight is 5\n")
  # Pull the mean towards zero
  w[1] <- 5
  str(w)
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))

  cat("All weights are 0\n")
  # All weights set to zero
  w <- rep(0, times=n)
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))

  cat("First weight is 8.5\n")
  # Put even more weight on the zero
  w[1] <- 8.5
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))

  cat("First weight is Inf\n")
  # All weight on the first value
  w[1] <- Inf
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))

  cat("Last weight is Inf\n")
  # All weight on the last value
  w[1] <- 1
  w[n] <- Inf
  m0 <- weighted.mean(x, w)
  m1 <- weightedMean(x, w)
  str(list(m0=m0, m1=m1))
  stopifnot(identical(m1,m0))
} # for (mode ...)


message("*** Testing for missing values")
# NA tests
xs <- list(A=c(1, 2, 3), B=c(NA, 2, 3), C=c(NA, 2, 3))
ws <- list(A=c(1, 1, 1), B=c(NA, 1, 1), C=c(1, NA, 1))
## NOTE: The (B,B) case with na.rm=TRUE is interesting because
## even if NAs in 'w' are not dropped by na.rm=TRUE, this one
## is because 'x' is dropped and therefore that first element
## is skipped in the computation.  It basically does
##   keep <- !is.na(x); x <- x[keep]; w <- w[keep]
## without looking at 'w'.
for (x in xs) {
  for (mode in c("integer", "double")) {
    storage.mode(x) <- mode
    for (w in ws) {
      for (na.rm in c(FALSE, TRUE)) {
        cat(sprintf("mode: %s, na.rm=%s\n", mode, na.rm))
        str(list(x=x, w=w))
        m0 <- weighted.mean(x, w, na.rm=na.rm)
        m1 <- weightedMean(x, w, na.rm=na.rm)
        str(list(m0=m0, m1=m1))
        stopifnot(all.equal(m1,m0))
      }
    }
  }
}
