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
#  \method{rowWeightedMeans}{matrix}(x, w=NULL, na.rm=FALSE, ...)
#  \method{colWeightedMeans}{matrix}(x, w=NULL, na.rm=FALSE, ...)
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
#   \code{rowMeans()}/\code{colMeans()} are used, respectively.
# }
#
# @examples "../incl/rowWeightedMeans.Rex"
#
# @author
#
# \seealso{
#   See \code{rowSums()} and \code{colSums()} in @see "base::colSums".
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
    if (m == 0)
      return(res);

    # Drop entries with zero weight?
    idxs <- which(w != 0);
    nw <- length(idxs);
    if (nw == 0) {
      return(res);
    } else if (nw < n) {
      w <- w[idxs];
      x <- x[,idxs,drop=FALSE];
    }
    
    # Standardize weights to sum to one.
    w <- w / sum(w, na.rm=na.rm);

    for (rr in 1:m) {
      x[rr,] <- w * x[rr,,drop=TRUE];
    }

    res <- base::rowSums(x, na.rm=na.rm);
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
    if (m == 0)
      return(res);

    # Drop entries with zero weight?
    idxs <- which(w != 0);
    nw <- length(idxs);
    if (nw == 0) {
      return(res);
    } else if (nw < n) {
      w <- w[idxs];
      x <- x[idxs,,drop=FALSE];
    }
    
    # Standardize weights to sum to one.
    w <- w / sum(w, na.rm=na.rm);

    x <- w*x;

    res <- base::colSums(x, na.rm=na.rm);
  } else {
    res <- base::colMeans(x, na.rm=na.rm);
  }

  res;
})


##############################################################################
# HISTORY:
# 2008-02-01
# o Added special implementation for column version.
# o Added Rdoc comments.
# o Created.
##############################################################################
