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
#' @param ... Not used.
#' 
#' @return Returns a \code{\link[base]{numeric}} Nx(K-1) or (N-1)xK
#' \code{\link[base]{matrix}}.
#'
#' @example incl/rowDiffs.Rex
#' 
#' @author Henrik Bengtsson
#' 
#' @seealso See also \code{\link{diff2}}().
#' @keywords array iteration robust univar
#' @export
rowDiffs <- function(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...) {
  .Call(C_rowDiffs, x, dim(x), rows, cols, as.integer(lag), as.integer(differences), TRUE)
}

#' @rdname rowDiffs
#' @export
colDiffs <- function(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...) {
  .Call(C_rowDiffs, x, dim(x), rows, cols, as.integer(lag), as.integer(differences), FALSE)
}
