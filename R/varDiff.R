###########################################################################/**
# @RdocFunction varDiff
# @alias sdDiff
# @alias madDiff
#
# @title "Estimation of discrepancies based on sequential order differences in a vector"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage varDiff
#  @usage sdDiff
#  @usage madDiff
# }
#
# \arguments{
#  \item{x}{A @numeric @vector of length N.}
#  \item{na.rm}{If @TRUE, @NAs are excluded, otherwise not.}
#  \item{diff}{The positional distance of elements for which the
#     difference should be calculated.}
#  \item{trim}{A @double in [0,1/2] specifying the fraction of
#     observations to be trimmed from each end of (sorted) \code{x}
#     before estimation.  If \code{trim=1}, then all data points
#     are trimmed.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# @author "HB"
#
# \seealso{
#   See @see "base::diff".
# }
#
# \references{
#  [1] J. von Neumann et al., \emph{The mean square successive difference}.
#      Annals of Mathematical Statistics, 1941, 12, 153-162.\cr
# }
#
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
varDiff <- function(x, na.rm=FALSE, diff=1L, trim=0, ...) {
  if (na.rm)
    x <- x[!is.na(x)];

  # Nothing to do?
  n <- length(x);
  if (n == 0L)
    return(NA_real_);

  # Calculate differences?
  if (diff > 0L) {
    x <- diff(x, differences=diff);

    # Nothing to do?
    n <- length(x);
    if (n == 0L)
      return(NA_real_);
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_);
    lo <- floor(n*trim)+1;
    hi <- (n+1)-lo;
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial);
    x <- x[lo:hi];
  }

  # Estimate
  var <- var(x, na.rm=FALSE);
  x <- NULL; # Not needed anymore
  var/(2^diff);
} # varDiff()


############################################################################
# HISTORY:
# 2014-11-10
# o Turned varDiff() into a function.
# 2014-05-24
# o Turned varDiff() into an S3 method (was S4).
# 2014-04-26
# o Added argument 'trim' to madDiff(), sdDiff() and varDiff().
# 2013-11-23
# o MEMORY: Now varDiff() cleans out allocated objects sooner.
# 2012-07-17
# o Added the reference to von Neumann et al. (1941).
# 2009-02-02
# o Added Rdoc comments.
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
