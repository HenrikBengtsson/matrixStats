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
  res <- .Call("rowLogSumExps",
               lx, dim., rows, cols,
               as.logical(na.rm), as.logical(hasNA), TRUE,
               PACKAGE="matrixStats");

  # Preserve names
  names <- rownames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # rowLogSumExps()


colLogSumExps <- function(lx, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(lx), ...) {
  dim. <- as.integer(dim.)
  hasNA <- TRUE;
  res <- .Call("rowLogSumExps",
               lx, dim., rows, cols,
               as.logical(na.rm), as.logical(hasNA), FALSE,
               PACKAGE="matrixStats");

  # Preserve names
  names <- colnames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # rowLogSumExps()



############################################################################
# HISTORY:
# 2015-05-28 [DJ]
# o Supported subsetted computation.
# 2013-04-30 [HB]
# o SPEEDUP: (col|row)LogSumExps() are now implemented natively.
# o Renamed to (col|row)LogSumExps().
# 2013-04-29 [HB]
# o Added rowSumsInLogspace().
# o Renamed to colSumsInLogspace() which utilizes logSumExp().
# 2013-04-24 [HB]
# o Added colSumsP() adopted from log.colSums.exp() code contributed
#   by Nakayama ??? (Japan) on 2013-01-08.
# o Created.
############################################################################
