###########################################################################/**
# @RdocFunction rowIQRs
# @alias colIQRs
# @alias iqr
#
# @title "Estimates of the interquartile range for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowIQRs
#  @usage colIQRs
#  @usage iqr
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{...}{Additional arguments passed to @see "rowQuantiles"
#     (\code{colQuantiles()}).}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# @examples "../incl/rowIQRs.Rex"
#
# @author "HB"
#
# \seealso{
#   See @see "stats::IQR".
#   See @see "rowSds".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowIQRs <- function(x, ...) {
  Q <- rowQuantiles(x, probs=c(0.25, 0.75), ...)
  Q[,2L,drop=TRUE] - Q[,1L,drop=TRUE]
}


colIQRs <- function(x, ...) {
  Q <- colQuantiles(x, probs=c(0.25, 0.75), ...)
  Q[,2L,drop=TRUE] - Q[,1L,drop=TRUE]
}

iqr <- function(x, ...) {
  q <- quantile(x, probs=c(0.25, 0.75), names=FALSE, ...)
  q[2L] - q[1L]
}


############################################################################
# HISTORY:
# 2015-01-11
# o Now iqr() no longer returns a named value.
# 2014-12-19
# o Added iqr().
# 2011-11-25
# o Added help and example to rowIQRs() and colIQRs().
# o BUG FIX: rowIQRs() and colIQRs() would return the 25% and the 75%
#   quantiles, not the difference between them.  Thanks Pierre Neuvial
#   at CNRS, Evry, France for the report.
# 2008-03-26 [HB]
# o Created.
############################################################################
