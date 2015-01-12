library("matrixStats")

FUNs <- list(
  weightedVar=weightedVar,
  weightedSd=weightedSd,
  weightedMad=weightedMad
)

for (fcn in names(FUNs)) {
  cat(sprintf("%s()...\n", fcn))
  FUN <- FUNs[[fcn]]

  for (mode in c("integer", "double")) {
    cat("mode: ", mode, "", sep="")
    n <- 2L
    x <- runif(n, min=-5, max=5)
    storage.mode(x) <- mode
    str(x)

    cat("Weights are specified (all are 1)\n")
    w <- rep(1, times=n)
    m1 <- FUN(x)
    str(list(m1=m1))

    cat("All weights are 1\n")
    w <- rep(1, times=n)
    m1 <- FUN(x, w)
    str(list(m1=m1))

    cat("First weight is 5\n")
    # Pull the mean towards zero
    w[1] <- 5
    str(w)
    m1 <- FUN(x, w)
    str(list(m1=m1))

    cat("All weights are 0\n")
    # All weights set to zero
    w <- rep(0, times=n)
    m1 <- FUN(x, w)
    str(list(m1=m1))

    cat("First weight is 8.5\n")
    # Put even more weight on the zero
    w[1] <- 8.5
    m1 <- FUN(x, w)
    str(list(m1=m1))

    cat("First weight is Inf\n")
    # All weight on the first value
    w[1] <- Inf
    m1 <- FUN(x, w)
    str(list(m1=m1))

    cat("Last weight is Inf\n")
    # All weight on the last value
    w[1] <- 1
    w[n] <- Inf
    m1 <- FUN(x, w)
    str(list(m1=m1))
  } # for (mode ...)

  cat(sprintf("%s()...DONE\n", fcn))
} # for (fcn ...)
