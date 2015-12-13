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
#  @usage rowMedians
#  @usage colMedians
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
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
# @author "HB, HJ"
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
setGeneric("rowMedians", function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  standardGeneric("rowMedians");
})

setMethod("rowMedians", signature(x="matrix"), function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call("rowMedians", x, dim., rows, cols, na.rm, hasNAs, TRUE, PACKAGE="matrixStats");
})


setGeneric("colMedians", function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  standardGeneric("colMedians");
})

setMethod("colMedians", signature(x="matrix"), function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call("rowMedians", x, dim., rows, cols, na.rm, hasNAs, FALSE, PACKAGE="matrixStats");
})


############################################################################
# HISTORY:
# 2015-05-28 [DJ]
# o Supported subsetted computation.
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
