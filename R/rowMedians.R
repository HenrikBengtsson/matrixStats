#' Calculates the median for each row (column) in a matrix
#'
#' Calculates the median for each row (column) in a matrix.
#'
#' The implementation of \code{rowMedians()} and \code{colMedians()} is
#' optimized for both speed and memory.  To avoid coercing to
#' \code{\link[base]{double}}s (and hence memory allocation), there is a
#' special implementation for \code{\link[base]{integer}} matrices.  That is,
#' if \code{x} is an \code{\link[base]{integer}} \code{\link[base]{matrix}},
#' then \code{rowMedians(as.double(x))} (\code{rowMedians(as.double(x))}) would
#' require three times the memory of \code{rowMedians(x)}
#' (\code{colMedians(x)}), but all this is avoided.
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
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @author Henrik Bengtsson, Harris Jaffee
#'
#' @seealso See \code{\link{rowMedians}}() and \code{colMedians()} for weighted
#' medians.  For mean estimates, see \code{rowMeans()} in
#' \code{\link[base]{colSums}}().
#'
#' @keywords array iteration robust univar
#' @export
rowMedians <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  has_nas <- TRUE  # Add as an argument? /2007-08-24
  .Call(C_rowMedians, x, dim., rows, cols, na.rm, has_nas, TRUE)
}

#' @rdname rowMedians
#' @export
colMedians <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  has_nas <- TRUE  # Add as an argument? /2007-08-24
  .Call(C_rowMedians, x, dim., rows, cols, na.rm, has_nas, FALSE)
}
