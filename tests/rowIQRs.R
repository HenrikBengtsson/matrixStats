library("matrixStats")

rowIQRs_R <- function(x, na.rm=FALSE) {
  quantileNA <- function(x, ..., na.rm=FALSE) {
    if (!na.rm && anyMissing(x))
      return(c(NA_real_, NA_real_))
    quantile(x, ..., na.rm=na.rm)
  }
  Q <- apply(x, MARGIN=1L, FUN=quantileNA, probs=c(0.25, 0.75), na.rm=na.rm)
  dim(Q) <- c(2L, nrow(x))
  Q[2L,,drop=TRUE] - Q[1L,,drop=TRUE]
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with multiple quantiles
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(1:100+0.1, nrow=10, ncol=10)
  storage.mode(x) <- mode
  str(x)

  for (addNA in c(FALSE, TRUE)) {
    if (addNA) {
      x[3:5,6:9] <- NA
    }
    for (na.rm in c(FALSE, TRUE)) {
      probs <- c(0,0.5,1)
      q0 <- rowIQRs_R(x, na.rm=na.rm)
      print(q0)
      q1 <- rowIQRs(x, na.rm=na.rm)
      print(q1)
      stopifnot(all.equal(q1, q0))
      q2 <- colIQRs(t(x), na.rm=na.rm)
      stopifnot(all.equal(q2, q0))

      q <- iqr(x[3,], na.rm=na.rm)
      print(q)
    } # for (na.rm ...)
  } # for (addNA ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  # Empty vectors
  x <- integer(0L)
  storage.mode(x) <- mode
  str(x)
  q <- iqr(x)
  print(q)
  stopifnot(identical(q, NA_real_))

  # Scalar
  x <- 1L
  storage.mode(x) <- mode
  str(x)
  q <- iqr(x)
  str(q)
  stopifnot(identical(q, 0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Single row matrices
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1, nrow=1L, ncol=2L)
q <- rowIQRs(x)
stopifnot(identical(q, 0))

x <- matrix(1, nrow=2L, ncol=1L)
q <- colIQRs(x)
stopifnot(identical(q, 0))
