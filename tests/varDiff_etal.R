library("matrixStats")

set.seed(1)
x <- rnorm(1e4)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Variance estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigma2_a <- var(x)
cat(sprintf("var(x) = %g\n", sigma2_a))

sigma2_b <- varDiff(x)
cat(sprintf("varDiff(x) = %g\n", sigma2_b))

d <- abs(sigma2_b - sigma2_a)
cat(sprintf("Absolute difference = %g\n", d))
stopifnot(d < 0.02)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Standard deviation estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigma_a <- sd(x)
cat(sprintf("sd(x) = %g\n", sigma_a))

sigma_b <- sdDiff(x)
cat(sprintf("sdDiff(x) = %g\n", sigma_b))

d <- abs(sigma_b - sigma_a)
cat(sprintf("Absolute difference = %g\n", d))
stopifnot(d < 0.01)

# Sanity checks
stopifnot(abs(sigma2_a - sigma_a ^ 2) < 1e-9)
stopifnot(abs(sigma2_b - sigma_b ^ 2) < 1e-9)


sigma_a2 <- mad(x)
cat(sprintf("mad(x) = %g\n", sigma_a2))

sigma_b2 <- madDiff(x)
cat(sprintf("madDiff(x) = %g\n", sigma_b2))

d <- abs(sigma_b2 - sigma_a2)
cat(sprintf("Absolute difference = %g\n", d))
stopifnot(d < 0.05)


sigma_a3 <- IQR(x)
cat(sprintf("IQR(x) = %g\n", sigma_a3))

sigma_b3 <- iqrDiff(x)
cat(sprintf("iqrDiff(x) = %g\n", sigma_b3))

d <- abs(sigma_b3 - sigma_a3)
cat(sprintf("Absolute difference = %g\n", d))
stopifnot(d < 0.05)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Trimmed estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
y <- x
outliers <- sample(length(x), size = 0.1 * length(x))
y[outliers] <- 100 * y[outliers]

sigma_ao <- sd(y[-outliers])
cat(sprintf("sd(y) = %g\n", sigma_ao))

sigma_bo <- sdDiff(y[-outliers])
cat(sprintf("sdDiff(y) = %g\n", sigma_bo))

d <- abs(sigma_b - sigma_a)
cat(sprintf("Absolute difference = %g\n", d))
stopifnot(d < 0.01)

sigma_bot <- sdDiff(y, trim = 0.05)
cat(sprintf("sdDiff(y, trim = 0.05) = %g\n", sigma_bot))

d <- abs(sigma_bot - sigma_a)
cat(sprintf("Absolute difference = %g\n", d))
#stopifnot(d < 1e-3)

sigma_cot <- madDiff(y, trim = 0.05)
cat(sprintf("madDiff(y, trim = 0.05) = %g\n", sigma_cot))

sigma_dot <- iqrDiff(y, trim = 0.05)
cat(sprintf("iqrDiff(y, trim = 0.05) = %g\n", sigma_dot))


fcns <- list(
  varDiff = varDiff,
  sdDiff  = sdDiff,
  madDiff = madDiff,
  iqrDiff = iqrDiff
)

for (name in names(fcns)) {
  cat(sprintf("%s()...\n", name))
  fcn <- fcns[[name]]

  for (mode in c("integer", "double")) {
    cat("mode: ", mode, "", sep = "")
    for (n in 0:3) {
      x <- runif(n, min = -5, max = 5)
      storage.mode(x) <- mode
      str(x)

      y <- fcn(x)
      yt <- fcn(x, trim = 0.1)
      str(list("non-trimmed" = y, trimmed = yt))
    } # for (mode ...)
  }

  cat(sprintf("%s()...DONE\n", name))
} # for (name ...)
