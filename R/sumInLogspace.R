###########################################################################/**
# @RdocFunction sumInLogspace
#
# @title "Accurately computes log(sum(x))"
#
# \description{
#  get "title", where \eqn{x} is given via \eqn{log(x)} and
#  where all values of \eqn{x} is \eqn{|x| << 1}.
#  Example of such \eqn{x}:s are p-values.
# }
#
# \arguments{
#   \item{lx}{A @numeric @vector of \eqn{log(x)} values.}
#   \item{na.rm}{If @TRUE, any missing values are removed before
#     doing the computation, otherwise not.
#     Only used if argument \code{hasNA} is @TRUE.}
#   \item{hasNA}{A @logical indicating whether \code{lx} contains
#     missing values or not.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# \details{
#   The implementation of this function is based on the observation that
#   \deqn{
#      log(x + y)
#        = \{ lx = log(x), ly = log(y) \}
#        = log( exp(lx) + exp(ly) )
#        = lx + log ( 1 + exp(ly - lx) )
#   }
# }
#
# @examples "../incl/sumInLogspace.Rex"
#
# @author "HB, NX"
#
# \seealso{
#   Internally, @see "base::log1p" is used for accurately computing
#   \eqn{log(1+x)}.
# }
#
# @keyword internal
#*/###########################################################################
sumInLogspace <- function(lx, na.rm=FALSE, hasNA=anyMissing(lx)) {
  nx <- length(lx);

  # Fast result?
  if (nx == 0L) {
    return(-Inf);
  } else if (nx == 1L) {
    return(lx);
  }

  # Handle missing values
  if (hasNA) {
    # Return NA?
    if (!na.rm) {
      return(lx[NA]);
    }

    # Drop NAs
    lx <- lx[!is.na(lx)];
    nx <- length(lx);

    # Fast result?
    if (nx == 0L) {
      return(-Inf);
    } else if (nx == 1L) {
      return(lx);
    }
  } # if (hasNA)

  # Locate the largest value
  idxMax <- which.max(lx);
  lxMax <- lx[idxMax];

  # Nothing more to do?
  if (lxMax == -Inf) {
    return(-Inf);
  }

  lx <- lx[-idxMax];
  lx <- lx - lxMax;
  x <- exp(lx);
  e <- sum(x, na.rm=FALSE);
  lxMax + log1p(e);  # == lxMax + log(1+e)
} # sumInLogspace()


############################################################################
# HISTORY:
# 2013-04-29 [HB]
# o Added sumInLogspace().
# o Created.
############################################################################
