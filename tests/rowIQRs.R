library("matrixStats")

rowIQRs_R <- function(x, na.rm=FALSE) {
  Q <- apply(x, MARGIN=1L, FUN=quantile, probs=c(0.25, 0.75), na.rm=na.rm)
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

  probs <- c(0,0.5,1)
  q0 <- rowIQRs_R(x)
  print(q0)
  q1 <- rowIQRs(x)
  print(q1)
  stopifnot(all.equal(q1, q0))
  q2 <- colIQRs(t(x))
  stopifnot(all.equal(q2, q0))

  q <- iqr(x[1,])
  print(q)
} # for (mode ...)
