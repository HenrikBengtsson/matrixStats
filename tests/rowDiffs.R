library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")

  for (addNA in c(FALSE, TRUE)) {
    cat("addNA=", addNA, "\n", sep="")

    x <- matrix(1:100+0.1, nrow=20, ncol=5)
    if (addNA) {
      x[13:17,c(2,4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)

    # Row/column ranges
    r0 <- t(apply(x, MARGIN=1L, FUN=diff))
    r1 <- rowDiffs(x)
    r2 <- t(colDiffs(t(x)))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  } # for (addNA ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(NA_real_, nrow=20, ncol=5)
  storage.mode(x) <- mode
  str(x)

  suppressWarnings({
    r0 <- t(apply(x, MARGIN=1L, FUN=diff))
  })
  r1 <- rowDiffs(x)
  r2 <- t(colDiffs(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow=1, ncol=1)
suppressWarnings({
  r0 <- t(apply(x, MARGIN=1L, FUN=diff))
})
r1 <- rowDiffs(x)
r2 <- t(colDiffs(t(x)))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))
