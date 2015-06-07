###########################################################################/**
# @RdocFunction rowRanges
# @alias colRanges
# @alias rowMins
# @alias rowMaxs
# @alias colMins
# @alias colMaxs
#
# @title "Gets the range of values in each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   @usage rowRanges
#   @usage colRanges
#   @usage rowMins
#   @usage colMins
#   @usage rowMaxs
#   @usage colMaxs
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
#   \code{rowRanges()} (\code{colRanges()}) returns a
#   @numeric Nx2 (Kx2) @matrix, where
#   N (K) is the number of rows (columns) for which the ranges are
#   calculated.
#
#   \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a
#   @numeric @vector of length N (K).
# }
#
# @author "HB"
#
# \seealso{
#   @see "rowOrderStats" and @see "base::pmin.int".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowRanges <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("rowRanges", x, dim., rows, cols, 2L, na.rm, TRUE, PACKAGE="matrixStats")
}

rowMins <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("rowRanges", x, dim., rows, cols, 0L, na.rm, TRUE, PACKAGE="matrixStats")
}

rowMaxs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("rowRanges", x, dim., rows, cols, 1L, na.rm, TRUE, PACKAGE="matrixStats")
}


colRanges <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("colRanges", x, dim., rows, cols, 2L, na.rm, TRUE, PACKAGE="matrixStats")
}

colMins <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("colRanges", x, dim., rows, cols, 0L, na.rm, TRUE, PACKAGE="matrixStats")
}

colMaxs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  .Call("colRanges", x, dim., rows, cols, 1L, na.rm, TRUE, PACKAGE="matrixStats")
}


############################################################################
# HISTORY:
# 2015-05-25 [DJ]
# o Supported subsetted computation.
# 2014-12-17 [HB]
# o CLEANUP: Made col- and rowRanges() plain R functions.
# 2014-11-16
# o SPEEDUP: Implemented in native code.
# 2013-07-28
# o SPEEDUP: Made (col|row)Mins() and (col|row)Maxs() faster.
# o BUG FIX: rowRanges(x) on an Nx0 matrix 'x' would give an error.
#   Ditto for colRanges(x).
# 2009-02-01
# o BUG FIX: colRanges(x) would give an error if nrow(x) == 0.
# 2008-03-25
# o Since colOrderStats() cannot handle missing values we use the slower
#   colRanges() for the case when na.rm=TRUE.
# o Added {row|col}{Min|Max}s().
# o Created {row|col}Ranges() for scratch. Handles NAs.
############################################################################
