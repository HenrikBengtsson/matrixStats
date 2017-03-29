###########################################################################/**
# @RdocFunction rowRanks
# @alias colRanks
#
# @title "Gets the rank of each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowRanks
#  @usage colRanks
# }
#
# \arguments{
#  \item{x}{A @numeric or @integer NxK @matrix.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{ties.method}{A @character string specifying how ties are treated.
#     For details, see below.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
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
#  if \code{preserveShape = TRUE}, otherwise a KxN @matrix.
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
#   Henrik Bengtsson adapted the original native implementation
#   of \code{rowRanks()} from Robert Gentleman's \code{rowQ()}
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
rowRanks <- function(x, rows=NULL, cols=NULL, ties.method=c("max", "average", "min"), dim.=dim(x), ...) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  if (is.element("flavor", names(list(...)))) {
    .Deprecated(old="Argument 'flavor' of rowRanks()", package="matrixStats")
  }

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"), nomatch=0L)
  if (tiesMethod == 0L) {
    stop("Unknown value of argument 'ties.method': ", ties.method)
  }

  dim. <- as.integer(dim.)
  # byrow=TRUE
  .Call(C_rowRanksWithTies, x, dim., rows, cols, tiesMethod, TRUE)
}


colRanks <- function(x, rows=NULL, cols=NULL, ties.method=c("max", "average", "min"), dim.=dim(x), preserveShape=FALSE, ...) {
  # Argument 'ties.method':
  ties.method <- ties.method[1L]

  if (is.element("flavor", names(list(...)))) {
    .Deprecated(old="Argument 'flavor' of rowRanks()", package="matrixStats")
  }

  # Argument 'preserveShape'
  preserveShape <- as.logical(preserveShape)

  tiesMethod <- charmatch(ties.method, c("max", "average", "min"), nomatch=0L)
  if (tiesMethod == 0L) {
    stop("Unknown value of argument 'ties.method': ", ties.method)
  }

  dim. <- as.integer(dim.)
  # byrow=FALSE
  y <- .Call(C_rowRanksWithTies, x, dim., rows, cols, tiesMethod, FALSE)
  if (!preserveShape) y <- t(y)
  y
}
