library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow = 5L, ncol = 4L)
print(x)

# Weighted row variances (uniform weights - all w = 1)
# Non-weighted row variances
x_est0 <- rowVars(x)
w <- rep(1, times = ncol(x))
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row variances (uniform weights - all w = 3)
x3 <- cbind(x, x, x)
x_est0 <- rowVars(x3)
w <- rep(3, times = ncol(x))
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row variances (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row variances (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
#stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))


# Weighted row variances (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted variances by rows and columns
w <- 1:4
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))


x[sample(length(x), size = 0.3 * length(x))] <- NA
print(x)

# Non-weighted row variances with missing values
x_est0 <- rowVars(x, na.rm = TRUE)
x_est1 <- rowWeightedVars(x, w = rep(1, times = ncol(x)), na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = rep(1, times = ncol(x)), na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row variances with missing values
x_est1 <- rowWeightedVars(x, w = w, na.rm = TRUE)
print(x_est1)
x_est2 <- colWeightedVars(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))


# Weighted variances by rows and columns
w <- 1:4
x_est1 <- rowWeightedVars(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))


# Weighted row standard deviation (excluding some columns)
w <- c(1, 1, 0, 1)
## FIXME: rowVars()/rowSds() needs na.rm = FALSE (wrong default)
x_est0 <- rowSds(x[, (w == 1), drop = FALSE], na.rm = FALSE)
x_est1 <- rowWeightedSds(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedSds(t(x), w = w, na.rm = FALSE)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row MADs (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMads(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMads(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMads(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
