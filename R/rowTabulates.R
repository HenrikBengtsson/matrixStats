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
rowTabulates <- function(x, values=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' is not of type integer or raw: ", class(x)[1]);
  }

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

  for (kk in seq(length=nbrOfValues)) {
    counts[,kk] <- rowCounts(x, value=values[kk], ...);
  }

  counts;
}


colTabulates <- function(x, values=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' is not of type integer or raw: ", class(x)[1]);
  }

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
##    for (kk in seq(length=nbrOfValues)) {
##      counts[kk,] <- colCounts(x, value=values[kk], ...);
##    }
  } else {
    nbrOfValues <- length(values);
    counts <- matrix(0L, nrow=ncol(x), ncol=nbrOfValues);
    colnames(counts) <- names;
    for (kk in seq(length=nbrOfValues)) {
      counts[,kk] <- colCounts(x, value=values[kk], ...);
    }
  }
  counts;
}



############################################################################
# HISTORY:
# 2014-12-19 [HB]
# o CLEANUP: Made col- and rowTabulates() plain R functions.
# 2014-11-16
# o Now colTabulates(x) no longer calls rowTabulates(t(x)).
# 2014-06-02
# o Made rowTabulates() an S3 method (was S4).
# o SPEEDUP: Now rowTabulates() utilizes rowCounts().
# 2009-06-20
# WORKAROUND: Cannot use "%#x" in rowTabulates() when creating the column
# names of the result matrix.  It gav an error OSX with R v2.9.0 devel
# (2009-01-13 r47593b) current the OSX server at R-forge.
# 2009-02-02
# o Fixed Rdoc comments.
# 2008-07-01
# o Created.
############################################################################
