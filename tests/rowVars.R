library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")
options(matrixStats.vars.formula.freq = Inf)

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowVars_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  
  # Keep naming support consistency same as rowVars()
  if (is.null(center) || ncol(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  res
}

colVars_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  
  # Keep naming support consistency same as colVars()
  if (is.null(center) || ncol(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(res) <- NULL
  }
  else if (isFALSE(useNames)) names(res) <- NULL
  res
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  res <- rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  res <- colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

rowVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE, ..., useNames = NA) {
  x <- sweep(x, MARGIN = 1, STATS = as.array(center), FUN = "-")
  x[is.infinite(center), ] <- NaN
  res <- rowVars(x, rows = rows, cols = cols, center = rep(0, times = nrow(x)), na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE, ..., useNames = NA) {
  x <- sweep(x, MARGIN = 2, STATS = as.array(center), FUN = "-")
  x[, is.infinite(center)] <- NaN
  res <- colVars(x, rows = rows, cols = cols, center = rep(0, times = ncol(x)), na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs or Infs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  if (mode == "integer") {
    specials <- c(0L, NA_integer_)
    delta <- 0L
  } else {
    specials <- c(0, NA_real_, Inf)
    delta <- 0.1
  }
  
  for (special in specials) {
    cat("special = ", special, "\n", sep = "")
    x <- matrix(1:50 + delta, nrow = 10L, ncol = 5L)
    x[3:7, c(2, 4)] <- special
    cat("mode: ", mode, "\n", sep = "")
    str(x)
    stopifnot(storage.mode(x) == mode)
    
    # To check names attribute
    dimnames <- list(letters[1:10], LETTERS[1:5])
    
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      # Row/column variance
      for (na.rm in c(FALSE, TRUE)) {
        # Check names attribute
        for (useNames in c(NA, TRUE, FALSE)) {
          cat("na.rm = ", na.rm, "\n", sep = "")
          center <- rowMeans(x, na.rm = na.rm)
          
          r0 <- rowVars_R(x, na.rm = na.rm, useNames = useNames)
          r1 <- rowVars(x, na.rm = na.rm, useNames = useNames)
          r1b <- rowVars_center(x, na.rm = na.rm, useNames = useNames)
          r1c <- rowVars(x, center = center, na.rm = na.rm, useNames = useNames)
          
          tx <- t(x)
          r2 <- colVars(tx, na.rm = na.rm, useNames = useNames)
          r2b <- colVars_center(tx, na.rm = na.rm, useNames = useNames)
          r2c <- colVars(tx, center = center, na.rm = na.rm, useNames = useNames)
          tx <- NULL
          
          stopifnot(all.equal(r1, r2))
          stopifnot(all.equal(r1, r0))
          stopifnot(all.equal(r1b, r1c))
          stopifnot(all.equal(r2, r0))
          stopifnot(all.equal(r2b, r2c))
          
          center <- colMeans(x, na.rm = na.rm)

          r3 <- colVars(x, center = center, na.rm = na.rm, useNames = useNames)
          r3b <- colVars_center_naive(x, center = center, na.rm = na.rm, useNames = useNames)
          r3c <- rowVars(t(x), center = center, na.rm = na.rm, useNames = useNames)
          r3d <- rowVars_center_naive(t(x), center = center, na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(r3b, r3))
          stopifnot(all.equal(r3c, r3))
          stopifnot(all.equal(r3d, r3))
          
          stopifnot(
            !any(is.infinite(r0)),
            !any(is.infinite(r1)),
            !any(is.infinite(r2)),
            !any(is.infinite(r3)),
            !any(is.infinite(r1b)),
            !any(is.infinite(r1c)),
            !any(is.infinite(r2b)),
            !any(is.infinite(r2c)),
            !any(is.infinite(r3b)),
            !any(is.infinite(r3c)),
            !any(is.infinite(r3d))
          )
        }
      }
    }
  } # for (special ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow = 10L, ncol = 5L)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    # Row/column variance
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        cat("na.rm = ", na.rm, "\n", sep = "")
        
        r0 <- rowVars_R(x, na.rm = na.rm, useNames = useNames)
        r1 <- rowVars(x, na.rm = na.rm, useNames = useNames)
        r1b <- rowVars_center(x, na.rm = na.rm, useNames = useNames)
        r2 <- colVars(t(x), na.rm = na.rm, useNames = useNames)
        r2b <- colVars_center(t(x), na.rm = na.rm, useNames = useNames)
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1b, r2b))
        stopifnot(
          !any(is.infinite(r0)),
          !any(is.infinite(r1)),
          !any(is.infinite(r2)),
          !any(is.infinite(r1b)),
          !any(is.infinite(r2b))
        )
      }
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1L, ncol = 1L)
dimnames <- list("a", "A")
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Row/column variance
  for (na.rm in c(FALSE, TRUE)) {
    # Check names attribute
    for (useNames in c(NA, TRUE, FALSE)) {
      cat("na.rm = ", na.rm, "\n", sep = "")
      
      r0 <- rowVars_R(x, na.rm = na.rm, useNames = useNames)
      r1 <- rowVars(x, na.rm = na.rm, useNames = useNames)
      r1b <- rowVars_center(x, na.rm = na.rm, useNames = useNames)
      r2 <- colVars(t(x), na.rm = na.rm, useNames = useNames)
      r2b <- colVars_center(t(x), na.rm = na.rm, useNames = useNames)
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      stopifnot(all.equal(r1b, r2b))
      stopifnot(
        !any(is.infinite(r0)),
        !any(is.infinite(r1)),
        !any(is.infinite(r2)),
        !any(is.infinite(r1b)),
        !any(is.infinite(r2b))
      )
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# center and .dim
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
m <- matrix(1:12, nrow = 3L, ncol = 4L)
a <- array(m, dim = c(3, 2, 2))
stopifnot(prod(dim(a)) == prod(dim(m)))

y0 <- rowVars(m, dim. = dim(m))
print(y0)
y1 <- rowVars(a, dim. = dim(m))
print(y1)
stopifnot(identical(y1, y0))
stopifnot(
  !any(is.infinite(y0)),
  !any(is.infinite(y1))
)

mu <- rowMeans(m)
y0 <- rowVars(m, center = mu, dim. = dim(m))
print(y0)
y1 <- rowVars(a, center = mu, dim. = dim(m))
print(y1)
stopifnot(identical(y1, y0))
stopifnot(
  !any(is.infinite(y0)),
  !any(is.infinite(y1))
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# https://github.com/HenrikBengtsson/matrixStats/issues/195
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(c(1,2,3,4), nrow = 2L, ncol = 2L)
x[1,1] <- NA_real_
x[1,2] <- Inf

center <- colMeans2(x, na.rm = TRUE)
y <- colVars(x, center = center, na.rm = TRUE)
stopifnot(!any(is.infinite(y)))

x <- t(x)
center <- rowMeans2(x, na.rm = TRUE)
y <- rowVars(x, center = center, na.rm = TRUE)
stopifnot(!any(is.infinite(y)))
