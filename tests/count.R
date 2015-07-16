library("matrixStats")

count_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    counts <- sum(is.na(x))
  } else {
    counts <- sum(x == value, na.rm=na.rm)
  }
  as.integer(counts)
} # count_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer and numeric
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- runif(20*5, min=-3, max=3)
  x[sample.int(length(x), size=7)] <- 0
  storage.mode(x) <- mode

  for (na.rm in c(FALSE, TRUE)) {
    # Count zeros
    n0 <- count_R(x, value=0, na.rm=na.rm)
    n1 <- count(x, value=0, na.rm=na.rm)
    stopifnot(identical(n1, n0))
    all <- allValue(x, value=0, na.rm=na.rm)
    any <- anyValue(x, value=0, na.rm=na.rm)

    # Count NAs
    n0 <- count_R(x, value=NA, na.rm=na.rm)
    n1 <- count(x, value=NA, na.rm=na.rm)
    stopifnot(identical(n1, n0))
    all <- allValue(x, value=NA, na.rm=na.rm)
    any <- anyValue(x, value=NA, na.rm=na.rm)

    if (mode == "integer") {
      ux <- unique(as.vector(x))
      n0 <- n1 <- integer(length(x))
      for (value in ux) {
        n0 <- n0 + count_R(x, value=value, na.rm=na.rm)
        n1 <- n1 + count(x, value=value, na.rm=na.rm)
        stopifnot(identical(n1, n0))
      }
      stopifnot(all(n0 == ncol(x)))
    } # if (mode == "integer")

  } # for (na.rm ...)
} # for (mode ...)

# All NAs
naList <- list(NA_integer_, NA_real_, NaN)
for (naValue in naList) {
  x <- rep(naValue, times=100L)
  for (na.rm in c(FALSE, TRUE)) {
    n0 <- count_R(x, na.rm=na.rm)
    n1 <- count(x, na.rm=na.rm)
    stopifnot(identical(n1, n0))

    # Count NAs
    n0 <- count_R(x, value=NA, na.rm=na.rm)
    n1 <- count(x, value=NA, na.rm=na.rm)
    stopifnot(identical(n1, n0))
    any <- anyValue(x, value=NA, na.rm=na.rm)
    all <- allValue(x, value=NA, na.rm=na.rm)
    stopifnot(any)
    stopifnot(all)
  }
} # for (naValue ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: logical
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- logical(length=100L)
x[13:17] <- TRUE

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  n0 <- count_R(x, na.rm=na.rm)
  n1 <- count(x, na.rm=na.rm)
  stopifnot(identical(n1, n0))

  nT <- count(x, value=TRUE, na.rm=na.rm)
  nF <- count(x, value=FALSE, na.rm=na.rm)
  stopifnot(nT + nF == ncol(x))

  # Count NAs
  n0 <- count_R(x, value=NA, na.rm=na.rm)
  n1 <- count(x, value=NA, na.rm=na.rm)
  stopifnot(identical(n1, n0))
}
