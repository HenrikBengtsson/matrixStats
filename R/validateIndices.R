#' Validate indices
#'
#' Computes validated positive indices from given indices.
#'
#' \emph{WARNING: This function is defunct and will be removed in a future
#' version.}
#'
#' @inheritParams rowAlls
#'
#' @param maxIdx The possible max index.
#'
#' @param allowOutOfBound Allow positive out of bound to indicate
#' \code{\link[base]{NA}}.
#'
#' @return Returns a validated integers list indicating the indices.
#' If some of the indices cannot be represented as an integer, the
#' indices are returned as doubles.
#'
#' @keywords internal
#' @export
validateIndices <- function(idxs = NULL, maxIdx, allowOutOfBound = TRUE) {
  action <- getOption("matrixStats.validateIndices", "defunct")
  if (!is.null(action)) {
    fcn <- switch(action, deprecated = .Deprecated, defunct = .Defunct, ignore = function(...) NULL)
    fcn(msg = sprintf("validateIndices() is %s and will eventually be removed from %s", action, .packageName))
  }

  ans <- .Call(C_validate, idxs, maxIdx, allowOutOfBound)
  if (is.null(ans)) ans <- seq_len(maxIdx)
  ans
}
