#' Calculates difference for each row (column) in a matrix
#'
#' Calculates difference for each row (column) in a matrix.
#'
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param lag An \code{\link[base]{integer}} specifying the lag.
#'
#' @param differences An \code{\link[base]{integer}} specifying the order of
#' difference.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
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
