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
#  \item{rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
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
rowCumsums <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, rows, cols, TRUE, PACKAGE="matrixStats")
}

colCumsums <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumsums", x, dim, rows, cols, FALSE, PACKAGE="matrixStats")
}


rowCumprods <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumprods", x, dim, rows, cols, TRUE, PACKAGE="matrixStats")
}

colCumprods <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCumprods", x, dim, rows, cols, FALSE, PACKAGE="matrixStats")
}


rowCummins <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummins", x, dim, rows, cols, TRUE, PACKAGE="matrixStats")
}

colCummins <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummins", x, dim, rows, cols, FALSE, PACKAGE="matrixStats")
}

rowCummaxs <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummaxs", x, dim, rows, cols, TRUE, PACKAGE="matrixStats")
}

colCummaxs <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call("rowCummaxs", x, dim, rows, cols, FALSE, PACKAGE="matrixStats")
}


############################################################################
# HISTORY:
# 2015-05-27 [DJ]
# o Supported subsetted computation.
# 2014-11-26 [HB]
# o Created.
############################################################################
