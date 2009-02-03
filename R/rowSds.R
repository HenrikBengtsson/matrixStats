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
#  rowMads(x, centers=NULL, constant=1.4826, ...)
#  colMads(x, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{centers}{A optional @numeric @vector of length N (K) with centers.
#     If @NULL, they are calculated using @see "rowMedians".}
#  \item{constant}{A scale factor.  See @see "stats::mad" for details.}
#  \item{...}{Additional arguments passed to @see "rowVars" and
#     @see "rowMedians", respectively.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# @author
#
# \seealso{
#   @see "stats::sd", @see "stats::mad" and \code{\link[stats:cor]{var}}.
#   @see "rowQuantiles".
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
# 2008-03-26 [HB] 
# o Created from genefilter::rowVars() by Wolfgang Huber.
############################################################################
