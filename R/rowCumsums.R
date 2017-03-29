#' Cumulative sums, products, minima and maxima for each row (column) in a
#' matrix
#'
#' Cumulative sums, products, minima and maxima for each row (column) in a
#' matrix.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of elements
#' (or rows and/or columns) to operate over. If \code{\link[base]{NULL}}, no
#' subsetting is done.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}
#' of the same mode as \code{x}.
#'
#' @example incl/rowCumsums.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See \code{\link[base]{cumsum}}(), \code{\link[base]{cumprod}}(),
#' \code{\link[base]{cummin}}(), and \code{\link[base]{cummax}}().
#'
#' @keywords array iteration univar
#' @export
rowCumsums <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCumsums, x, dim, rows, cols, TRUE)
}


#' @rdname rowCumsums
#' @export
colCumsums <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCumsums, x, dim, rows, cols, FALSE)
}


#' @rdname rowCumsums
#' @export
rowCumprods <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCumprods, x, dim, rows, cols, TRUE)
}


#' @rdname rowCumsums
#' @export
colCumprods <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCumprods, x, dim, rows, cols, FALSE)
}


#' @rdname rowCumsums
#' @export
rowCummins <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCummins, x, dim, rows, cols, TRUE)
}


#' @rdname rowCumsums
#' @export
colCummins <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCummins, x, dim, rows, cols, FALSE)
}


#' @rdname rowCumsums
#' @export
rowCummaxs <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCummaxs, x, dim, rows, cols, TRUE)
}


#' @rdname rowCumsums
#' @export
colCummaxs <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ...) {
  dim <- as.integer(dim.)
  .Call(C_rowCummaxs, x, dim, rows, cols, FALSE)
}
