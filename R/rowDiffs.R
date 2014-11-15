###########################################################################/**
# @RdocFunction rowDiffs
# @alias colDiffs
#
# @title "Calculates difference for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowDiffs
#  @usage colDiffs
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric Nx(K-1) or (N-1)xK @matrix.
# }
#
# @examples "../incl/rowDiffs.Rex"
#
# @author "HB"
#
# \seealso{
#   Internally @see "base::diff" is used.
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowDiffs <- function(x, ...) {
  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);
  d <- matrix(naValue, nrow=nrow(x), ncol=ncol(x)-1L);
  for (rr in seq(length=nrow(x))) {
    d[rr,] <- diff(x[rr,], ...);
  }
  d;
}

colDiffs <- function(x, ...) {
  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);
  d <- matrix(naValue, nrow=nrow(x)-1L, ncol=ncol(x));
  for (cc in seq(length=ncol(x))) {
    d[,cc] <- diff(x[,cc], ...);
  }
  d;
}

############################################################################
# HISTORY:
# 2014-11-15 [HB]
# o SPEEDUP: Now colDiffs(x) no longer uses rowDiffs(t(x)).
# 2008-03-26 [HB]
# o Created.
############################################################################
