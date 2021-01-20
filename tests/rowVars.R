library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")
options(matrixStats.vars.formula.freq = Inf)

rowVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  res
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm)
  res <- rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm)
  res <- colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
  stopifnot(!any(is.infinite(res)))
  res
}

rowVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE) {
  x <- sweep(x, MARGIN = 1, STATS = as.array(center), FUN = "-")
  x[is.infinite(center), ] <- NaN
  res <- rowVars(x, rows = rows, cols = cols, center = rep(0, times = nrow(x)), na.rm = na.rm)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE) {
  x <- sweep(x, MARGIN = 2, STATS = as.array(center), FUN = "-")
  x[, is.infinite(center)] <- NaN
  res <- colVars(x, rows = rows, cols = cols, center = rep(0, times = ncol(x)), na.rm = na.rm)
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
    x <- matrix(1:100 + delta, nrow = 20, ncol = 5)
    x[13:17, c(2, 4)] <- special
    cat("mode: ", mode, "\n", sep = "")
    str(x)
    stopifnot(storage.mode(x) == mode)

    # Row/column variance
    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm = ", na.rm, "\n", sep = "")
      center <- rowMeans(x, na.rm = na.rm)

      r0 <- rowVars_R(x, na.rm = na.rm)
      r1 <- rowVars(x, na.rm = na.rm)
      r1b <- rowVars_center(x, na.rm = na.rm)
      r1c <- rowVars(x, center = center, na.rm = na.rm)

      tx <- t(x)
      r2 <- colVars(tx, na.rm = na.rm)
      r2b <- colVars_center(tx, na.rm = na.rm)
      r2c <- colVars(tx, center = center, na.rm = na.rm)
      tx <- NULL
      
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r1b, r1))
      stopifnot(all.equal(r1c, r1))
      stopifnot(all.equal(r2, r0))
      stopifnot(all.equal(r2b, r2))
      stopifnot(all.equal(r2c, r2))

      center <- colMeans(x, na.rm = na.rm)
      r3 <- colVars(x, center = center, na.rm = na.rm)
      r3b <- colVars_center_naive(x, center = center, na.rm = na.rm)
      r3c <- rowVars(t(x), center = center, na.rm = na.rm)
      r3d <- rowVars_center_naive(t(x), center = center, na.rm = na.rm)
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
  } # for (special ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow = 20, ncol = 5)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)

  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm = ", na.rm, "\n", sep = "")
    r0 <- rowVars_R(x, na.rm = na.rm)
    r1 <- rowVars(x, na.rm = na.rm)
    r1b <- rowVars_center(x, na.rm = na.rm)
    r2 <- colVars(t(x), na.rm = na.rm)
    r2b <- colVars_center(t(x), na.rm = na.rm)
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r1b, r1))
    stopifnot(all.equal(r2b, r2))
    stopifnot(
      !any(is.infinite(r0)),
      !any(is.infinite(r1)),
      !any(is.infinite(r2)),
      !any(is.infinite(r1b)),
      !any(is.infinite(r2b))
    )
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")
  r0 <- rowVars_R(x, na.rm = na.rm)
  r1 <- rowVars(x, na.rm = na.rm)
  r1b <- rowVars_center(x, na.rm = na.rm)
  r2 <- colVars(t(x), na.rm = na.rm)
  r2b <- colVars_center(t(x), na.rm = na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r2b, r2))
  stopifnot(
    !any(is.infinite(r0)),
    !any(is.infinite(r1)),
    !any(is.infinite(r2)),
    !any(is.infinite(r1b)),
    !any(is.infinite(r2b))
  )
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# center and .dim
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
m <- matrix(1:12, nrow = 3, ncol = 4)
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
