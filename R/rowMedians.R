###########################################################################/**
# @RdocFunction rowMedians
# @alias colMedians
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
rowMedians <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call(C_rowMedians, x, dim., rows, cols, na.rm, hasNAs, TRUE);
}

colMedians <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm);
  hasNAs <- TRUE;  # Add as an argument? /2007-08-24
  .Call(C_rowMedians, x, dim., rows, cols, na.rm, hasNAs, FALSE);
}
