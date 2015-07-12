library("matrixStats")

rowCumprods_R <- function(x) {
  suppressWarnings({
    y <- t(apply(x, MARGIN=1L, FUN=cumprod))
  })
  dim(y) <- dim(x)
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  for (addNA in c(FALSE, TRUE)) {
    cat("addNA=", addNA, "\n", sep="")

    x <- matrix(1:100, nrow=20, ncol=5)
    if (addNA) {
      x[13:17,c(2,4)] <- NA_real_
    }
    cat("mode: ", mode, "\n", sep="")
    storage.mode(x) <- mode
    str(x)

    # Row/column ranges
    r0 <- rowCumprods_R(x)
    r1 <- rowCumprods(x)
    r2 <- t(colCumprods(t(x)))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  } # for (addNA ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow=20, ncol=5)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  r0 <- rowCumprods_R(x)
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(0, nrow=1, ncol=1)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  r0 <- rowCumprods_R(x)
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# BUG FIX TEST: Assert zeros don't trump NAs in integer matrices
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow=3, ncol=2)
  x[1,2] <- 0
  x[2,2] <- 1
  x[3,1] <- 0
  storage.mode(x) <- mode
  cat("mode: ", mode, "\n", sep="")
  str(x)

  r0 <- rowCumprods_R(x)
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  value <- 0
  storage.mode(value) <- mode

  # A 0x0 matrix
  x <- matrix(value, nrow=0L, ncol=0L)
  str(x)
  r0 <- matrix(value, nrow=nrow(x), ncol=ncol(x))
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  # A 0xK matrix
  x <- matrix(value, nrow=0L, ncol=5L)
  str(x)
  r0 <- matrix(value, nrow=nrow(x), ncol=ncol(x))
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  # A Nx0 matrix
  x <- matrix(value, nrow=5L, ncol=0L)
  str(x)
  r0 <- matrix(value, nrow=nrow(x), ncol=ncol(x))
  r1 <- rowCumprods(x)
  r2 <- t(colCumprods(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)
