###########################################################################/**
# @RdocFunction rowVars
# @alias rowVars
# @alias colVars
# \alias{rowVars,matrix-method}
# \alias{colVars,matrix-method} 
#
# @title "Variance estimates for each row (column) in a matrix"
#
# \description{
#   @get "title". 
# }
#
# \usage{
#  rowVars(x, center=NULL, ...)
#  colVars(x, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{center}{(optional) The center, defaults to the row means.}
#  \item{...}{Additional arguments passed to \code{rowMeans()} and 
#     \code{rowSums()}.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# @examples "../incl/rowMethods.Rex"
#
# @author
#
# \seealso{
#   See \code{rowMeans()} and \code{rowSums()} in @see "base::colSums".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/########################################################################### 
rowVars <- function(x, center=NULL, ...) {
  n <- !is.na(x);
  n <- rowSums(n);
  n[n <= 1] <- NA;

  if (is.null(center)) {
    center <- rowMeans(x, ...);
  }

  x <- x - center;
  x <- x*x;
  x <- rowSums(x, ...);
  x <- x/(n-1);

  x;
}


colVars <- function(x, ...) {
  x <- t(x);
  rowVars(x, ...);
}

############################################################################
# HISTORY:
# 2008-03-26 [HB] 
# o Added argument 'center=NULL', cf. base::mad().
# o Created from genefilter::rowVars() by Wolfgang Huber.
############################################################################
