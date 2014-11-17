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
signTabulate <- function(x, ...) {
  res <- .Call("signTabulate", x, PACKAGE="matrixStats");
  names(res) <- c("-1", "0", "+1", "NA", "-Inf", "+Inf")[1:length(res)];
  res;
} # signTabulate()


############################################################################
# HISTORY:
# 2014-06-04 [HB]
# o Created.
############################################################################
