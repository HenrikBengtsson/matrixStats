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
#  colRanks(x, ties.method=c("max", "average", "min"), preserveShape = FALSE, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric or @integer NxK @matrix.}
#  \item{ties.method}{A @character string specifying how ties are treated.
#     For details, see below.}
#  \item{preserveShape}{A @logical specifying whether the @matrix
#     returned should preserve the input shape of \code{x}, or not.}
#  \item{...}{Not used.}
# }
#
# \value{
#  An @integer @matrix is returned.
#  The \code{rowRanks()} function always returns an NxK @matrix,
#  where N (K) is the number of rows (columns) whose ranks are calculated.
#
#  The \code{colRanks()} function returns an NxK @matrix,
#  if \code{preserveShape = TRUE}, otherwise an KxN @matrix.
#
# %%  The mode of the returned matrix is @integer, except for
# %%  \code{ties.method == "average"} when it is @double.
# }
#
# \details{
#   The row ranks of \code{x} are collected as \emph{rows}
#   of the result matrix.
#
#   The column ranks of \code{x} are collected as \emph{rows}
#   if \code{preserveShape = FALSE}, otherwise as \emph{columns}.
#
#   The implementation is optimized for both speed and memory.
#   To avoid coercing to @doubles (and hence memory allocation), there
#   is a unique implementation for @integer matrices.
#   It is more memory efficient to do
#   \code{colRanks(x, preserveShape=TRUE)} than
#   \code{t(colRanks(x, preserveShape=FALSE))}.
#
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
#   The native implementation of \code{rowRanks()} was adapted by
#   Henrik Bengtsson from Robert Gentleman's \code{rowQ()}
#   in the \pkg{Biobase} package.
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
  flavor <- (list(...)$flavor);
  flavor <- ifelse(is.null(flavor), "v2", flavor);


  if (flavor == "v1") {
    if (ties.method != "max") {
      stop("Unsupported value of argument 'ties.method' for flavor=\"v1\": ", ties.method);
    }
    return(.Call("rowRanks", x, as.integer(1L), PACKAGE="matrixStats"));
  }

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"));
  # byrow=TRUE
  .Call("rowRanksWithTies", x, as.integer(tiesMethod), TRUE, PACKAGE="matrixStats");
})


setGeneric("colRanks", function(x, ties.method=c("max", "average", "min"), preserveShape=FALSE, ...) {
  standardGeneric("colRanks");
})

setMethod("colRanks", signature(x="matrix"), function(x, ties.method=c("max", "average", "min"), preserveShape=FALSE, ...) {
  # Argument 'ties.method':
  ties.method <- match.arg(ties.method);

  # Argument 'flavor'
  flavor <- (list(...)$flavor);
  flavor <- ifelse(is.null(flavor), "v2", flavor);

  # Argument 'preserveShape'
  preserveShape <- as.logical(preserveShape);

  if (flavor == "v1") {
    if (ties.method != "max") {
      stop("Unsupported value of argument 'ties.method' for flavor=\"v1\": ", ties.method);
    }
    x <- t(x);
    return(.Call("rowRanks", x, as.integer(1L), PACKAGE="matrixStats"));
  }

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"));
  # byrow=FALSE
  y <- .Call("rowRanksWithTies", x, as.integer(tiesMethod), FALSE, PACKAGE="matrixStats");
  if (!preserveShape) y <- t(y);
  y;
})


############################################################################
# HISTORY:
# 2013-04-23 [HB]
# o Added argument 'preserveShape' to colRanks(), cf. private email
#   'row- and colRanks in package matrixStats' on 2012-10-05 until
#   2013-02-28.
# 2013-01-14 [HB]
# o Added internal support for rowRanks() with ties "max", "min" and
#   "average".
# 2011-11-11 [HB]
# o Added '...' to generic functions rowRanks() and colRanks().
# 2011-10-17 [HJ]
# o Added rowRanks and colRanks().
############################################################################
