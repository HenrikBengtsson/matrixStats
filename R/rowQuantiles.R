###########################################################################/**
# @RdocFunction rowQuantiles
# @alias colQuantiles
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
#  \item{x}{A @numeric NxK @matrix with N >= 0.}
#  \item{probs}{A @numeric @vector of J probabilities in [0,1].}
#  \item{...}{Additional arguments passed to @see "stats::quantile".}
#  \item{drop}{If TRUE, singleton dimensions in the result are dropped, 
#    otherwise not.}
# }
#
# \value{
#   Returns a @numeric JxN (JxK) @matrix.
# }
#
# @examples "../incl/rowQuantiles.Rex"
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
  nrow <- nrow(x);
  q <- matrix(naValue, nrow=nrow, ncol=length(probs));

  if (nrow > 0L) {
    # In order to seq the column names
    t <- quantile(x[1L,], probs=probs, ...);
    colnames(q) <- names(t);
    q[1L,] <- t;

    if (nrow >= 2L) {
      for (rr in 2L:nrow) {
        q[rr,] <- quantile(x[rr,], probs=probs, ...);
      }
    }
  } else {
    # Set the column names in case there are no rows
    t <- quantile(0.0, probs=probs, ...);
    colnames(q) <- names(t);
  }

  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q);
  }

  q;
} # rowQuantiles()

colQuantiles <- function(x, ...) {
  x <- t(x);
  rowQuantiles(x, ...);
}


############################################################################
# HISTORY:
# 2011-11-29 [HB] 
# o Added an Rdoc example.
# 2010-10-06 [HB] 
# o Now the result of {row|col}Quantiles() contains column names.
# 2008-03-26 [HB] 
# o Created.
############################################################################
