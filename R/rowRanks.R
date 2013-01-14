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
#  rowRanks(x, ties.method=c("max", "average", "min"), ...)
#  colRanks(x, ties.method=c("max", "average", "min"), ...)
# }
#
# \arguments{
#  \item{x}{A @numeric or @integer NxK @matrix.}
#  \item{ties.method}{A @character string specifying how ties are treated.
#     For details, see below.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowRanks()} (\code{colRanks()}) returns an NxK (KxN) @matrix, where
#   N (K) is the number of rows (columns) for which ranks are calculated.
#   The mode of the returned matrix is @integer.
# %%  The mode of the returned matrix is @integer, except for
# %%  \code{ties.method == "average"} when it is @double.
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
#   When some values are equal ("ties"), argument \code{ties.method}
#   specifies what their ranks should be.
#   If \code{ties.method} is \code{"max"}, ties 
#   are ranked as the maximum value.
#   If \code{ties.method} is \code{"average"}, ties are ranked
#   by their average.
#   If \code{ties.method} is \code{"max"} (\code{"min"}), ties 
#   are ranked as the maximum (minimum) value.
#   If \code{ties.method} is \code{"average"}, ties are ranked
#   by their average.
#   For further details, see @see "base::rank".
# }
#
# \author{
#   Hector Corrada Bravo and Harris Jaffee.
#   Peter Langfelder for adding 'ties.method' support.
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
setGeneric("rowRanks", function(x, ties.method=c("max", "average", "min"), ...) {
  standardGeneric("rowRanks");
})

setMethod("rowRanks", signature(x="matrix"), function(x, ties.method=c("max", "average", "min"), ...) {
  # Argument 'ties.method':
  ties.method <- match.arg(ties.method);

  # Argument 'flavor'
  flavor <- (list(...)$version);
  flavor <- ifelse(is.null(flavor), "v2", flavor);


  if (flavor == "v1") {
    return(.Call("rowRanks", x, as.integer(1L), PACKAGE="matrixStats"));
  }

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"));
  .Call("rowRanksWithTies", x, as.integer(tiesMethod), TRUE, PACKAGE="matrixStats");
})


setGeneric("colRanks", function(x, ties.method=c("max", "average", "min"), ...) {
  standardGeneric("colRanks");
})

setMethod("colRanks", signature(x="matrix"), function(x, ties.method=c("max", "average", "min"), ...) {
  # Argument 'ties.method':
  ties.method <- match.arg(ties.method);

  # Argument 'flavor'
  flavor <- (list(...)$version);
  flavor <- ifelse(is.null(flavor), "v2", flavor);

  # Argument 'transpose'
  transpose <- (list(...)$transpose);
  transpose <- ifelse(is.null(transpose), TRUE, isTRUE(transpose));


  if (flavor == "v1") {
    x <- t(x);
    return(.Call("rowRanks", x, as.integer(1L), PACKAGE="matrixStats"));
  }

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"));
  y <- .Call("rowRanksWithTies", x, as.integer(tiesMethod), FALSE, PACKAGE="matrixStats");
  if (transpose) y <- t(y);
  y;
})


############################################################################
# HISTORY:
# 2013-01-14 [HB]
# o Added internal support for rowRanks() with ties "max", "min" and
#   "average".
# 2011-11-11 [HB]
# o Added '...' to generic functions rowRanks() and colRanks().
# 2011-10-17 [HJ]
# o Added rowRanks and colRanks().
############################################################################ 
