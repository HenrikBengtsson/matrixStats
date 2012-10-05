############################################################################/**
# @RdocDefault binMeans
#
# @title "Fast mean calculations in non-overlapping bins"
#
# @synopsis
#
# \description{
#   Computes the sample means in non-overlapping bins
# }
#
# \arguments{
#   \item{y}{A @numeric @vector of K values to calculate means on.}
#   \item{x}{A @numeric @vector of K positions for to be binned.}
#   \item{bx}{A @numeric @vector of B+1 ordered positions specifying
#      the B bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
#      \code{[bx[B],bx[B+1])}.}
#   \item{na.rm}{If @TRUE, missing values in \code{y} are dropped
#      before calculating the mean, otherwise not.}
#   \item{count}{If @TRUE, the number of data points in each bins is
#      returned as attribute \code{count}, which is an @integer @vector
#      of length B.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length B.
# }
#
# \section{Missing and non-finite values}{
#   Data points where either of \code{y} and {x} is missing are dropped.
#   Non-finite values in code{y} are not allowed and gives an error.
#   Missing values in \code{bx} are not allowed and gives an error.
# }
#
# @examples "../incl/binMeans.Rex"
#
# \seealso{
#   @see "binCounts".
#   @see "stats::aggregate" and @see "base::mean".
# }
#
# \references{
#   [1] R-devel thread \emph{Fastest non-overlapping binning mean function 
#       out there?} on Oct 3, 2012\cr
# }
#
# \author{
#   Henrik Bengtsson with initial code contributions by Martin Morgan [1].
# }
#
# @keyword "univar"
#*/############################################################################ 
setMethodS3("binMeans", "default", function(y, x, bx, na.rm=TRUE, count=TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'y':
  if (!is.numeric(y)) {
    stop("Argument 'y' is not numeric: ", mode(y));
  }
  if (any(is.infinite(y))) {
    stop("Argument 'y' must not contain Inf values.");
  }
  n <- length(y);
 
  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x));
  }
  if (length(x) != n) {
    stop("Argument 'y' and 'x' are of different lengths: ", length(y), " != ", length(x));
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

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm));
  }

  # Argument 'count':
  if (!is.logical(count)) {
    stop("Argument 'count' is not logical: ", mode(count));
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocessing of (x,y)
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop missing values in 'x'
  keep <- which(!is.na(x));
  if (length(keep) < n) {
    x <- x[keep];
    y <- y[keep];
    n <- length(y);
  }

  # Drop missing values in 'y'?
  if (na.rm) {
    keep <- which(!is.na(y));
    if (length(keep) < n) {
      x <- x[keep];
      y <- y[keep];
    }
  }

  # Order (x,y) by increasing x.
  o <- order(x, decreasing=FALSE);
  x <- x[o];
  y <- y[o];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Bin
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  y <- as.numeric(y);
  x <- as.numeric(x);
  bx <- as.numeric(bx);
  count <- as.logical(count);
  .Call("binMeans", y, x, bx, count, PACKAGE="matrixStats");
}) # binMeans()


############################################################################
# HISTORY:
# 2012-10-04 [HB in Anahola]
# o Added argument 'na.rm' to binMeans().
# o Updated Rdocs.
# 2012-10-03 [HB] 
# o Added binMeans() based on native code adopted from code by 
#   Martin Morgan, Fred Hutchinson Cancer Research Center, Seattle.
# o Created.
############################################################################
