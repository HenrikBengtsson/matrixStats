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
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are excluded first, otherwise not.
#'
#' @param center (optional) The center, defaults to the row means for the
#' SD estimators and row medians for the MAD estimators.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Additional arguments passed to \code{rowMeans()} and
#' \code{rowSums()}.
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
rowSds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, center = NULL,
                    dim. = dim(x), ...) {
  x <- rowVars(x, rows = rows, cols = cols, na.rm = na.rm, center = center, dim. = dim., ...)
  sqrt(x)
}


#' @rdname rowSds
#' @export
colSds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, center = NULL,
                    dim. = dim(x), ...) {
  x <- colVars(x, rows = rows, cols = cols, na.rm = na.rm, center = center, dim. = dim., ...)
  sqrt(x)
}
