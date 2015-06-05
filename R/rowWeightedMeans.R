###########################################################################/**
# @RdocFunction rowWeightedMeans
# @alias colWeightedMeans
#
# @title "Calculates the weighted means for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowWeightedMeans
#  @usage colWeightedMeans
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{w}{A @numeric @vector of length K (N).}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#    to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, missing values are excluded from the calculation,
#    otherwise not.}
#  \item{...}{Not used.}
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
#   \code{rowMeans()}/\code{colMeans()} is used.
# }
#
# @examples "../incl/rowWeightedMeans.Rex"
#
# @author "HB"
#
# \seealso{
#   See \code{rowMeans()} and \code{colMeans()} in @see "base::colSums"
#   for non-weighted means.
#   See also @see "stats::weighted.mean".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowWeightedMeans <- function(x, w=NULL, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
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

    # Drop entries with zero weight? ...but keep NAs
    idxs <- which(is.na(w) | w != 0);
    nw <- length(idxs);
    if (nw == 0L) {
      return(rep(NaN, times=m));
    } else if (nw < n) {
      w <- w[idxs];
      x <- x[,idxs,drop=FALSE];
    }
    idxs <- NULL; # Not needed anymore

    # Has missing values?
    if (na.rm) {
      # Really?
      na.rm <- anyMissing(x);
    }

    if (na.rm) {
      # Indices of missing values
      nas <- which(is.na(x));

      # Weight matrix
      W <- matrix(w, nrow=nrow(x), ncol=ncol(x), byrow=TRUE);
      w <- NULL; # Not needed anymore
      W[nas] <- NA;
      wS <- rowSums(W, na.rm=TRUE);

      # Standarized weights summing to one w/out missing values
      W[nas] <- 0;
      W <- W / wS;

      x[nas] <- 0;
      nas <- NULL; # Not needed anymore

      x <- W * x;
      W <- NULL; # Not needed anymore
    } else {
      wS <- sum(w);
      # Standardize weights summing to one.
      w <- w / wS;

      # Weighted values
      ## SLOW: for (rr in 1:m) x[rr,] <- w * x[rr,,drop=TRUE];
      ## FAST:
      x <- t_tx_OP_y(x, w, OP="*", na.rm=FALSE)

      w <- NULL; # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- rowSums(x, na.rm=FALSE);
  } else {
    res <- rowMeans(x, na.rm=na.rm);
  }

  res;
} # rowWeightedMeans()



colWeightedMeans <- function(x, w=NULL,  rows=NULL, cols=NULL, na.rm=FALSE, ...) {
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

    # Drop entries with zero weight? ...but keep NAs
    idxs <- which(is.na(w) | w != 0);
    nw <- length(idxs);
    if (nw == 0L) {
      return(rep(NaN, times=m));
    } else if (nw < n) {
      w <- w[idxs];
      x <- x[idxs,,drop=FALSE];
    }
    idxs <- NULL; # Not needed anymore

    # Has missing values?
    if (na.rm) {
      # Really?
      na.rm <- anyMissing(x);
    }

    if (na.rm) {
      # Indices of missing values
      nas <- which(is.na(x));

      # Weight matrix
      W <- matrix(w, nrow=nrow(x), ncol=ncol(x), byrow=FALSE);
      w <- NULL; # Not needed anymore
      W[nas] <- NA;
      wS <- colSums(W, na.rm=TRUE);

      # Standarized weights summing to one w/out missing values
      W[nas] <- 0;
      for (cc in 1:m) {
        W[,cc] <- W[,cc,drop=TRUE] / wS[cc];
      }

      x[nas] <- 0;
      nas <- NULL; # Not needed anymore

      x <- W * x;

      W <- NULL; # Not needed anymore
    } else {
      wS <- sum(w);
      # Standardize weights summing to one.
      w <- w / wS;

      # Weighted values
      x <- w*x;
      ## SLIGHTLY SLOWER: x <- x_OP_y(x, w, OP="*");

      w <- NULL; # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- colSums(x, na.rm=FALSE);
  } else {
    res <- colMeans(x, na.rm=na.rm);
  }

  res;
} # colWeightedMeans()


##############################################################################
# HISTORY:
# 2015-05-31 [DJ]
# o Supported subsetted computation.
# 2014-12-19 [HB]
# o CLEANUP: Made col- and rowWeightedMeans() plain R functions.
# 2013-11-29
# o BUG FIX: (col|row)WeightedMeans() with all zero weights gave an
#   invalid result.
# 2013-11-23
# o MEMORY: Now (col|row)WeightedMeans() clean out allocated objects sooner.
# 2010-02-03
# o BUG FIX: (col|row)WeightedMeans(..., na.rm=TRUE) would incorrectly treat
#   missing values as zeros.  Thanks Pierre Neuvial for reporting this.
# 2008-02-01
# o Added special implementation for column version.
# o Added Rdoc comments.
# o Created.
##############################################################################
