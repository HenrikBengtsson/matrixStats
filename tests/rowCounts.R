library("matrixStats")

rowCounts_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  as.integer(apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm)))
} # rowCounts_R()

rowAlls_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=all, na.rm=na.rm)
}

rowAnys_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=any, na.rm=na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: logical
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(FALSE, nrow=20, ncol=5)
x[13:17,c(2,4)] <- TRUE
x[2:4,] <- TRUE
x[,1] <- TRUE
x[5,] <- FALSE
x[,5] <- FALSE

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  r0 <- rowCounts_R(x, na.rm=na.rm)
  r1 <- rowCounts(x, na.rm=na.rm)
  r2 <- colCounts(t(x), na.rm=na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))

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
  m0 <- rowAlls_R(x, na.rm=na.rm)
  m1 <- rowAlls(x, na.rm=na.rm)
  m2 <- colAlls(t(x), na.rm=na.rm)
  stopifnot(identical(m1, m0))
  stopifnot(identical(m2, m0))

  # any
  m0 <- rowAnys_R(x, na.rm=na.rm)
  m1 <- rowAnys(x, na.rm=na.rm)
  m2 <- colAnys(t(x), na.rm=na.rm)
  stopifnot(identical(m1, m0))
  stopifnot(identical(m2, m0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer and numeric
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "numeric")) {
  x <- matrix(runif(20*5, min=-3, max=3), nrow=20, ncol=5)
  x[sample.int(length(x), size=7)] <- 0
  storage.mode(x) <- mode

  # Count zeros
  r0 <- rowCounts_R(x, value=0, na.rm=na.rm)
  r1 <- rowCounts(x, value=0, na.rm=na.rm)
  r2 <- colCounts(t(x), value=0, na.rm=na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))

  if (mode == "integer") {
    ux <- unique(as.vector(x))
    r0 <- r1 <- r2 <- integer(nrow(x))
    for (value in ux) {
      r0 <- r0 + rowCounts_R(x, value=value, na.rm=na.rm)
      r1 <- r1 + rowCounts(x, value=value, na.rm=na.rm)
      r2 <- r2 + colCounts(t(x), value=value, na.rm=na.rm)
      stopifnot(identical(r1, r0))
      stopifnot(identical(r2, r0))
    }
    stopifnot(all(r0 == ncol(x)))
  } # if (mode == "integer")
} # for (mode ...)

# All NAs
naList <- list(NA_integer_, NA_real_, NaN)
for (naValue in naList) {
  x <- matrix(naValue, nrow=20, ncol=5)
  for (na.rm in c(FALSE, TRUE)) {
    r0 <- rowCounts_R(x, na.rm=na.rm)
    r1 <- rowCounts(x, na.rm=na.rm)
    r2 <- colCounts(t(x), na.rm=na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))
  }
} # for (naValue ...)

