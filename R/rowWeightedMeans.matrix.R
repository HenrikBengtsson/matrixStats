###########################################################################/**
# @set "class=matrix"
# @RdocMethod rowWeightedMeans
# @alias rowWeightedMeans
# @alias colWeightedMeans
# @alias colWeightedMeans.matrix
#
# @title "Calculates the weighted means for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowWeightedMeans,matrix
#  @usage colWeightedMeans,matrix
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{w}{A @numeric @vector of length K (N).}
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
setMethodS3("rowWeightedMeans", "matrix", function(x, w=NULL, na.rm=FALSE, ...) {
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

    # Drop entries with zero weight?
    idxs <- which(w != 0);
    nw <- length(idxs);
    if (nw == 0L) {
      return(res);
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
      wS <- base::rowSums(W, na.rm=TRUE);

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

      for (rr in 1:m) {
        x[rr,] <- w * x[rr,,drop=TRUE];
      }

      w <- NULL; # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- base::rowSums(x, na.rm=FALSE);
  } else {
    res <- base::rowMeans(x, na.rm=na.rm);
  }

  res;
}) # rowWeightedMeans()



setMethodS3("colWeightedMeans", "matrix", function(x, w=NULL, na.rm=FALSE, ...) {
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

    # Drop entries with zero weight?
    idxs <- which(w != 0);
    nw <- length(idxs);
    if (nw == 0L) {
      return(res);
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
      wS <- base::colSums(W, na.rm=TRUE);

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
      w <- NULL; # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- base::colSums(x, na.rm=FALSE);
  } else {
    res <- base::colMeans(x, na.rm=na.rm);
  }

  res;
}) # colWeightedMeans()


##############################################################################
# HISTORY:
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
