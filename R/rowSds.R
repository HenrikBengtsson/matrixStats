#' Standard deviation estimates for each row (column) in a matrix
#'
#' Standard deviation estimates for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param center (optional) The center, defaults to the row means for the
#' SD estimators and row medians for the MAD estimators.
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
