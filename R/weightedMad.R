############################################################################/**
# @RdocDefault weightedMad
#
# @title "Weighted Median Absolute Deviation (MAD)"
#
# @synopsis
#
# \description{
#   Computes a weighted MAD of a numeric vector.
# }
#
# \arguments{
#   \item{x}{a @numeric @vector containing the values whose weighted MAD is
#            to be computed.}
#   \item{w}{a vector of weights the same length as \code{x} giving the weights
#            to use for each element of \code{x}. Negative weights are treated
#            as zero weights. Default value is equal weight to all values.}
#   \item{na.rm}{a logical value indicating whether @NA values in
#            \code{x} should be stripped before the computation proceeds,
#            or not.  If @NA, no check at all for @NAs is done.
#            Default value is @NA (for effiency).}
#   \item{constant}{A @numeric scale factor, cf. @see "stats::mad".}
#   \item{center}{Optional @numeric scalar specifying the center
#            location of the data.  If @NULL, it is estimated from data.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# \section{Missing values}{
#   Missing values are dropped at the very beginning, if argument
#   \code{na.rm} is @TRUE, otherwise not.
# }
#
# @examples "../incl/weightedMad.Rex"
#
# \seealso{
#   For the non-weighted MAD, see @see "stats::mad".
#   Internally @see "weightedMedian" is used to
#   calculate the weighted median.
# }
#
# @author "HB"
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
setMethodS3("weightedMad", "default", function(x, w, na.rm=FALSE, constant=1.4826, center=NULL, ...) {
  # Argument 'x':
  n <- length(x);

  # Argument 'w':
  if (missing(w)) {
    # By default use weights that are one.
    w <- rep(1, times=n);
  } else if (length(w) != n) {
    throw("The number of elements in arguments 'w' and 'x' does not match: ", length(w), " != ", n);
  }

  # Argument 'na.rm':


  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);


  # Remove values with zero (and negative) weight. This will:
  #  1) take care of the case when all weights are zero,
  #  2) it will most likely speed up the sorting.
  tmp <- (w > 0);
  if (!all(tmp)) {
    x <- .subset(x, tmp);
    w <- .subset(w, tmp);
    n <- length(x);
  }

  # Drop missing values?
  if (na.rm) {
    keep <- which(!is.na(x) & !is.na(w));
    x <- .subset(x, keep);
    w <- .subset(w, keep);
    n <- length(x);
  } else if (anyMissing(x)) {
    return(naValue);
  }

  # Are any weights Inf? Then treat them with equal weight and all others
  # with weight zero.
  tmp <- is.infinite(w);
  if (any(tmp)) {
    keep <- tmp;
    x <- .subset(x, keep);
    n <- length(x);
    w <- rep(1, times=n);
  }


  # Are there any values left to calculate the weighted median of?
  # This is consistent with how stats::mad() works.
  if (n == 0L) {
    return(naValue);
  } else if (n == 1L) {
    zeroValue <- 0;
    storage.mode(zeroValue) <- storage.mode(x);
    return(zeroValue);
  }

  # Estimate the mean?
  if (is.null(center)) {
    center <- weightedMedian(x, w=w, na.rm=NA);
  }

  # Estimate the standard deviation
  x <- abs(x - center);
  sigma <- weightedMedian(x, w=w, na.rm=NA);

  # Rescale for normal distributions
  sigma <- constant * sigma;

  sigma;
}) # weightedMad()


############################################################################
# HISTORY:
# 2013-09-26
# o Now utilizing anyMissing().
# 2012-03-22
# o Added an Rdoc example, which also serves as a redundancy test.
# o SPEEDUP: Now weightedMad() lets weightedMedian() know that there are
#   now missing values remaining.
# o Now weightedMad() is smarter about returning early, e.g. if missing
#   values are not removed, there are none or only one value left.
# o Added validation of argument 'w' for weightedMad().
# o Added Rdoc comments to weightedMad().
# o Made weightedMad() into a default method.
# 2009-05-13
# o Added weightedMad().
# o Created.
############################################################################
