library("matrixStats")

set.seed(1)
x <- rnorm(1e4)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Variance estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigma2A <- var(x)
cat(sprintf("var(x)=%g\n", sigma2A))

sigma2B <- varDiff(x)
cat(sprintf("varDiff(x)=%g\n", sigma2B))

d <- abs(sigma2B - sigma2A)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 0.02)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Standard deviation estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigmaA <- sd(x)
cat(sprintf("sd(x)=%g\n", sigmaA))

sigmaB <- sdDiff(x)
cat(sprintf("sdDiff(x)=%g\n", sigmaB))

d <- abs(sigmaB - sigmaA)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 0.01)

# Sanity checks
stopifnot(abs(sigma2A - sigmaA^2) < 1e-9)
stopifnot(abs(sigma2B - sigmaB^2) < 1e-9)


sigmaA2 <- mad(x)
cat(sprintf("mad(x)=%g\n", sigmaA2))

sigmaB2 <- madDiff(x)
cat(sprintf("madDiff(x)=%g\n", sigmaB2))

d <- abs(sigmaB2 - sigmaA2)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 0.05)


sigmaA3 <- IQR(x)
cat(sprintf("IQR(x)=%g\n", sigmaA3))

sigmaB3 <- iqrDiff(x)
cat(sprintf("iqrDiff(x)=%g\n", sigmaB3))

d <- abs(sigmaB3 - sigmaA3)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 0.05)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Trimmed estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
y <- x
outliers <- sample(length(x), size=0.1*length(x))
y[outliers] <- 100*y[outliers]

sigmaAo <- sd(y[-outliers])
cat(sprintf("sd(y)=%g\n", sigmaAo))

sigmaBo <- sdDiff(y[-outliers])
cat(sprintf("sdDiff(y)=%g\n", sigmaBo))

d <- abs(sigmaB - sigmaA)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 0.01)

sigmaBot <- sdDiff(y, trim=0.05)
cat(sprintf("sdDiff(y, trim=0.05)=%g\n", sigmaBot))

d <- abs(sigmaBot - sigmaA)
cat(sprintf("Absolute difference=%g\n", d))
#stopifnot(d < 1e-3)

sigmaCot <- madDiff(y, trim=0.05)
cat(sprintf("madDiff(y, trim=0.05)=%g\n", sigmaCot))

sigmaDot <- iqrDiff(y, trim=0.05)
cat(sprintf("iqrDiff(y, trim=0.05)=%g\n", sigmaDot))


FUNs <- list(
  varDiff=varDiff,
  sdDiff=sdDiff,
  madDiff=madDiff,
  iqrDiff=iqrDiff
)

for (fcn in names(FUNs)) {
  cat(sprintf("%s()...\n", fcn))
  FUN <- FUNs[[fcn]]

  for (mode in c("integer", "double")) {
    cat("mode: ", mode, "", sep="")
    for (n in 0:3) {
      x <- runif(n, min=-5, max=5)
      storage.mode(x) <- mode
      str(x)

      y <- FUN(x)
      yt <- FUN(x, trim=0.1)
      str(list("non-trimmed"=y, trimmed=yt))
    } # for (mode ...)
  }

  cat(sprintf("%s()...DONE\n", fcn))
} # for (fcn ...)
