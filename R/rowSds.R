#' Standard deviation estimates for each row (column) in a matrix
#'
#' Standard deviation estimates for each row (column) in a matrix.
#'
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param center A optional \code{\link[base]{numeric}}
#' \code{\link[base]{vector}} of length N (K) with centers.  By default, they
#' are calculated using \code{\link{rowMedians}}().
#'
#' @param constant A scale factor.  See \code{\link[stats]{mad}} for details.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are removed
#' first, otherwise not.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Additional arguments passed to \code{\link{rowVars}}() and
#' \code{\link{rowMedians}}(), respectively.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link[stats]{sd}}, \code{\link[stats]{mad}} and
#' \code{\link[stats:cor]{var}}.  \code{\link{rowIQRs}}().
#' @keywords array iteration robust univar
#'
#' @export
rowSds <- function(x, rows = NULL, cols = NULL, ...) {
  x <- rowVars(x, rows = rows, cols = cols, ...)
  sqrt(x)
}


#' @rdname rowSds
#' @export
colSds <- function(x, rows = NULL, cols = NULL, ...) {
  x <- colVars(x, rows = rows, cols = cols, ...)
  sqrt(x)
}
