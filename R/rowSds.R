###########################################################################/**
# @RdocFunction rowSds
# @alias rowSds
# @alias colSds
# @alias rowMads
# @alias colMads
# \alias{rowSds,matrix-method}
# \alias{colSds,matrix-method}
#
# @title "Standard deviation estimates for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowSds
#  @usage colSds
#  @usage rowMads
#  @usage colMads
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{center}{A optional @numeric @vector of length N (K) with centers.
#     By default, they are calculated using @see "rowMedians".}
#  \item{constant}{A scale factor.  See @see "stats::mad" for details.}
#  \item{na.rm}{If @TRUE, missing values are removed first, otherwise not.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
#  \item{...}{Additional arguments passed to @see "rowVars" and
#     @see "rowMedians", respectively.}
#  \item{centers}{(deprectated) use \code{center} instead.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# @author "HB"
#
# \seealso{
#   @see "stats::sd", @see "stats::mad" and \code{\link[stats:cor]{var}}.
#   @see "rowIQRs".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowSds <- function(x, rows=NULL, cols=NULL, ...) {
  x <- rowVars(x, rows=rows, cols=cols, ...);
  sqrt(x);
}


colSds <- function(x, rows=NULL, cols=NULL, ...) {
  x <- colVars(x, rows=rows, cols=cols, ...);
  sqrt(x);
}


############################################################################
# HISTORY:
# 2012-03-19 [HC]
# o Changed description of centers argument to rowMads and colMads
# 2008-03-26 [HB]
# o Created from genefilter::rowVars() by Wolfgang Huber.
############################################################################
