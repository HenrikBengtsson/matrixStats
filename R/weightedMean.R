############################################################################/**
# @RdocFunction weightedMean
#
# \encoding{latin1}
#
# @title "Weighted Arithmetic Mean"
#
# @synopsis
#
# \description{
#   Computes the weighted sample mean of a numeric vector.
# }
#
# \arguments{
#   \item{x}{a @numeric @vector containing the values whose weighted mean is
#            to be computed.}
#   \item{w}{a vector of weights the same length as \code{x} giving the weights
#            to use for each element of \code{x}. Negative weights are treated
#            as zero weights. Default value is equal weight to all values.}
#   \item{na.rm}{a logical value indicating whether @NA values in
#            \code{x} should be stripped before the computation proceeds,
#            or not.  If @NA, no check at all for @NAs is done.
#            Default value is @NA (for efficiency).}
#   \item{refine}{If @TRUE and \code{x} is @numeric, then extra effort is
#      used to calculate the average with greater numerical precision,
#      otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# @examples "../incl/weightedMean.Rex"
#
# \seealso{
#   @see "base::mean" and @see "stats::weighted.mean".
# }
#
# @author
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
weightedMean <- function(x, w, na.rm=FALSE, refine=FALSE, ...) {
  # Argument 'refine':
  refine <- as.logical(refine)

  w <- as.numeric(w)
  .Call("weightedMean", x, w, na.rm, refine, PACKAGE="matrixStats")
} # weightedMean()

###############################################################################
# HISTORY:
# 2014-12-08
# o Created.
###############################################################################
