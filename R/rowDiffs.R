#' Calculates difference for each row (column) in a matrix
#'
#' Calculates difference for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param lag An \code{\link[base]{integer}} specifying the lag.
#'
#' @param differences An \code{\link[base]{integer}} specifying the order of
#' difference.
#'
#' @return Returns a \code{\link[base]{numeric}} Nx(K-1) or (N-1)xK
#' \code{\link[base]{matrix}}.
#'
#' @example incl/rowDiffs.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See also \code{\link{diff2}}().
#' @keywords array iteration robust univar
#' @export
rowDiffs <- function(x, rows = NULL, cols = NULL,
                     lag = 1L, differences = 1L, dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  .Call(C_rowDiffs, x, dim., rows, cols,
        as.integer(lag), as.integer(differences), TRUE)
}

#' @rdname rowDiffs
#' @export
colDiffs <- function(x, rows = NULL, cols = NULL,
                     lag = 1L, differences = 1L, dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  .Call(C_rowDiffs, x, dim., rows, cols,
        as.integer(lag), as.integer(differences), FALSE)
}
