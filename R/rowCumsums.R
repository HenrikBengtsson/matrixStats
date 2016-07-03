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
  .Call(C_rowCumsums, x, dim, rows, cols, TRUE)
}

colCumsums <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCumsums, x, dim, rows, cols, FALSE)
}


rowCumprods <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCumprods, x, dim, rows, cols, TRUE)
}

colCumprods <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCumprods, x, dim, rows, cols, FALSE)
}


rowCummins <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCummins, x, dim, rows, cols, TRUE)
}

colCummins <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCummins, x, dim, rows, cols, FALSE)
}

rowCummaxs <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCummaxs, x, dim, rows, cols, TRUE)
}

colCummaxs <- function(x, rows=NULL, cols=NULL, dim.=dim(x), ...) {
  dim <- as.integer(dim.);
  .Call(C_rowCummaxs, x, dim, rows, cols, FALSE)
}


############################################################################
# HISTORY:
# 2015-05-27 [DJ]
# o Supported subsetted computation.
# 2014-11-26 [HB]
# o Created.
############################################################################
