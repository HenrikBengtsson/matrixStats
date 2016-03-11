############################################################################/**
# @RdocFunction validateIndices
#
# @title "Validate indices"
#
# \description{
#   Computes validated positive indices from given indices.
# }
#
# \arguments{
#   \item{idxs}{A @integer @vector. If @NULL, all indices are considered.}
#   \item{maxIdx}{The possible max index.}
#   \item{allowOutOfBound}{Allow positive out of bound to indicate @NA.}
# }
#
# \usage{
#   @usage validateIndices
# }
#
# \value{
#   Returns a validated integers list indicating the indices.
# }
#
# @examples "../incl/validateIndices.Rex"
#
# @keyword internal
#*/############################################################################
validateIndices <- function(idxs=NULL, maxIdx, allowOutOfBound=TRUE) {
  ans <- .Call('validate', idxs, maxIdx, allowOutOfBound, PACKAGE='matrixStats')
  if (is.null(ans)) ans <- 1:maxIdx
  ans
}
