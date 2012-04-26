###########################################################################/**
# @RdocFunction rowRanks
# @alias colRanks
# \alias{rowRanks,matrix-method}
# \alias{colRanks,matrix-method} 
#
# @title "Gets the rank of each row (column) of a matrix"
#
# \description{
#   @get "title". 
# }
#
# \usage{
#  rowRanks(x, ...)
#  colRanks(x, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric or @integer NxK @matrix.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowRanks()} (\code{colRanks()}) returns an @integer NxK
#   (KxN) @matrix.
# }
#
# \details{
#   The row- (column-) ranks of \code{x} are collected as \emph{rows}
#   of the result matrix.
#   The implementation is optimized for both speed and memory.
#   To avoid coercing to @doubles (and hence memory allocation), there
#   is a unique implementation for @integer matrices.
#   Currently, \code{colRanks(x)} is just \code{rowRanks(t(x))}.
#   Any @names of \code{x} are ignored and absent in the result.
# }
#
# \section{Missing and non- values}{
#   These are ranked as \code{NA}, as with \code{na.last="keep"}
#   in the @see "base::rank" function.
# }
#
# \section{Ties}{
#   Ties are ranked equally, as with setting \code{ties.method="max"}
#   in the @see "base::rank" function.
# }
#
# \author{
#   Hector Corrada Bravo and Harris Jaffee.
#   The native implementation of \code{rowRanks()} was adapted from
#   Robert Gentleman's \code{rowQ()} in the \pkg{Biobase} package.
# }
#
# \seealso{
#   @see "base::rank".
#   For developers, see also Section 'Utility functions' in 
#   'Writing R Extensions manual', particularly the native functions
#   \code{R_qsort_I()} and \code{R_qsort_int_I()}.
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/########################################################################### 
setGeneric("rowRanks", function(x, ...) {
  standardGeneric("rowRanks")
})

setMethod("rowRanks", signature(x="matrix"), function(x, ...) {
  .Call("rowRanks", x, PACKAGE="matrixStats");
})

setGeneric("colRanks", function(x, ...) {
  standardGeneric("colRanks");
})

setMethod("colRanks", signature(x="matrix"), function(x, ...) {
  x <- t(x);
  rowRanks(x, ...);
})

############################################################################
# HISTORY:
# 2011-11-11 [HB]
# o Added '...' to generic functions rowRanks() and colRanks().
# 2011-10-17 [HJ]
# o Added rowRanks and colRanks().
############################################################################ 
