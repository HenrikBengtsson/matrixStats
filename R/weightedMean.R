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
#   \item{idxs}{A @vector indicating subset of elements
#      to operate over. If @NULL, no subsetting is done.}
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
#   If \code{x} is of zero length, then \code{NaN} is returned,
#   which is consistent with @see "base::mean".
# }
#
# @examples "../incl/weightedMean.Rex"
#
# \section{Missing values}{
#   This function handles missing values consistently
#   @see "stats::weighted.mean".  More precisely,
#   if \code{na.rm=FALSE}, then any missing values in either \code{x}
#   or \code{w} will give result \code{NA_real_}.
#   If \code{na.rm=TRUE}, then all \code{(x,w)} data points for which
#   \code{x} is missing are skipped.  Note that if both \code{x} and
#   \code{w} are missing for a data points, then it is also skipped
#   (by the same rule).  However, if only \code{w} is missing, then
#   the final results will always be \code{NA_real_} regardless of
#   \code{na.rm}.
# }
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
weightedMean <- function(x, w=NULL, idxs=NULL, na.rm=FALSE, refine=FALSE, ...) {
  # Argument 'refine':
  refine <- as.logical(refine)

  # Argument 'w':
  if (is.null(w)) {
    ## We won't fall back to stats::mean(), because it's has some overhead
    ## and it doesn't support refine=FALSE.
    w <- rep(1, times=length(x))
  } else {
    w <- as.numeric(w)
  }

  .Call("weightedMean", x, w, idxs, na.rm, refine, PACKAGE="matrixStats")
} # weightedMean()

###############################################################################
# HISTORY:
# 2015-05-25 [DJ]
# o Supported subsetted computation.
# 2014-12-08
# o Created.
###############################################################################
