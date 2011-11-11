###########################################################################/**
# @RdocFunction rowMedians
# @alias colMedians
# \alias{rowMedians,matrix-method}
# \alias{colMedians,matrix-method} 
#
# @title "Calculates the median for each row (column) in a matrix"
#
# \description{
#   @get "title". 
# }
#
# \usage{
#  rowMedians(x, na.rm=FALSE, ...)
#  colMedians(x, na.rm=FALSE, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   The implementation of \code{rowMedians()} and \code{colMedians()}
#   is optimized for both speed and memory.  
#   To avoid coercing to @doubles (and hence memory allocation), there
#   is a special implementation for @integer matrices.
#   That is, if \code{x} is an @integer @matrix, then
#   \code{rowMedians(as.double(x))} (\code{rowMedians(as.double(x))})
#   would require three times the memory of \code{rowMedians(x)}
#   (\code{colMedians(x)}), but all this is avoided.
# }
#
# \author{
#   Henrik Bengtsson and Harris Jaffee.
# }
#
# \seealso{
#   See @see "rowMedians" and \code{colMedians()} for weighted medians.
#   For mean estimates, see \code{rowMeans()} in @see "base::colSums".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/########################################################################### 
setGeneric("rowMedians", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowMedians");
})

setMethod("rowMedians", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call("rowMedians", x, na.rm, hasNAs, PACKAGE="matrixStats");
})


setGeneric("colMedians", function(x, na.rm=FALSE, ...) {
  standardGeneric("colMedians");
})

setMethod("colMedians", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  #rowMedians(t(x), na.rm=na.rm, ...);
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call("colMedians", x, na.rm, hasNAs, PACKAGE="matrixStats");
})


############################################################################
# HISTORY:
# 2011-10-13 [HJ]
# o In the past, colMedians(x) was accomplished as rowMedians(t(x)); 
#   it is now done directly.
# 2008-03-25
# o Added colMedians() - a wrapper around rowMedians() for now.
# o Turned into a S4 method as it used to be in Biobase.
# 2007-08-14
# o Added argument 'hasNA'.
# 2005-11-25
# o Created.
############################################################################
