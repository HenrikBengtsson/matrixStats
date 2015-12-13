###########################################################################/**
# @RdocFunction rowWeightedMedians
# @alias colWeightedMedians
#
# @title "Calculates the weighted medians for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowWeightedMedians
#  @usage colWeightedMedians
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{w}{A @numeric @vector of length K (N).}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#    to operate over. If @NULL, no subsetting is done.}
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
rowWeightedMedians <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
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
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.");
    }
  }

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(cols)) w <- w[cols]


  if (hasWeights) {
    # Allocate results
    m <- nrow(x);
    if (m == 0L)
      return(double(0L));

    res <- apply(x, MARGIN=1L, FUN=function(x) {
      weightedMedian(x, w=w, na.rm=na.rm, ...);
    });

    w <- NULL; # Not needed anymore
  } else {
    res <- rowMedians(x, na.rm=na.rm);
  }

  res;
} # rowWeightedMedians()


colWeightedMedians <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
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
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.");
    }
  }

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  if (hasWeights) {
    # Allocate results
    m <- ncol(x);
    if (m == 0L)
      return(double(0L));

    res <- apply(x, MARGIN=2L, FUN=function(x) {
      weightedMedian(x, w=w, na.rm=na.rm, ...);
    });

    w <- NULL; # Not needed anymore
  } else {
    res <- colMedians(x, na.rm=na.rm);
  }

  res;
}


##############################################################################
# HISTORY:
# 2015-05-31 [DJ]
# o Supported subsetted computation.
# 2014-12-19 [HB]
# o CLEANUP: Made col- and rowWeightedMedians() plain R functions.
# 2013-11-23
# o MEMORY: Now (col|row)WeightedMedians() clean out allocated objects sooner.
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
