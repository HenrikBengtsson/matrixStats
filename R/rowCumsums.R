###########################################################################/**
# @RdocFunction rowCumsums
# @alias rowCumsums
# @alias colCumsums
# @alias rowCumprods
# @alias colCumprods
# @alias rowCummins
# @alias colCummins
# @alias rowCummaxs
# @alias colCummaxs
#
# @title "Cumulative sums, products, minima and maxima for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowCumsums
#  @usage colCumsums
#  @usage rowCumprods
#  @usage colCumprods
#  @usage rowCummins
#  @usage colCummins
#  @usage rowCummaxs
#  @usage colCummaxs
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
#   See @see "base::cumsum", @see "base::cumprod",
#       @see "base::cummin", and @see "base::cummax".
# }
#
# @keyword array
# @keyword iteration
# @keyword univar
#*/###########################################################################
rowCumsums <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, TRUE, PACKAGE="matrixStats")
}

colCumsums <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, FALSE, PACKAGE="matrixStats")
}


rowCumprods <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumprods", x, dim, TRUE, PACKAGE="matrixStats")
}

colCumprods <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumprods", x, dim, FALSE, PACKAGE="matrixStats")
}


rowCummins <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummins", x, dim, TRUE, PACKAGE="matrixStats")
}

colCummins <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummins", x, dim, FALSE, PACKAGE="matrixStats")
}

rowCummaxs <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummaxs", x, dim, TRUE, PACKAGE="matrixStats")
}

colCummaxs <- function(x, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummaxs", x, dim, FALSE, PACKAGE="matrixStats")
}


############################################################################
# HISTORY:
# 2014-11-26 [HB]
# o Created.
############################################################################
