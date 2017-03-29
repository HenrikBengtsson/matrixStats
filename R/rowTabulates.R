###########################################################################/**
# @RdocFunction rowTabulates
# @alias colTabulates
#
# @title "Tabulates the values in a matrix by row (column)"
#
# \description{
#  @get "title".
# }
#
# \usage{
#   @usage rowTabulates
#   @usage colTabulates
# }
#
# \arguments{
#   \item{x}{An @integer or @raw NxK @matrix.}
#   \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#    to operate over. If @NULL, no subsetting is done.}
#   \item{values}{An @vector of J values of count. If @NULL, all (unique)
#    values are counted.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a NxJ (KxJ) @matrix where
#   N (K) is the number of row (column) @vectors tabulated and
#   J is the number of values counted.
# }
#
# @examples "../incl/rowTabulates.Rex"
#
# @author "HB"
#
# @keyword utilities
#*/###########################################################################
rowTabulates <- function(x, rows=NULL, cols=NULL, values=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' is not of type integer or raw: ", class(x)[1]);
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Argument 'values':
  if (is.null(values)) {
    values <- as.vector(x);
    values <- unique(values);
    if (is.raw(values)) {
      values <- as.integer(values);
      values <- sort(values);
      # WORKAROUND: Cannot use "%#x" because it gives an error OSX with
      # R v2.9.0 devel (2009-01-13 r47593b) at R-forge. /HB 2009-06-20
      names <- sprintf("%x", values);
      names <- paste("0x", names, sep="");
      values <- as.raw(values);
    } else {
      values <- sort(values);
      names <- as.character(values);
    }
  } else {
    if (is.raw(values)) {
      names <- sprintf("%x", as.integer(values));
      names <- paste("0x", names, sep="");
    } else {
      names <- as.character(values);
    }
  }


  nbrOfValues <- length(values);
  counts <- matrix(0L, nrow=nrow(x), ncol=nbrOfValues);
  colnames(counts) <- names;

  for (kk in seq_len(nbrOfValues)) {
    counts[,kk] <- rowCounts(x, value=values[kk], ...);
  }

  counts;
}


colTabulates <- function(x, rows=NULL, cols=NULL, values=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' is not of type integer or raw: ", class(x)[1]);
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Argument 'values':
  if (is.null(values)) {
    values <- as.vector(x);
    values <- unique(values);
    if (is.raw(values)) {
      values <- as.integer(values);
      values <- sort(values);
      # WORKAROUND: Cannot use "%#x" because it gives an error OSX with
      # R v2.9.0 devel (2009-01-13 r47593b) at R-forge. /HB 2009-06-20
      names <- sprintf("%x", values);
      names <- paste("0x", names, sep="");
      values <- as.raw(values);
    } else {
      values <- sort(values);
      names <- as.character(values);
    }
  } else {
    if (is.raw(values)) {
      names <- sprintf("%x", as.integer(values));
      names <- paste("0x", names, sep="");
    } else {
      names <- as.character(values);
    }
  }


  transpose <- FALSE
  if (transpose) {
##    nbrOfValues <- length(values);
##    counts <- matrix(0L, nrow=nbrOfValues, ncol=ncol(x));
##    rownames(counts) <- names;
##    for (kk in seq_len(nbrOfValues)) {
##      counts[kk,] <- colCounts(x, value=values[kk], ...);
##    }
  } else {
    nbrOfValues <- length(values);
    counts <- matrix(0L, nrow=ncol(x), ncol=nbrOfValues);
    colnames(counts) <- names;
    for (kk in seq_len(nbrOfValues)) {
      counts[,kk] <- colCounts(x, value=values[kk], ...);
    }
  }
  counts;
}
