#' Calculates the mean for each row (column) in a matrix
#'
#' Calculates the mean for each row (column) in a matrix.
#'
#' The implementation of \code{rowMeans2()} and \code{colMeans2()} is
#' optimized for both speed and memory.
#'
#' @inheritParams rowAlls
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @keywords array iteration robust univar
#' @export
rowMeans2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ..., useNames = NA) {
  has_nas <- TRUE
  .Call(C_rowMeans2, x, dim., rows, cols, na.rm, has_nas, TRUE, useNames)
}

#' @rdname rowMeans2
#' @export
colMeans2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ..., useNames = NA) {
  has_nas <- TRUE
  .Call(C_rowMeans2, x, dim., rows, cols, na.rm, has_nas, FALSE, useNames)
}
