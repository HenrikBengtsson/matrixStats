###########################################################################/**
# @RdocFunction rowQuantiles
# @alias colQuantiles
# @alias rowIQRs
# @alias colIQRs
#
# @title "Estimates quantiles for each row (column) in a matrix"
#
# \description{
#   @get "title". 
# }
#
# \usage{
#  rowQuantiles(x, probs=seq(from=0, to=1, by=0.25), ..., drop=TRUE)
#  colQuantiles(x, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{probs}{A @numeric @vector of J probabilities in [0,1].}
#  \item{...}{Additional arguments passed to @see "stats::quantile".}
#  \item{drop}{If TRUE, singleton dimensions in the result are dropped, 
#    otherwise not.}
# }
#
# \value{
#   Returns a @numeric NxJ (JxK) @matrix.
# }
#
# @author
#
# \seealso{
#   @see "stats::quantile".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/########################################################################### 
rowQuantiles <- function(x, probs=seq(from=0, to=1, by=0.25), ..., drop=TRUE) {
  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);
  q <- matrix(naValue, nrow=nrow(x), ncol=length(probs));

  for (rr in seq(length=nrow(x))) {
    q[rr,] <- quantile(x[rr,], probs=probs, ...);
  }

  # Drop singleton dimensions?
  if (drop)
    q <- drop(q);

  q;
}

colQuantiles <- function(x, ...) {
  x <- t(x);
  rowQuantiles(x, ...);
}


############################################################################
# HISTORY:
# 2008-03-26 [HB] 
# o Created.
############################################################################
