library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowWeightedMeans_R <- function(x, w, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = weighted.mean, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as rowWeightedMeans()
  idxs <- which(is.na(w) | w != 0)
  nw <- length(idxs)
  if (na.rm) na.rm <- anyMissing(x)
  if ((!is.null(w) && nw == 0L) || isFALSE(na.rm)) {
    if (is.na(useNames) || !useNames) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  
  res
}

colWeightedMeans_R <- function(x, w, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 2L, FUN = weighted.mean, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as colWeightedMeans()
  idxs <- which(is.na(w) | w != 0)
  nw <- length(idxs)
  if (!is.null(w) && nw == 0L) {
    if (is.na(useNames) || !useNames) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  
  res
}

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
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted row averages (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted row averages (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted row averages (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowMeans(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMeans(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w)
print(x_est1)
x_est2 <- colWeightedMeans(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


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
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted averages by rows and columns
w <- 1:4
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# w contains missing value
w[1] <- NA_integer_
x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}

x_est1 <- rowWeightedMeans(x, w = w, na.rm = FALSE)
x_est2 <- colWeightedMeans(t(x), w = w, na.rm = FALSE)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMeans_R(x, w = w, na.rm = FALSE, useNames = useNames)
    x_est1 <- rowWeightedMeans(x, w = w, na.rm = FALSE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMeans_R(t(x), w = w, na.rm = FALSE, useNames = useNames)
    x_est1 <- colWeightedMeans(t(x), w = w, na.rm = FALSE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}
