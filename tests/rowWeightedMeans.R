library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow = 5, ncol = 4)
print(x)

# To check names attribute
dimnames <- list(letters[1:5], LETTERS[1:4])

# Non-weighted row averages
x_est0 <- rowMeans(x)
x_est1 <- rowWeightedMeans(x)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x))
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x)
x_est1 <- rowWeightedMeans(x, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row averages (uniform weights)
w <- rep(2.5, times = ncol(x))
x_est0 <- rowMeans(x)
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x)
x_est1 <- rowWeightedMeans(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row averages (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row averages (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row averages (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est2))
dimnames(x) <- NULL


x[sample(length(x), size = 0.3 * length(x))] <- NA
print(x)

# Non-weighted row averages with missing values
x_est0 <- rowMeans(x, na.rm = TRUE)
x_est1 <- rowWeightedMeans(x, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, na.rm = TRUE, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), na.rm = TRUE, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMeans(x, na.rm = TRUE)
x_est1 <- rowWeightedMeans(x, na.rm = TRUE, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), na.rm = TRUE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row averages with missing values
x_est0 <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = TRUE)
print(x_est0)
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = TRUE)
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est2))
dimnames(x) <- NULL


# w contains missing value
w[1] <- NA_integer_
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est2))
dimnames(x) <- NULL

x_est1 <- rowWeightedMeans(x, w = w, na.rm = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = FALSE)
stopifnot(all.equal(x_est2, x_est1))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMeans(x, w = w, na.rm = FALSE, useNames = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = FALSE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est2))
dimnames(x) <- NULL
