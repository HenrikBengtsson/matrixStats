library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (addNA in c(FALSE, TRUE)) {
  cat("addNA=", addNA, "\n", sep="")

  x <- matrix(1:100, nrow=20, ncol=5)
  if (addNA) {
    x[13:17,c(2,4)] <- as.double(NA)
  }

  # Row/column ranges
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")
    r0 <- apply(x, MARGIN=1, FUN=mad, na.rm=na.rm)
    r1 <- rowMads(x, na.rm=na.rm)
    r2 <- colMads(t(x), na.rm=na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))
    stopifnot(identical(r1, r2))
  }
} # for (addNA ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(as.double(NA), nrow=20, ncol=5)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  suppressWarnings({
    r0 <- apply(x, MARGIN=1, FUN=mad, na.rm=na.rm)
  })
  if (na.rm) {
    r0[is.na(r0)] <- NaN
  }
  r1 <- rowMads(x, na.rm=na.rm)
  r2 <- colMads(t(x), na.rm=na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))
  stopifnot(identical(r1, r2))
}
