#' Standard deviation estimates for each row (column) in a matrix
#'
#' Standard deviation estimates for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#' @inheritParams rowVars
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
rowSds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, refine = TRUE, center = NULL,
                    dim. = dim(x), ..., useNames = TRUE) {
  x <- rowVars(x, rows = rows, cols = cols, na.rm = na.rm, refine = refine, center = center, dim. = dim., useNames = useNames, ...)
  sqrt(x)
}


#' @rdname rowSds
#' @export
colSds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, refine = TRUE, center = NULL,
                    dim. = dim(x), ..., useNames = TRUE) {
  x <- colVars(x, rows = rows, cols = cols, na.rm = na.rm, refine = refine, center = center, dim. = dim., useNames = useNames, ...)
  sqrt(x)
}
