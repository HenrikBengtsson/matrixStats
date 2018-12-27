library("matrixStats")

allocVector_R <- function(length, value = NA) {
  x <- vector(mode = typeof(value), length = length)
  if (!is.finite(value) || value != 0) x[] <- value
  x
}

values <- list(
  -1L, 0L, +1L, NA_integer_, .Machine$integer.max,
  -1, 0, +1, NA_real_, NaN, -Inf, +Inf,
  .Machine$double.xmin, .Machine$double.xmax,
  .Machine$double.eps, .Machine$double.neg.eps,
  FALSE, TRUE, NA
)

n <- 100
for (value in values) {
  x0 <- allocVector_R(n, value = value)
  x <- allocVector(n, value = value)
  str(list(n = n, value = value, x = x, x0 = x0))
  stopifnot(identical(x, x0))
}
