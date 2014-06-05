library("matrixStats")

x <- matrix(FALSE, nrow=20, ncol=5)
x[13:17,c(2,4)] <- TRUE
x[2:4,] <- TRUE
x[,1] <- TRUE
x[5,] <- FALSE
x[,5] <- FALSE

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  r1 <- rowCounts(x, na.rm=na.rm)
  r2 <- colCounts(t(x), na.rm=na.rm)
  r3 <- apply(x, MARGIN=1, FUN=sum, na.rm=na.rm)
  stopifnot(identical(r1, r2))
  stopifnot(identical(r1, r3))

  rT <- rowCounts(x, value=TRUE, na.rm=na.rm)
  rF <- rowCounts(x, value=FALSE, na.rm=na.rm)
  stopifnot(rT + rF == ncol(x))

  cT <- colCounts(x, value=TRUE, na.rm=na.rm)
  cF <- colCounts(x, value=FALSE, na.rm=na.rm)
  stopifnot(cT + cF == nrow(x))
}


# Row/column all/any
for (na.rm in c(FALSE, TRUE)) {
  # all
  m1 <- rowAlls(x, na.rm=na.rm)
  m2 <- colAlls(t(x), na.rm=na.rm)
  m3 <- apply(x, MARGIN=1, FUN=all, na.rm=na.rm)
  stopifnot(identical(m1, m2))
  stopifnot(identical(m1, m3))

  # any
  m1 <- rowAnys(x, na.rm=na.rm)
  m2 <- colAnys(t(x), na.rm=na.rm)
  m3 <- apply(x, MARGIN=1, FUN=any, na.rm=na.rm)
  stopifnot(identical(m1, m2))
  stopifnot(identical(m1, m3))
}

# All NAs
x <- matrix(as.integer(NA), nrow=20, ncol=5)
for (na.rm in c(FALSE, TRUE)) {
  r1 <- rowCounts(x, na.rm=na.rm)
  r2 <- colCounts(t(x), na.rm=na.rm)
  r3 <- apply(x, MARGIN=1, FUN=sum, na.rm=na.rm)
  stopifnot(identical(r1, r2))
  stopifnot(identical(r1, r3))
}
