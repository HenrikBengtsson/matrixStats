#' Translates matrix indices by rows into indices by columns
#'
#' Translates matrix indices by rows into indices by columns.
#'
#' @param dim A \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length two specifying the length of the "template" matrix.
#'
#' @param idxs A \code{\link[base]{vector}} of indices.  If
#' \code{\link[base]{NULL}}, all indices are returned.
#'
#' @param ... Not use.
#'
#' @return Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' indices.
#'
#' @example incl/indexByRow.R
#'
#' @author Henrik Bengtsson
#' @keywords iteration logic
#' @export
indexByRow <- function(dim, idxs = NULL, ...) {
  if (is.matrix(dim)) {
    # BACKWARD COMPATIBILITY: Keep for a while, but deprecate
    # in the future.
    dim <- dim(dim)
  } else {
    dim <- as.integer(dim)
  }
  if (!is.null(idxs)) idxs <- as.integer(idxs)
  .Call(C_indexByRow, dim, idxs)
}
