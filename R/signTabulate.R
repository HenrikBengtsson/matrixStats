############################################################################/**
# @RdocFunction signTabulate
# @alias signTabulate
#
# @title "Calculates the number of negative, zero, positive and missing values"
#
# @synopsis
#
# \description{
#   @get "title" in a @numeric vector.  For @double vectors, the number of
#   negative and positive infinite values are also counted.
# }
#
# \arguments{
#   \item{x}{a @numeric @vector.}
#   \item{idxs}{A @vector indicating subset of elements
#      to operate over. If @NULL, no subsetting is done.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @named @numeric @vector.
# }
#
# \seealso{
#   @see "base::sign".
# }
#
# @author "HB"
#
# @keyword internal
#*/############################################################################
signTabulate <- function(x, idxs=NULL, ...) {
  res <- .Call("signTabulate", x, idxs, PACKAGE="matrixStats");
  names(res) <- c("-1", "0", "+1", "NA", "-Inf", "+Inf")[1:length(res)];
  res;
} # signTabulate()


############################################################################
# HISTORY:
# 2015-05-31 [DJ]
# o Supported subsetted computation.
# 2014-06-04 [HB]
# o Created.
############################################################################
