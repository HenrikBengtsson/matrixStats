###########################################################################/**
# @RdocFunction rowLogSumExps
# @alias colLogSumExps
# \alias{rowLogSumExps,matrix-method}
# \alias{colLogSumExps,matrix-method}
#
# @title "Accurately computes the logarithm of the sum of exponentials across rows or columns"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowLogSumExps
#  @usage colLogSumExps
# }
#
# \arguments{
#  \item{lx}{A @numeric NxK @matrix.
#   Typically \code{lx} are \eqn{log(x)} values.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#   to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, any missing values are ignored, otherwise not.}
#  \item{dim.}{An @integer @vector of length two specifying the
#               dimension of \code{x}, also when not a @matrix.}
#  \item{...}{Not used.}
# }
#
# \value{
#  A @numeric @vector of length N (K).
# }
#
# \section{Benchmarking}{
#   These methods are implemented in native code and have been optimized
#   for speed and memory.
# }
#
# \author{
#   Native implementation by Henrik Bengtsson.
#   Original R code by Nakayama ??? (Japan).
# }
#
# \seealso{
#   To calculate the same on vectors, @see "logSumExp".
# }
#
# @keyword array
#*/###########################################################################
rowLogSumExps <- function(lx, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(lx), ...) {
  dim. <- as.integer(dim.)
  hasNA <- TRUE;
  res <- .Call(C_rowLogSumExps,
               lx, dim., rows, cols,
               as.logical(na.rm), as.logical(hasNA), TRUE);

  # Preserve names
  names <- rownames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
}


colLogSumExps <- function(lx, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(lx), ...) {
  dim. <- as.integer(dim.)
  hasNA <- TRUE;
  res <- .Call(C_rowLogSumExps,
               lx, dim., rows, cols,
               as.logical(na.rm), as.logical(hasNA), FALSE);

  # Preserve names
  names <- colnames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
}
