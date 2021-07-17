library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowWeightedMedians_R <- function(x, w, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = weightedMedian, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as rowWeightedMedians()
  if (!is.null(w)) {
    if (isFALSE(useNames)) names(res) <- NULL
  }
  else if (is.na(useNames) || !useNames) names(res) <- NULL
  
  res
}

colWeightedMedians_R <- function(x, w, na.rm = FALSE, ..., useNames = NA) {
  res <- apply(x, MARGIN = 2L, FUN = weightedMedian, w = w, na.rm = na.rm, ...)
  
  # Keep naming support consistency same as colWeightedMedians()
  if (!is.null(w)) {
    if (!is.na(useNames) && !useNames) names(res) <- NULL
  }
  else if (is.na(useNames) || !useNames) names(res) <- NULL
  
  res
}

set.seed(1)

x <- matrix(rnorm(20), nrow = 5, ncol = 4)
print(x)

# To check names attribute
dimnames <- list(letters[1:5], LETTERS[1:4])

# Non-weighted row medians
x_est0 <- rowMedians(x)
x_est1 <- rowWeightedMedians(x)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x))
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowMedians(x, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, useNames = useNames)
    x_est2 <- colWeightedMedians(t(x), useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    stopifnot(all.equal(x_est2, x_est0))
  }
}


# Weighted row medians (uniform weights)
w <- rep(2.5, times = ncol(x))
x_est0 <- rowMedians(x)
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted row medians (excluding some columns)
w <- c(1, 1, 0, 1)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}

# Weighted row medians (excluding some columns)
w <- c(0, 1, 0, 0)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}

# Weighted row medians (all zero weights)
w <- c(0, 0, 0, 0)
x_est0 <- rowMedians(x[, (w == 1), drop = FALSE])
x_est1 <- rowWeightedMedians(x, w = w)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}

# Weighted medians by rows and columns
w <- 1:4
x_est1 <- rowWeightedMedians(x, w = w)
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Weighted row medians with missing values
x_est0 <- apply(x, MARGIN = 1L, FUN = weightedMedian, w = w, na.rm = TRUE)
print(x_est0)
x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE)
print(x_est1)
stopifnot(all.equal(x_est1, x_est0))
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(all.equal(x_est2, x_est0))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}

# Weighted medians by rows and columns
w <- 1:4
x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE)
x_est2 <- colWeightedMedians(t(x), w = w, na.rm = TRUE)
stopifnot(all.equal(x_est2, x_est1))
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, na.rm = TRUE, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, na.rm = TRUE, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}


# Inf weight
x <- matrix(1:2, nrow = 1, ncol = 2)
w <- c(7, Inf)
x_est1 <- rowWeightedMedians(x, w = w)
x_est2 <- colWeightedMedians(t(x), w = w)
stopifnot(identical(2, x_est1))
stopifnot(identical(2, x_est2))
# Test with and without dimnames on x
dimnames <- list("a", LETTERS[1:2])
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    x_est0 <- rowWeightedMedians_R(x, w = w, useNames = useNames)
    x_est1 <- rowWeightedMedians(x, w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
    x_est0 <- colWeightedMedians_R(t(x), w = w, useNames = useNames)
    x_est1 <- colWeightedMedians(t(x), w = w, useNames = useNames)
    stopifnot(all.equal(x_est1, x_est0))
  }
}
