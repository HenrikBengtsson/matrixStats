library("matrixStats")

set.seed(1)
x <- rnorm(1e6)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Standard deviation estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigmaA <- sd(x)
cat(sprintf("sd(x)=%g\n", sigmaA))

sigmaB <- sdDiff(x)
cat(sprintf("sdDiff(x)=%g\n", sigmaB))

d <- abs(sigmaB - sigmaA)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 1e-3)

cat("\n")


sigmaAr <- mad(x)
cat(sprintf("mad(x)=%g\n", sigmaAr))

sigmaBr <- madDiff(x)
cat(sprintf("madDiff(x)=%g\n", sigmaBr))

d <- abs(sigmaBr - sigmaAr)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 5e-3)

cat("\n")



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Variance estimators
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
sigma2A <- var(x)
cat(sprintf("var(x)=%g\n", sigma2A))

sigma2B <- varDiff(x)
cat(sprintf("varDiff(x)=%g\n", sigma2B))

d <- abs(sigma2B - sigma2A)
cat(sprintf("Absolute difference=%g\n", d))
stopifnot(d < 1e-3)

# Sanity checks
stopifnot(abs(sigma2A - sigmaA^2) < 1e-9)
stopifnot(abs(sigma2B - sigmaB^2) < 1e-9)

cat("\n")



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
stopifnot(d < 1e-3)

sigmaBot <- sdDiff(y, trim=0.05)
cat(sprintf("sdDiff(y, trim=0.05)=%g\n", sigmaBot))

d <- abs(sigmaBot - sigmaA)
cat(sprintf("Absolute difference=%g\n", d))
#stopifnot(d < 1e-3)

cat("\n")
