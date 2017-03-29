#' Validate indices
#'
#' Computes validated positive indices from given indices.
#'
#'
#' @param idxs A \code{\link[base]{integer}} \code{\link[base]{vector}}. If
#' \code{\link[base]{NULL}}, all indices are considered.
#'
#' @param maxIdx The possible max index.
#'
#' @param allowOutOfBound Allow positive out of bound to indicate
#' \code{\link[base]{NA}}.
#'
#' @return Returns a validated integers list indicating the indices.
#'
#' @example incl/validateIndices.R
#'
#' @keywords internal
#' @export
validateIndices <- function(idxs = NULL, maxIdx, allowOutOfBound = TRUE) {
  ans <- .Call(C_validate, idxs, maxIdx, allowOutOfBound)
  if (is.null(ans)) ans <- seq_len(maxIdx)
  ans
}
