library("matrixStats")

allocArray_R <- function(nrow, ncol, value = NA) {
  array(data = value, dim = dim)
}

values <- list(
  -1L, 0L, +1L, NA_integer_, .Machine$integer.max,
  -1, 0, +1, NA_real_, NaN, -Inf, +Inf,
  .Machine$double.xmin, .Machine$double.xmax,
  .Machine$double.eps, .Machine$double.neg.eps,
  FALSE, TRUE, NA
)

dim <- c(2L, 4L, 3L)
for (value in values) {
  x0 <- allocArray_R(dim, value = value)
  x <- allocArray(dim, value = value)
  str(list(dim = dim, value = value, x = x, x0 = x0))
  stopifnot(identical(x, x0))
}
