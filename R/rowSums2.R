#' Calculates the sum for each row (column) in a matrix
#'
#' Calculates the sum for each row (column) in a matrix.
#'
#' The implementation of \code{rowSums2()} and \code{colSums2()} is
#' optimized for both speed and memory.
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
#' @author Henrik Bengtsson
#'
#' @keywords array iteration robust univar
#' @export
rowSums2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)

  has_nas <- TRUE
  return(.Call(C_rowSums2, x, dim., rows, cols, na.rm, has_nas, TRUE))
}

#' @rdname rowSums2
#' @export
colSums2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)

  has_nas <- TRUE
  return(.Call(C_rowSums2, x, dim., rows, cols, na.rm, has_nas, FALSE))
}
