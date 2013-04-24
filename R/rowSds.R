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
#  rowSds(x, ...)
#  colSds(x, ...)
#  rowMads(x, centers=rowMedians(x,...), constant=1.4826, ...)
#  colMads(x, centers=colMedians(x,...), constant=1.4826, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{centers}{A optional @numeric @vector of length N (K) with centers.
#     By default, they are calculated using @see "rowMedians".}
#  \item{constant}{A scale factor.  See @see "stats::mad" for details.}
#  \item{...}{Additional arguments passed to @see "rowVars" and
#     @see "rowMedians", respectively.}
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
rowSds <- function(x, ...) {
  x <- rowVars(x, ...);
  sqrt(x);
}


colSds <- function(x, ...) {
  x <- colVars(x, ...);
  sqrt(x);
}


############################################################################
# HISTORY:
# 2012-03-19 [HC]
# o Changed description of centers argument to rowMads and colMads
# 2008-03-26 [HB]
# o Created from genefilter::rowVars() by Wolfgang Huber.
############################################################################
