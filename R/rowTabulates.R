###########################################################################/**
# @RdocFunction rowTabulates
# @alias rowTabulates.matrix
# @alias colTabulates
# @alias colTabulates.matrix
#
# @title "Tabulates the values in a matrix by row (column)"
#
# \description{
#  @get "title".
# }
#
# \usage{
#   @usage rowTabulates,matrix
#   @usage colTabulates,matrix
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
setMethodS3("rowTabulates", "matrix", function(x, values=NULL, ...) {
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

  dim <- dim(x);
  for (kk in seq(length=nbrOfValues)) {
    counts[,kk] <- rowCounts(x, value=values[kk], ...);
  }

  counts;
})


setMethodS3("colTabulates", "matrix", function(x, values=NULL, ...) {
  x <- t(x);
  counts <- rowTabulates(x, values=values, ...);
  x <- NULL; # Not needed anymore
#  if (transpose)
#    counts <- t(counts);
  counts;
})



############################################################################
# HISTORY:
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
