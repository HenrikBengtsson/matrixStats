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
    r0 <- t(apply(x, MARGIN=1L, FUN=range, na.rm=na.rm))
    r1 <- rowRanges(x, na.rm=na.rm)
    r2 <- colRanges(t(x), na.rm=na.rm)
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
  }

  # Row/column extremes
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")
    # Min
    m0 <- apply(x, MARGIN=1L, FUN=min, na.rm=na.rm)
    m1 <- rowMins(x, na.rm=na.rm)
    m2 <- colMins(t(x), na.rm=na.rm)
    stopifnot(all.equal(m1, m2))
    stopifnot(all.equal(m1, m0))

    # Max
    m0 <- apply(x, MARGIN=1L, FUN=max, na.rm=na.rm)
    m1 <- rowMaxs(x, na.rm=na.rm)
    m2 <- colMaxs(t(x), na.rm=na.rm)
    stopifnot(all.equal(m1, m2))
    stopifnot(all.equal(m1, m0))
  }
} # for (addNA ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(NA_real_, nrow=20, ncol=5)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  suppressWarnings({
    r0 <- t(apply(x, MARGIN=1L, FUN=range, na.rm=na.rm))
  })
  r1 <- rowRanges(x, na.rm=na.rm)
  r2 <- colRanges(t(x), na.rm=na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Nx0 matrix
x <- matrix(double(0L), nrow=5L, ncol=0L)
r1 <- rowRanges(x)
rT <- matrix(c(Inf,-Inf), nrow=nrow(x), ncol=2L, byrow=TRUE)
stopifnot(all.equal(r1,rT))

# 0xN matrix
x <- t(x)
r1 <- colRanges(x)
stopifnot(all.equal(r1,rT))

# Nx1 matrix
x <- matrix(1:5, nrow=5L, ncol=1L)
r1 <- rowRanges(x)
rT <- matrix(1:5, nrow=nrow(x), ncol=2L, byrow=FALSE)
stopifnot(all.equal(r1,rT))

# 1xN matrix
x <- t(x)
r1 <- colRanges(x)
stopifnot(all.equal(r1,rT))
