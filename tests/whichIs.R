library("matrixStats")

whichIs_R <- function(x, op=c("==", "!=", "<", "<=", ">", ">="), y, ...) {
  stopifnot(length(y) == 1)
  op <- match.arg(op)

  fcn <- get(op, mode="function")  
  res <- fcn(x, y)
  which(res)
} # whichIs_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ops <- eval(formals(whichIs_R)$op)

## Vectors to be scanned
xs <- list(
  c(TRUE, FALSE, NA),
  c(-3:3, NA_integer_),
  c(-3:3, NA_real_, NaN, -Inf, +Inf)
)

for (x in xs) {
  n <- length(x)

  ## Scalars to compare to
  ys <- list(
    TRUE, FALSE, NA,
    -1L, 0L, +1L, NA_integer_,
    -Inf, -1, -1/2, 0, +1/2, +1, Inf, NA_real_, NaN,
    x[n/2], x[n/3]
  )
  
  xmin <- min(x, na.rm=TRUE)
  xmax <- max(x, na.rm=TRUE)
  if (is.finite(xmin) && is.finite(xmax)) {
    ys <- c(ys, xmin:xmax)
    ys <- c(ys, (xmin-1L):(xmax+1L))
    ys <- c(ys, seq(from=xmin, to=xmax, by=0.1))
    ys <- c(ys, seq(from=xmin-1, to=xmax+1, by=0.1))
  }
  
  for (y in ys) {
    for (op in ops) {
      cat(sprintf("Comparision: x %s %g (x: %s, y: %s)\n", op, y, typeof(x), typeof(y)))
      idxs_R <- whichIs_R(x, op, y)
      idxs <- whichIs(x, op, y)
      str(list(idxs=idxs, "x[idxs]"=x[idxs]))
      if (!identical(idxs, idxs_R)) {
        str(list(idxs_R=idxs_R, "x[idxs_R]"=x[idxs_R]))
        stopifnot(identical(idxs, idxs_R))
      }
        idxs_yx <- whichIs(y, op, x)
        if (!identical(idxs_yx, idxs)) {
          str(list(idxs=idxs_yx, "x[idxs_yx]"=x[idxs_yx]))
          stopifnot(identical(idxs_yx, idxs))
        }
    }
  }
}
