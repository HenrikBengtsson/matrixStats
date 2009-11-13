library("matrixStats")

for (addNA in c(FALSE, TRUE)) {
  cat("addNA=", addNA, "\n", sep="");

  x <- matrix(1:100, nrow=20, ncol=5)
  if (addNA) {
    x[13:17,c(2,4)] <- as.double(NA)
  }

  # Row/column ranges
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="");
    r1 <- rowRanges(x, na.rm=na.rm)
    r2 <- colRanges(t(x), na.rm=na.rm)
    r3 <- t(apply(x, MARGIN=1, FUN=range, na.rm=na.rm))
    stopifnot(identical(r1, r2))
    stopifnot(identical(r1, r3))
  }
  
  # Row/column extremes
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="");
    # Min
    m1 <- rowMins(x, na.rm=na.rm)
    m2 <- colMins(t(x), na.rm=na.rm)
    m3 <- apply(x, MARGIN=1, FUN=min, na.rm=na.rm)
    stopifnot(identical(m1, m2))
    stopifnot(identical(m1, m3))
  
    # Max
    m1 <- rowMaxs(x, na.rm=na.rm)
    m2 <- colMaxs(t(x), na.rm=na.rm)
    m3 <- apply(x, MARGIN=1, FUN=max, na.rm=na.rm)
    stopifnot(identical(m1, m2))
    stopifnot(identical(m1, m3))
  }
  
  # All NAs
  x <- matrix(as.double(NA), nrow=20, ncol=5)
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="");
    r1 <- rowRanges(x, na.rm=na.rm)
    r2 <- colRanges(t(x), na.rm=na.rm)
    suppressWarnings({
      r3 <- t(apply(x, MARGIN=1, FUN=range, na.rm=na.rm))
    })
    stopifnot(identical(r1, r2))
    stopifnot(identical(r1, r3))
  }
} # for (addNA ...)
