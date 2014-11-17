###########################################################################/**
# @RdocFunction rowRanges
# @alias colRanges
# \alias{rowRanges,matrix-method}
# \alias{colRanges,matrix-method}
# @alias rowMins
# \alias{rowMins,matrix-method}
# @alias rowMaxs
# \alias{rowMaxs,matrix-method}
# @alias colMins
# \alias{colMins,matrix-method}
# @alias colMaxs
# \alias{colMaxs,matrix-method}
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
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
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
# \details{
#   The \code{rowRanges()} function uses the much faster @see "rowOrderStats"
#   if there are no missing values.
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
setGeneric("rowRanges", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowRanges")
})

setGeneric("colRanges", function(x, na.rm=FALSE, ...) {
  standardGeneric("colRanges")
})

setMethod("rowRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  na.rm <- as.logical(na.rm);
  .Call("rowRanges", x, 2L, na.rm, TRUE, PACKAGE="matrixStats");
}) # rowRanges()

setMethod("colRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  x <- t(x)
  na.rm <- as.logical(na.rm);
  .Call("rowRanges", x, 2L, na.rm, TRUE, PACKAGE="matrixStats");
}) # colRanges()


rowMins <- function(x, na.rm=FALSE, drop=TRUE, ...) {
  xRange <- .Call("rowRanges", x, 0L, na.rm, TRUE, PACKAGE="matrixStats");
  if (!drop) dim(xRange) <- c(length(xRange), 1L);
  xRange;
}

rowMaxs <- function(x, na.rm=FALSE, drop=TRUE, ...) {
  xRange <- .Call("rowRanges", x, 1L, na.rm, TRUE, PACKAGE="matrixStats");
  if (!drop) dim(xRange) <- c(length(xRange), 1L);
  xRange;
}

colMins <- function(x, na.rm=FALSE, drop=TRUE, ...) {
  x <- t(x)
  xRange <- .Call("rowRanges", x, 0L, na.rm, TRUE, PACKAGE="matrixStats");
  if (!drop) dim(xRange) <- c(length(xRange), 1L);
  xRange;
}

colMaxs <- function(x, na.rm=FALSE, drop=TRUE, ...) {
  x <- t(x)
  xRange <- .Call("rowRanges", x, 1L, na.rm, TRUE, PACKAGE="matrixStats");
  if (!drop) dim(xRange) <- c(length(xRange), 1L);
  xRange;
}


############################################################################
# HISTORY:
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
