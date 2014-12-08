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
#   @see "stats::mean", @see "base::mean" and @see "stats::weighted.mean".
# }
#
# @author
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
weightedMean <- function(x, w, na.rm=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  n <- length(x)
  x <- as.numeric(x)

  # Argument 'w':
  if (length(w) != n) {
    throw("Argument 'x' and 'w' are of different lengths: ", n, " != ", length(w))
  }

  # Argument 'na.rm':
  if (na.rm) {
    ok <- !is.na(x)
    w <- w[ok]
    x <- x[ok]
  }

  # Drop zero weights
  ok <- (w != 0)
  x <- x[ok]
  w <- w[ok]

  # Coerce weights do numeric (to avoid integer overflow in the sum)
  w <- as.double(w)

  # Calculate weighted mean
  sum((x*w)) / sum(w)
} # weightedMean()

weightedMean <- compiler::cmpfun(weightedMean)

###############################################################################
# HISTORY:
# 2014-12-08
# o Created.
###############################################################################
