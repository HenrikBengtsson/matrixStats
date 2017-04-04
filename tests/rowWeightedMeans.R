library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow = 5, ncol = 4)
print(x)

# Non-weighted row averages
x_est0 <- rowMeans(x)
x_est1 <- rowWeightedMeans(x)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x))
stopifnot(all.equal(x_est2, x_est0))


# Weighted row averages (uniform weights)
w <- rep(2.5, times = ncol(x))
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row averages (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row averages (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row averages (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))


x[sample(length(x), size = 0.3 * length(x))] <- NA
print(x)

# Non-weighted row averages with missing values
x_est0 <- rowMeans(x, na.rm = TRUE)
x_est1 <- rowWeightedMeans(x, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))


# Weighted row averages with missing values
x_est0 <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = TRUE)
print(x_est0)
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))


# w contains missing value
w[1] <- NA_integer_
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))

x_est1 <- rowWeightedMeans(x, w = w, na.rm = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = FALSE)
stopifnot(all.equal(x_est2, x_est1))
