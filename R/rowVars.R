###########################################################################/**
# @RdocFunction rowVars
# @alias rowVars
# @alias colVars
# \alias{rowVars,matrix-method}
# \alias{colVars,matrix-method}
#
# @title "Variance estimates for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowVars
#  @usage colVars
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{center}{(optional) The center, defaults to the row means.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
#  \item{...}{Additional arguments passed to \code{rowMeans()} and
#     \code{rowSums()}.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# @examples "../incl/rowMethods.Rex"
#
# @author "HB"
#
# \seealso{
#   See \code{rowMeans()} and \code{rowSums()} in @see "base::colSums".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowVars <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, center=NULL, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)

  if (is.null(center)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    sigma2 <- .Call("rowVars", x, dim., rows, cols, na.rm, hasNAs, TRUE, PACKAGE="matrixStats");
    return(sigma2)
  }

  # Apply subset on 'x'
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
  dim. <- dim(x)

  # Apply subset on 'center'
  if (!is.null(rows)) center <- center[rows]

  ncol <- ncol(x);

  # Nothing to do?
  if (ncol <= 1L) {
    x <- rep(NA_real_, times=nrow(x));
    return(x);
  }

  if (na.rm) {
    # Count number of missing values in each row
    nNA <- rowCounts(x, value=NA_real_, na.rm=FALSE);

    # Number of non-missing values
    n <- ncol - nNA;

    hasNA <- any(nNA > 0L);
    if (hasNA) {
      # Set NA estimates for rows with less than two observations
      n[n <= 1L] <- NA_integer_;
    } else {
      # No need to check for missing values below
      na.rm <- FALSE;
    }
  } else {
    # Assuming no missing values
    n <- ncol;
  }

  # Spread
  x <- x*x;
  x <- rowMeans(x, na.rm=na.rm);

  # Variance
  x <- (x - center^2);
  x * (n/(n-1));
}


colVars <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, center=NULL, dim.=dim(x), ...) {
  dim. <- as.integer(dim.)

  if (is.null(center)) {
    dim. <- as.integer(dim.)
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    sigma2 <- .Call("rowVars", x, dim., rows, cols, na.rm, hasNAs, FALSE, PACKAGE="matrixStats");
    return(sigma2)
  }

  # Apply subset on 'x'
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
  dim. <- dim(x)

  # Apply subset on 'center'
  if (!is.null(cols)) center <- center[cols]

  nrow <- nrow(x);

  # Nothing to do?
  if (nrow <= 1L) {
    x <- rep(NA_real_, times=ncol(x));
    return(x);
  }

  if (na.rm) {
    # Count number of missing values in each column
    nNA <- colCounts(x, value=NA_real_, na.rm=FALSE);

    # Number of non-missing values
    n <- nrow - nNA;

    hasNA <- any(nNA > 0L);
    if (hasNA) {
      # Set NA estimates for rows with less than two observations
      n[n <= 1L] <- NA_integer_;
    } else {
      # No need to check for missing values below
      na.rm <- FALSE;
    }
  } else {
    # Assuming no missing values
    n <- nrow;
  }

  # Spread
  x <- x*x;
  x <- colMeans(x, na.rm=na.rm);

  # Variance
  x <- (x - center^2);
  x * (n/(n-1));
}


############################################################################
# HISTORY:
# 2015-02-09 [HB]
# o Now using na.rm=FALSE as the default.
# 2014-06-02 [HB]
# o Now rowVars() are utilizing rowCounts() instead of rowSums().
# o SPEEDUP: Made colVars() and colSds() significantly faster and
#   rowVars() and rowSds() a slightly bit faster.
# o Now using NA_integer_ instead of NA.
# 2008-03-26 [HB]
# o Added argument 'center=NULL', cf. base::mad().
# o Created from genefilter::rowVars() by Wolfgang Huber.
############################################################################
