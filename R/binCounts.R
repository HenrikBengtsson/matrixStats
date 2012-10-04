############################################################################/**
# @RdocDefault binCounts
#
# @title "Fast element counting in non-overlapping bins"
#
# @synopsis
#
# \description{
#   Counts the number of elements in non-overlapping bins
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of K positions for to be binned and counted.}
#   \item{bx}{A @numeric @vector of B+1 ordered positions specifying
#      the B bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
#      \code{[bx[B],bx[B+1])}.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of length B with non-negative integers.
# }
#
# \section{Missing and non-finite values}{
#   Missing values in \code{x} are ignored/dropped.
#   Missing values in \code{bx} are not allowed and gives an error.
# }
#
# \seealso{
#   @see "binMeans".
# }
#
# \author{
#   Henrik Bengtsson.
# }
#
# @keyword "univar"
#*/############################################################################ 
setMethodS3("binCounts", "default", function(x, bx, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x));
  }
  
  # Argument 'bx':
  if (!is.numeric(bx)) {
    stop("Argument 'bx' is not numeric: ", mode(bx));
  }
  if (any(is.infinite(bx))) {
    stop("Argument 'bx' must not contain Inf values.");
  }
  o <- order(bx);
  if (any(diff(o) != 1L)) {
    stop("Argument 'bx' is not ordered.");
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocessing of x
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop missing values
  keep <- which(!is.na(x));
  if (length(keep) < length(x)) {
    x <- x[keep];
  }

  # Order x (by increasing x).
  x <- sort(x);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Bin
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- as.numeric(x);
  bx <- as.numeric(bx);
  .Call("binCounts", x, bx, PACKAGE="matrixStats");
}) # binCounts()


############################################################################
# HISTORY:
# 2012-10-03 [HB]
# o Created.
############################################################################
