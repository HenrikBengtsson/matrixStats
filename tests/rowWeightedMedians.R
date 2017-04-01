library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow = 5, ncol = 4)
print(x)

# Non-weighted row medians
x_est0 <- rowMedians(x)
x_est1 <- rowWeightedMedians(x)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x))
stopifnot(all.equal(x_est2, x_est0))

# Weighted row medians (uniform weights)
w <- rep(2.5, times = ncol(x))
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))

# Weighted row medians (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))

# Weighted row medians (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))

# Weighted row medians (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))

# Weighted medians by rows and columns
w <- 1:4
x_est1 <- rowWeightedMedians(x, w = w)
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))


# Weighted row medians with missing values
x_est0 <- apply(x, MARGIN = 1L, FUN = weightedMedian, w = w, na.rm = TRUE)
print(x_est0)
x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))

# Weighted medians by rows and columns
w <- 1:4
x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMedians(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))


# Inf weight
x <- matrix(1:2, nrow = 1, ncol = 2)
w <- c(7, Inf)
x_est1 <- rowWeightedMedians(x, w = w)
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(identical(2, x_est1))
stopifnot(identical(2, x_est2))
