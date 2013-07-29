###########################################################################/**
# @set "class=matrix"
# @RdocMethod rowWeightedMedians
# @alias rowWeightedMedians
# @alias colWeightedMedians
# @alias colWeightedMedians.matrix
#
# @title "Calculates the weighted medians for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowWeightedMedians,matrix
#  @usage colWeightedMedians,matrix
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{w}{A @numeric @vector of length K (N).}
#  \item{na.rm}{If @TRUE, missing values are excluded from the calculation,
#    otherwise not.}
#  \item{...}{Additional arguments passed to @see "weightedMedian".}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   The implementations of these methods are optimized for both speed
#   and memory.
#   If no weights are given, the corresponding
#   @see "rowMedians"/\code{colMedians()} is used.
# }
#
# \examples{
#  @include "../incl/rowWeightedMedians.Rex"
# }
#
# @author "HB"
#
# \seealso{
#   See @see "rowMedians" and \code{colMedians()} for non-weighted medians.
#   Internally, @see "weightedMedian" is used.
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
setMethodS3("rowWeightedMedians", "matrix", function(x, w=NULL, na.rm=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'w':
  hasWeights <- !is.null(w);
  if (hasWeights) {
    n <- ncol(x);
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of column in 'x': ", length(w), " != ", n);
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w));
    }
    if (any(w < 0)) {
      stop("Argument 'w' has negative weights.");
    }
  }


  if (hasWeights) {
    # Allocate results
    m <- nrow(x);
    res <- double(m);
    if (m == 0L)
      return(res);

    # Standardize weights to sum to one.
    w <- w / sum(w, na.rm=na.rm);

    res <- apply(x, MARGIN=1L, FUN=function(x) {
      weightedMedian(x, w=w, na.rm=na.rm, ...);
    });
  } else {
    res <- rowMedians(x, na.rm=na.rm);
  }

  res;
}) # rowWeightedMeans()


setMethodS3("colWeightedMedians", "matrix", function(x, w=NULL, na.rm=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'w':
  hasWeights <- !is.null(w);
  if (hasWeights) {
    n <- nrow(x);
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of rows in 'x': ", length(w), " != ", n);
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w));
    }
    if (any(w < 0)) {
      stop("Argument 'w' has negative weights.");
    }
  }


  if (hasWeights) {
    # Allocate results
    m <- ncol(x);
    res <- double(m);
    if (m == 0L)
      return(res);

    # Standardize weights to sum to one.
    w <- w / sum(w, na.rm=na.rm);

    res <- apply(x, MARGIN=2L, FUN=function(x) {
      weightedMedian(x, w=w, na.rm=na.rm, ...);
    });
  } else {
    res <- colMedians(x, na.rm=na.rm);
  }

  res;
}) # colWeightedMedians()


##############################################################################
# HISTORY:
# 2012-04-16
# o Now {col|row}WeightedMedians() no longer require aroma.light, because
#   weightedMedian() is now in this package.
# 2009-06-17
# o Updated the Rdoc example to run conditionally on aroma.light, which is
#   only a suggested package - not a required one.  This in order to prevent
#   R CMD check to fail on CRAN (as currently done on their OSX servers).
# 2008-02-02
# o Created from rowWeightedMeans.matrix.R.
##############################################################################
