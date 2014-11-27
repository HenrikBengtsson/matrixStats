###########################################################################/**
# @RdocFunction rowCumsums
# @alias rowCumsums
# @alias colCumsums
#
# @title "Cumulative sum for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowCumsums
#  @usage colCumsums
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric NxK @matrix of the same mode as \code{x}.
# }
#
# @examples "../incl/rowCumsums.Rex"
#
# @author "HB"
#
# \seealso{
#   See @see "base::cumsum".
# }
#
# @keyword array
# @keyword iteration
# @keyword univar
#*/###########################################################################
rowCumsums <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, FALSE, TRUE, TRUE, PACKAGE="matrixStats")
}

colCumsums <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, FALSE, TRUE, FALSE, PACKAGE="matrixStats")
}

############################################################################
# HISTORY:
# 2014-11-26 [HB]
# o Created.
############################################################################
