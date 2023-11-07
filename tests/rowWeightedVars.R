library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow = 5L, ncol = 4L)
print(x)

# To check names attribute
dimnames <- list(letters[1:5], LETTERS[1:4])

# Weighted row variances (uniform weights - all w = 1)
# Non-weighted row variances
x_est0 <- rowVars(x)
w <- rep(1, times = ncol(x))
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = w, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowVars(x, useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedVars(x, w = w, useNames = NA)
  x_est2 <- colWeightedVars(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedVars(x, w = w, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row variances (uniform weights - all w = 3)
x3 <- cbind(x, x, x)
x_est0 <- rowVars(x3)
w <- rep(3, times = ncol(x))
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = w, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x3 <- cbind(x, x, x)
x_est0 <- rowVars(x3, useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedVars(x, w = w, useNames = NA)
  x_est2 <- colWeightedVars(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedVars(x, w = w, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row variances (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = w, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowVars(x[, (w == 1), drop = FALSE], useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedVars(x, w = w, useNames = NA)
  x_est2 <- colWeightedVars(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedVars(x, w = w, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row variances (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
#stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = w, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowVars(x[, (w == 1), drop = FALSE], useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedVars(x, w = w, useNames = NA)
  x_est2 <- colWeightedVars(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedVars(x, w = w, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row variances (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowVars(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedVars(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = w, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowVars(x[, (w == 1), drop = FALSE], useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedVars(x, w = w, useNames = NA)
  x_est2 <- colWeightedVars(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedVars(x, w = w, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL

# Weighted variances by rows and columns
w <- 1:4
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est1 <- rowWeightedVars(x, w = w, useNames = useNames)
    print(x_est1)
    x_est2 <- colWeightedVars(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est2, x_est1))
  }
}


x[sample(length(x), size = 0.3 * length(x))] <- NA
print(x)

# Non-weighted row variances with missing values
x_est0 <- rowVars(x, na.rm = TRUE)
x_est1 <- rowWeightedVars(x, w = rep(1, times = ncol(x)), na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedVars(t(x), w = rep(1, times = ncol(x)), na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedVars(x, w = rep(1, times = ncol(x)), na.rm = TRUE, useNames = FALSE)
x_est2 <- colWeightedVars(t(x), w = rep(1, times = ncol(x)), na.rm = TRUE, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowVars(x, na.rm = TRUE, useNames = TRUE)
x_est1 <- rowWeightedVars(x, w = rep(1, times = ncol(x)), na.rm = TRUE, useNames = TRUE)
x_est2 <- colWeightedVars(t(x), w = rep(1, times = ncol(x)), na.rm = TRUE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row variances with missing values
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est1 <- rowWeightedVars(x, w = w, na.rm = TRUE, useNames = useNames)
    print(x_est1)
    x_est2 <- colWeightedVars(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est2, x_est1))
  }
}


# Weighted variances by rows and columns
w <- 1:4
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est1 <- rowWeightedVars(x, w = w, na.rm = TRUE, useNames = useNames)
    print(x_est1)
    x_est2 <- colWeightedVars(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est2, x_est1))
  }
}


# Weighted row standard deviation (excluding some columns)
w <- c(1, 1, 0, 1)
## FIXME: rowVars()/rowSds() needs na.rm = FALSE (wrong default)
x_est0 <- rowSds(x[, (w == 1), drop = FALSE], na.rm = FALSE)
x_est1 <- rowWeightedSds(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedSds(t(x), w = w, na.rm = FALSE)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedSds(x, w = w, na.rm = FALSE, useNames = FALSE)
x_est2 <- colWeightedSds(t(x), w = w, na.rm = FALSE, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowSds(x[, (w == 1), drop = FALSE], na.rm = FALSE, useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedSds(x, w = w, na.rm = FALSE, useNames = NA)
  x_est2 <- colWeightedSds(t(x), w = w, na.rm = FALSE, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}  
x_est1 <- rowWeightedSds(x, w = w, na.rm = FALSE, useNames = TRUE)
x_est2 <- colWeightedSds(t(x), w = w, na.rm = FALSE, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL


# Weighted row MADs (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMads(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMads(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMads(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Check names attribute
dimnames(x) <- dimnames
x_est1 <- rowWeightedMads(x, w = w, useNames = FALSE)
x_est2 <- colWeightedMads(t(x), w = w, useNames = FALSE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
x_est0 <- rowMads(x[, (w == 1), drop = FALSE], useNames = TRUE)
if (!matrixStats:::isUseNamesNADefunct()) {
  x_est1 <- rowWeightedMads(x, w = w, useNames = NA)
  x_est2 <- colWeightedMads(t(x), w = w, useNames = NA)
  stopifnot(all.equal(x_est1, x_est0))
  stopifnot(all.equal(x_est2, x_est0))
}
x_est1 <- rowWeightedMads(x, w = w, useNames = TRUE)
x_est2 <- colWeightedMads(t(x), w = w, useNames = TRUE)
stopifnot(all.equal(x_est1, x_est0))
stopifnot(all.equal(x_est2, x_est0))
dimnames(x) <- NULL
