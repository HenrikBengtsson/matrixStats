###########################################################################/**
# @RdocFunction varDiff
# @alias sdDiff
# @alias madDiff
# \alias{varDiff,numeric-method}
# \alias{sdDiff,numeric-method}
# \alias{madDiff,numeric-method}
#
# @title "Estimation of discrepancies based on sequential order differences in a vector"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  varDiff(x, na.rm=FALSE, diff=1, ...)
#  sdDiff(x, na.rm=FALSE, diff=1, ...)
#  madDiff(x, na.rm=FALSE, diff=1, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric @vector of length N.}
#  \item{na.rm}{If @TRUE, @NAs are excluded, otherwise not.}
#  \item{diff}{The positional distance of elements for which the
#     difference should be calculated.}
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
setGeneric("varDiff", function(x, na.rm=FALSE, diff=1, ...) {
  standardGeneric("varDiff");
})

setMethod("varDiff", signature(x="numeric"), function(x, na.rm=FALSE, diff=1, ...) {
  if (na.rm)
    x <- x[!is.na(x)];
  if (diff > 0)
    x <- diff(x, differences=diff);
  var(x, na.rm=FALSE)/(2^diff);
})


############################################################################
# HISTORY:
# 2012-07-17
# o Added the reference to von Neumann et al. (1941).
# 2009-02-02
# o Added Rdoc comments.
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
