###########################################################################/**
# @RdocFunction rowOrderStats
# @alias colOrderStats
# \alias{rowOrderStats,matrix-method}
# \alias{colOrderStats,matrix-method}
#
# @title "Gets an order statistic for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  rowOrderStats(x, which, ...)
#  colOrderStats(x, which, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{which}{An @integer index in [1,K] ([1,N]) indicating which
#               order statistic to be returned.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   The implementation of \code{rowOrderStats()} is optimized for both
#   speed and memory.
#   To avoid coercing to @doubles (and hence memory allocation), there
#   is a unique implementation for @integer matrices.
#   Currently, \code{colOrderStats(x)} is calling \code{rowOrderStats(t(x))}.
# }
#
# \section{Missing values}{
#   This method does \emph{not} handle missing values, that is, the result
#   corresponds to having \code{na.rm=FALSE} (if such an argument would
#   be available).
# }
#
# \author{
#   The native implementation of \code{rowOrderStats()} was adopted
#   by Henrik Bengtsson from Robert Gentleman's \code{rowQ()}
#   in the \pkg{Biobase} package.
# }
#
# \seealso{
#   See \code{rowMeans()} in @see "base::colSums".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
setGeneric("rowOrderStats", function(x, which, ...) {
  standardGeneric("rowOrderStats");
})

setMethod("rowOrderStats", signature(x="matrix"), function(x, which, ...) {
  .Call("rowOrderStats", x, which, PACKAGE="matrixStats");
})


setGeneric("colOrderStats", function(x, which, ...) {
  standardGeneric("colOrderStats");
})

setMethod("colOrderStats", signature(x="matrix"), function(x, which, ...) {
  rowOrderStats(t(x), which=which, ...);
})


############################################################################
# HISTORY:
# 2008-03-25
# o Added colOrderStats().
# o Renamed from rowQuantiles() to rowOrderStats(), especially because it
#   is not returning quantiles like quantile().
# o Created (again?)
############################################################################
