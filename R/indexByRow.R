#' Translates matrix indices by rows into indices by columns
#'
#' Translates matrix indices by rows into indices by columns.
#'
#' @inheritParams rowAlls
#'
#' @param dim A \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length two specifying the length of the "template" matrix.
#'
#' @return Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' indices.
#'
#' @section Known limitations:
#' The current implementation does not support long-vector indices,
#' because both input and output indices are of type integers.
#' This means that the indices in argument \code{idxs} can only be in
#' range [1,2^31-1]. Using a greater value will be coerced to
#' \code{NA_integer_}.  Moreover, returned indices can only be in the
#' same range [1,2^31-1].
#' 
#' @example incl/indexByRow.R
#'
#' @author Henrik Bengtsson
#' @keywords iteration logic
#' @export
indexByRow <- function(dim, idxs = NULL, ...) {
  if (is.matrix(dim)) {
    .Defunct(msg = "indexByRow(x) where 'x' is a matrix is defunct. Use indexByRow(dim(x)) instead.")
  }

  if (!is.null(idxs)) idxs <- as.integer(idxs)
  .Call(C_indexByRow, as.integer(dim), idxs)
}
