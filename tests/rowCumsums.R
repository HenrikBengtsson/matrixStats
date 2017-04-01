library("matrixStats")

rowCumsums_R <- function(x) {
  suppressWarnings({
    y <- t(apply(x, MARGIN = 1L, FUN = cumsum))
  })
  dim(y) <- dim(x)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(1:100, nrow = 20, ncol = 5)
    if (add_na) {
      x[13:17, c(2, 4)] <- NA_real_
    }
    cat("mode: ", mode, "\n", sep = "")
    storage.mode(x) <- mode
    str(x)

    # Row/column ranges
    r0 <- rowCumsums_R(x)
    r1 <- rowCumsums(x)
    r2 <- t(colCumsums(t(x)))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  } # for (add_na ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow = 20, ncol = 5)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)

  r0 <- rowCumsums_R(x)
  r1 <- rowCumsums(x)
  r2 <- t(colCumsums(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(0, nrow = 1, ncol = 1)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)

  r0 <- rowCumsums_R(x)
  r1 <- rowCumsums(x)
  r2 <- t(colCumsums(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  value <- 0
  storage.mode(value) <- mode

  # A 0x0 matrix
  x <- matrix(value, nrow = 0L, ncol = 0L)
  str(x)
  r0 <- matrix(value, nrow = nrow(x), ncol = ncol(x))
  r1 <- rowCumsums(x)
  r2 <- t(colCumsums(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  # A 0xK matrix
  x <- matrix(value, nrow = 0L, ncol = 5L)
  str(x)
  r0 <- matrix(value, nrow = nrow(x), ncol = ncol(x))
  r1 <- rowCumsums(x)
  r2 <- t(colCumsums(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  # A Nx0 matrix
  x <- matrix(value, nrow = 5L, ncol = 0L)
  str(x)
  r0 <- matrix(value, nrow = nrow(x), ncol = ncol(x))
  r1 <- rowCumsums(x)
  r2 <- t(colCumsums(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)
