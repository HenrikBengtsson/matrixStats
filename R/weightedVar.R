############################################################################/**
# @RdocFunction weightedVar
# @alias weightedSd
# @alias colWeightedVars
# @alias rowWeightedVars
# @alias colWeightedSds
# @alias rowWeightedSds
#
# @title "Weighted variance and weighted standard deviation"
#
# \usage{
#  @usage weightedVar
#  @usage colWeightedVars
#  @usage rowWeightedVars
#
#  @usage weightedSd
#  @usage colWeightedSds
#  @usage rowWeightedSds
# }
#
#
# \description{
#   Computes a weighted variance / standard deviation of a numeric
#   vector or across rows or columns of a matrix.
# }
#
# \arguments{
#   \item{x}{a @numeric @vector containing the values whose
#            weighted variance is to be computed.}
#   \item{w}{a vector of weights the same length as \code{x} giving the weights
#            to use for each element of \code{x}. Negative weights are treated
#            as zero weights. Default value is equal weight to all values.}
#   \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#            to operate over. If @NULL, no subsetting is done.}
#   \item{na.rm}{a logical value indicating whether @NA values in
#            \code{x} should be stripped before the computation proceeds,
#            or not.  If @NA, no check at all for @NAs is done.
#            Default value is @NA (for efficiency).}
#   \item{center}{Optional @numeric scalar specifying the center
#            location of the data.  If @NULL, it is estimated from data.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# \section{Missing values}{
#   Missing values are dropped at the very beginning, if argument
#   \code{na.rm} is @TRUE, otherwise not.
# }
#
# \seealso{
#   For the non-weighted variance, see @see "stats::var".
# }
#
# @author "HB"
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
weightedVar <- function(x, w=NULL, idxs=NULL, na.rm=FALSE, center=NULL, ...) {
  # Argument 'x':
  n <- length(x);

  # Argument 'w':
  if (is.null(w)) {
    w <- rep(1, times=length(x))
  } else if (length(w) != n) {
    stop("The number of elements in arguments 'w' and 'x' does not match: ", length(w), " != ", n);
  } else if (!is.null(idxs)) {
    # Apply subset on 'w'
    w <- w[idxs]
  }

  # Apply subset on 'x'
  if (!is.null(idxs)) {
    x <- x[idxs]
    n <- length(x)
  }

  # Argument 'na.rm':


  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);


  # Remove values with zero (and negative) weight. This will:
  #  1) take care of the case when all weights are zero,
  #  2) it will most likely speed up the sorting.
  tmp <- (w > 0);
  if (!all(tmp)) {
    x <- .subset(x, tmp);
    w <- .subset(w, tmp);
    n <- length(x);
  }
  tmp <- NULL; # Not needed anymore

  # Drop missing values?
  if (na.rm) {
    keep <- which(!is.na(x) & !is.na(w));
    x <- .subset(x, keep);
    w <- .subset(w, keep);
    n <- length(x);
    keep <- NULL; # Not needed anymore
  } else if (anyMissing(x)) {
    return(naValue);
  }

  # Are any weights Inf? Then treat them with equal weight and all others
  # with weight zero.
  tmp <- is.infinite(w);
  if (any(tmp)) {
    keep <- tmp;
    x <- .subset(x, keep);
    n <- length(x);
    w <- rep(1, times=n);
    keep <- NULL; # Not needed anymore
  }
  tmp <- NULL; # Not needed anymore


  # Are there any values left to calculate the weighted variance of?
  # This is consistent with how stats::var() works.
  if (n <= 1L) return(naValue)

  # Standardize weights to sum to one
  w <- w / sum(w);

  # Estimate the mean?
  if (is.null(center)) {
    center <- sum(w*x);
  }

  # Estimate the variance
  x <- x - center; # Residuals
  x <- x^2;        # Squared residuals
  sigma2 <- sum(w*x) * (n / (n-1L))

  x <- w <- NULL; # Not needed anymore

  sigma2;
} # weightedVar()

weightedSd <- function(...) {
  sqrt(weightedVar(...))
} # weightedSd()


rowWeightedVars <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(cols)) w <- w[cols]

  apply(x, MARGIN=1L, FUN=weightedVar, w=w, na.rm=na.rm, ...)
} # rowWeightedVars()

colWeightedVars <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  apply(x, MARGIN=2L, FUN=weightedVar, w=w, na.rm=na.rm, ...)
} # colWeightedVars()


rowWeightedSds <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  sqrt(rowWeightedVars(x=x, w=w, rows=rows, cols=cols, na.rm=na.rm, ...))
} # rowWeightedSds()

colWeightedSds <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  sqrt(colWeightedVars(x=x, w=w, rows=rows, cols=cols, na.rm=na.rm, ...))
} # colWeightedSds()


############################################################################
# HISTORY:
# 2015-06-03 [DJ]
# o Supported subsetted computation.
# 2014-11-10
# o Turned weightedSd() and weightedVar() into plain function.
# 2014-03-26
# o Created from weightedMad.R.
############################################################################
