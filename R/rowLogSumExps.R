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
#  rowLogSumExps(lx, na.rm=FALSE, ...)
#  colLogSumExps(lx, na.rm=FALSE, ...)
# }
#
# \arguments{
#  \item{lx}{A @numeric NxK @matrix.
#   Typically \code{lx} are \eqn{log(x)} values.}
#  \item{na.rm}{If @TRUE, any missing values are ignored, otherwise not.}
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
rowLogSumExps <- function(lx, na.rm=FALSE, ...) {
  hasNA <- TRUE;
  res <- .Call("rowLogSumExps",
               lx, as.logical(na.rm), as.logical(hasNA), TRUE,
               PACKAGE="matrixStats");

  # Preserve names
  names <- rownames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # rowLogSumExps()


colLogSumExps <- function(lx, na.rm=FALSE, ...) {
  hasNA <- TRUE;
  res <- .Call("rowLogSumExps",
               lx, as.logical(na.rm), as.logical(hasNA), FALSE,
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
