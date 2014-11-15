library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (addNA in c(FALSE, TRUE)) {
  cat("addNA=", addNA, "\n", sep="")

  x <- matrix(1:100, nrow=20, ncol=5)
  if (addNA) {
    x[13:17,c(2,4)] <- NA_real_
  }

  # Row/column ranges
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")
    r0 <- t(apply(x, MARGIN=1L, FUN=diff, na.rm=na.rm))
    r1 <- rowDiffs(x, na.rm=na.rm)
    r2 <- t(colDiffs(t(x), na.rm=na.rm))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  }
} # for (addNA ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(NA_real_, nrow=20, ncol=5)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  suppressWarnings({
    r0 <- t(apply(x, MARGIN=1L, FUN=diff, na.rm=na.rm))
  })
  r1 <- rowDiffs(x, na.rm=na.rm)
  r2 <- t(colDiffs(t(x), na.rm=na.rm))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow=1, ncol=1)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  suppressWarnings({
    r0 <- t(apply(x, MARGIN=1L, FUN=diff, na.rm=na.rm))
  })
  r1 <- rowDiffs(x, na.rm=na.rm)
  r2 <- t(colDiffs(t(x), na.rm=na.rm))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}
