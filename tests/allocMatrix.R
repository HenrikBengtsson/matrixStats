library("matrixStats")

allocMatrix_R <- function(nrow, ncol, value = NA) {
  matrix(data = value, nrow = nrow, ncol = ncol)
}

values <- list(
  -1L, 0L, +1L, NA_integer_, .Machine$integer.max,
  -1, 0, +1, NA_real_, NaN, -Inf, +Inf,
  .Machine$double.xmin, .Machine$double.xmax,
  .Machine$double.eps, .Machine$double.neg.eps,
  FALSE, TRUE, NA
)

nrow <- 3L
ncol <- 4L
for (value in values) {
  x0 <- allocMatrix_R(nrow, ncol, value = value)
  x <- allocMatrix(nrow, ncol, value = value)
  str(list(nrow = nrow, ncol = ncol, value = value, x = x, x0 = x0))
  stopifnot(identical(x, x0))
}
