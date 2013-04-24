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
#  rowDiffs(x, ...)
#  colDiffs(x, ...)
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
  d <- matrix(naValue, nrow=nrow(x), ncol=ncol(x)-1);
  for (rr in seq(length=nrow(x))) {
    d[rr,] <- diff(x[rr,], ...);
  }
  d;
}

colDiffs <- function(x, ...) {
  x <- t(x);
  x <- rowDiffs(x, ...);
  x <- t(x);
  x;
}

############################################################################
# HISTORY:
# 2008-03-26 [HB]
# o Created.
############################################################################
