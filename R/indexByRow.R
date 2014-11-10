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
  .Call("indexByRow", dim, idxs, package="matrixStats")
}


##############################################################################
# HISTORY:
# 2014-11-09
# o Now indexByRow() is a plain R function (was a generic function).
# o Implemented in C.
# 2014-05-23
# o CLEANUP: Made indexByRow() an S3 rather than S4 generic.
# 2007-04-12
# o Created.
##############################################################################
