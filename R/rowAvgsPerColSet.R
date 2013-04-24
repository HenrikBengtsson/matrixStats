###########################################################################/**
# @set "class=matrix"
# @RdocMethod rowAvgsPerColSet
# @aliasmethod colAvgsPerRowSet
# @alias rowAvgsPerColSet
# @alias colAvgsPerRowSet
#
# @title "Applies a row-by-row (column-by-column) averaging function to equally-sized subsets of matrix columns (rows)"
#
# \description{
#  @get "title".
#  Each subset is averaged independently of the others.
# }
#
# @synopsis
#
# \arguments{
#   \item{X}{A @numeric NxM @matrix.}
#   \item{W}{An optional @numeric NxM @matrix of weights.}
#   \item{S}{An @integer KxJ @matrix specifying the J subsets.  Each
#     column holds K column (row) indices for the corresponding subset.}
#   \item{FUN}{The row-by-row (column-by-column) @function used to average
#     over each subset of \code{X}.  This function must accept a @numeric
#     NxK (KxM) @matrix and the @logical argument \code{na.rm} (which is
#     automatically set), and return a @numeric @vector of length N (M).}
#   \item{...}{Additional arguments passed to then \code{FUN} @function.}
#   \item{tFUN}{If @TRUE, the NxK (KxM) @matrix passed to \code{FUN()}
#     is transposed first.}
# }
#
# \value{
#   Returns a @numeric JxN (MxJ) @matrix,
#   where row names equal \code{rownames(X)} (\code{colnames(S)})
#   and column names \code{colnames(S)} (\code{colnames(X)}).
# }
#
# \details{
#   If argument \code{S} is a single column vector with indices
#   \code{1:N}, then \code{rowAvgsPerColSet(X, S=S, FUN=rowMeans)}
#   gives the same result as \code{rowMeans(X)}.
#   Analogously, for \code{rowAvgsPerColSet()}.
# }
#
# @examples "../incl/rowAvgsPerColSet.Rex"
#
# @author "HB"
#
# @keyword internal
# @keyword utilities
#*/###########################################################################
setMethodS3("rowAvgsPerColSet", "matrix", function(X, W=NULL, S, FUN=rowMeans, ..., tFUN=FALSE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'X':
  if (!is.matrix(S)) {
    stop("Argument 'X' is not a matrix: ", class(X)[1]);
  }
  dimX <- dim(X);

  # Argument 'W':
  hasW <- !is.null(W);
  if (hasW) {
    if (!is.matrix(W)) {
      stop("Argument 'W' is not a matrix: ", class(W)[1]);
    }
    if (any(dim(W) != dimX)) {
      stop("Argument 'W' does not have the same dimension as 'X': ", paste(dim(W), collapse="x"), " != ", paste(dimX, collapse="x"));
    }
    if (!is.numeric(W)) {
      stop("Argument 'W' is not numeric: ", mode(W));
    }
  }

  # Argument 'S':
  if (!is.matrix(S)) {
    stop("Argument 'S' is not a matrix: ", class(S)[1]);
  }
  nbrOfSets <- ncol(S);
  setNames <- colnames(S);

  # Argument 'FUN':
  if (!is.function(FUN)) {
    stop("Argument 'FUN' is not a function: ", mode(S));
  }

  # Argument 'tFUN':
  tFUN <- as.logical(tFUN);


  # Check if missing values have to be excluded while averaging
  na.rm <- (anyMissing(X) || anyMissing(S));

  # Record names of dimension
  rownamesX <- rownames(X);
  dimnames(X) <- NULL;

  # Average in sets of columns of X.
  Z <- apply(S, MARGIN=2, FUN=function(jj) {
    # Extract set of columns from X
    jj <- jj[is.finite(jj)];
    Zjj <- X[,jj,drop=FALSE];

    if (tFUN) {
      Zjj <- t(Zjj);
    }

    # Average by weights
    if (hasW) {
      Wjj <- W[,jj,drop=FALSE];
      Zjj <- FUN(Zjj, W=Wjj, ..., na.rm=na.rm);
    } else {
      Zjj <- FUN(Zjj, ..., na.rm=na.rm);
    }

    # Sanity check
    stopifnot(length(Zjj) == dimX[1]);

    # Return set average
    Zjj;
  });

  # Sanity check
  stopifnot(dim(Z) == c(dimX[1], nbrOfSets));

  # Set names
  rownames(Z) <- rownamesX;
  colnames(Z) <- setNames;

  Z;
}) # rowAvgsPerColSet()


setMethodS3("colAvgsPerRowSet", "matrix", function(X, W=NULL, S, FUN=colMeans, tFUN=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'X':
  if (!is.matrix(S)) {
    stop("Argument 'X' is not a matrix: ", class(X)[1]);
  }

  # Argument 'W':

  # Argument 'S':
  if (!is.matrix(S)) {
    stop("Argument 'S' is not a matrix: ", class(S)[1]);
  }

  # Argument 'FUN':
  if (!is.function(FUN)) {
    stop("Argument 'FUN' is not a function: ", mode(S));
  }

  # Argument 'tFUN':
  tFUN <- as.logical(tFUN);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Transpose
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  tX <- t(X);
  if (is.null(W)) {
    tW <- NULL;
  } else {
    tW <- t(W);
  }

  # ...
  tZ <- rowAvgsPerColSet(X=tX, W=tW, S=S, FUN=FUN, tFUN=!tFUN, ...);

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Transpose back
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  Z <- t(tZ);

  Z;
}) # colAvgsPerRowSet()


##############################################################################
# HISTORY:
# 2011-11-29
# o Added rowAvgsPerColSet() and colAvgsPerRowSet().
# o Created from blockAvg() in the aroma.cn.eval package.
##############################################################################
