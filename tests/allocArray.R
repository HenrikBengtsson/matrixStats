library("matrixStats")

allocArray_R <- function(nrow, ncol, value=NA) {
  array(data=value, dim=dim)
} # allocArray_R()

values <- list(
  -1L, 0L, +1L, NA_integer_, .Machine$integer.max,
  -1, 0, +1, NA_real_, NaN, -Inf, +Inf, .Machine$double.xmin, .Machine$double.xmax, .Machine$double.eps, .Machine$double.neg.eps,
  FALSE, TRUE, NA
)

dim <- c(5L, 10L, 4L)
for (value in values) {
  X0 <- allocArray_R(dim, value=value)
  X <- allocArray(dim, value=value)
  str(list(dim=dim, value=value, X=X, X0=X0))
  stopifnot(identical(X,X0))
}

