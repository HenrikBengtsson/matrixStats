library("matrixStats")

whichIs_R <- function(x, y, op=c("==", "!=", "<", "<=", ">", ">=")) {
  stopifnot(length(y) == 1)
  op <- match.arg(op)

  fcn <- get(op, mode="function")  
  res <- fcn(x, y)
  which(res)
} # whichIs_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

ops <- c("==", "!=", "<", "<=", ">", ">=")

cat("Consistency checks:\n")
for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  n <- sample(1e3, size=1L)
  x <- rnorm(n, sd=100)
  ys <- c(-Inf, -1, -1/2, 0, +1/2, +1, Inf, NA_real_, NaN, x[n/2], x[n/3])
  for (y in ys) {
    cat("Compare to value (y): ", y, "\n", sep="")
    for (op in ops) {
      cat("Comparision: x ", op, " ", y, "\n", sep="")
      idxs_R <- whichIs_R(x, y, op=op)
      idxs <- whichIs(x, y, op=op)
      str(idxs)
      if (!identical(idxs, idxs_R)) {
        str(idxs_R)
        stopifnot(identical(idxs, idxs_R))
      }
    }
  }
} # for (kk ...)
