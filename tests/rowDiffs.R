library("matrixStats")

rowDiffs_R <- function(x, lag = 1L, differences = 1L, ...) {
  ncol2 <- ncol(x) - lag * differences
  if (ncol2 <= 0) {
    return(matrix(x[integer(0L)], nrow = nrow(x), ncol = 0L))
  }
  suppressWarnings({
    y <- apply(x, MARGIN = 1L, FUN = diff, lag = lag, differences = differences)
  })
  y <- t(y)
  dim(y) <- c(nrow(x), ncol2)
  y
}


set.seed(0x42)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(sample(20 * 8) + 0.1, nrow = 20, ncol = 8)
    if (add_na) {
      x[13:17, c(2, 4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)

    for (lag in 1:4) {
      for (differences in 1:3) {
        cat(sprintf("mode: %s, lag = %d, differences = %d\n",
                    mode, lag, differences))
        # Row/column ranges
        r0 <- rowDiffs_R(x, lag = lag, differences = differences)
        r1 <- rowDiffs(x, lag = lag, differences = differences)
        r2 <- t(colDiffs(t(x), lag = lag, differences = differences))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1, r2))
      }
    }
  } # for (add_na ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(NA_real_, nrow = 20, ncol = 5)
  storage.mode(x) <- mode
  str(x)

  r0 <- rowDiffs_R(x)
  r1 <- rowDiffs(x)
  r2 <- t(colDiffs(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
r0 <- rowDiffs_R(x)
r1 <- rowDiffs(x)
r2 <- t(colDiffs(t(x)))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))
