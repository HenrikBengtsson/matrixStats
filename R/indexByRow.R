###########################################################################/**
# @RdocFunction indexByRow
#
# @title "Translates matrix indices by rows into indices by columns"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage indexByRow
# }
#
# \arguments{
#  \item{dim}{A @numeric @vector of length two specifying the length
#   of the "template" matrix.}
#  \item{idxs}{A @vector of indices.  If @NULL, all indices are returned.}
#  \item{...}{Not use.}
# }
#
# \value{
#   Returns an @integer @vector of indices.
# }
#
# @examples "../incl/indexByRow.Rex"
#
# @author "HB"
#
# @keyword iteration
# @keyword logic
#*/###########################################################################
indexByRow <- function(dim, idxs=NULL, ...) {
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
