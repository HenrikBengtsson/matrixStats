library("matrixStats")

fcns <- list(
  weightedVar = weightedVar,
  weightedSd  = weightedSd,
  weightedMad = weightedMad
)

for (name in names(fcns)) {
  cat(sprintf("%s()...\n", name))
  fcn <- fcns[[name]]

  for (mode in c("integer", "double")) {
    cat("mode: ", mode, "\n", sep = "")
    n <- 15L
    x <- runif(n, min = -5, max = 5)
    storage.mode(x) <- mode
    str(x)

    for (add_na in c(FALSE, TRUE)) {
      cat("add_na: ", add_na, "\n", sep = "")
      if (add_na) {
        x[c(5, 7)] <- NA
      }
      str(x)

      for (na.rm in c(FALSE, TRUE)) {
        cat("na.rm: ", na.rm, "\n", sep = "")

        cat("Weights are not specified (all are 1)\n")
        m1 <- fcn(x, na.rm = na.rm)
        str(list(m1 = m1))

        cat("All weights are 1\n")
        w <- rep(1, times = n)
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))

        cat("First weight is 5\n")
        # Pull the mean towards zero
        w[1] <- 5
        str(w)
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))

        cat("All weights are 0\n")
        # All weights set to zero
        w <- rep(0, times = n)
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))

        cat("First weight is 8.5\n")
        # Put even more weight on the zero
        w[1] <- 8.5
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))

        cat("First weight is Inf\n")
        # All weight on the first value
        w[1] <- Inf
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))

        cat("Last weight is Inf\n")
        # All weight on the last value
        w[1] <- 1
        w[n] <- Inf
        m1 <- fcn(x, w, na.rm = na.rm)
        str(list(m1 = m1))
      } # for (na.rm ...)
    } # for (add_na ...)
  } # for (mode ...)

  cat(sprintf("%s()...DONE\n", name))
} # for (name ...)
