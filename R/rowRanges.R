#' Gets the range of values in each row (column) of a matrix
#'
#' Gets the range of values in each row (column) of a matrix.
#'
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are excluded first, otherwise not.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
#'
#' @return \code{rowRanges()} (\code{colRanges()}) returns a
#' \code{\link[base]{numeric}} Nx2 (Kx2) \code{\link[base]{matrix}}, where N
#' (K) is the number of rows (columns) for which the ranges are calculated.
#'
#' \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a
#' \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link{rowOrderStats}}() and \code{\link[base]{pmin.int}}().
#'
#' @keywords array iteration robust univar
#'
#' @export
rowRanges <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                      dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_rowRanges, x, dim., rows, cols, 2L, na.rm, TRUE)
}


#' @rdname rowRanges
#' @export
rowMins <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_rowRanges, x, dim., rows, cols, 0L, na.rm, TRUE)
}


#' @rdname rowRanges
#' @export
rowMaxs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_rowRanges, x, dim., rows, cols, 1L, na.rm, TRUE)
}


#' @rdname rowRanges
#' @export
colRanges <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                      dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_colRanges, x, dim., rows, cols, 2L, na.rm, TRUE)
}


#' @rdname rowRanges
#' @export
colMins <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_colRanges, x, dim., rows, cols, 0L, na.rm, TRUE)
}


#' @rdname rowRanges
#' @export
colMaxs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call(C_colRanges, x, dim., rows, cols, 1L, na.rm, TRUE)
}
