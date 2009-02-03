###########################################################################/**
# @RdocFunction rowTabulates
# @alias rowdTabulates
# @alias colTabulates
# \alias{rowTabulates,matrix-method}
# \alias{colTabulates,matrix-method} 
#
# @title "Tabulates the values in a matrix by row (column)"
#
# \description{
#  @get "title".
# }
# 
# \usage{
#   rowTabulates(x, values=NULL, ...)
#   colTabulates(x, values=NULL, ...) 
# }
#
# \arguments{
#   \item{x}{An @integer or @raw NxK @matrix.}
#   \item{values}{An @vector of values of count. If @NULL, all (unique)
#    values are counted.}
#   \item{...}{Not used.}
# }
# 
# \value{
#   Returns a NxJ (KxJ) @matrix where J is the number of values counted.
# }
#
# @examples "../incl/rowTabulates.Rex"
#
# @author
# 
# @keyword utilities
#*/########################################################################### 
setGeneric("rowTabulates", function(x, values=NULL, ...) {
  standardGeneric("rowTabulates");
}) 
 

setMethod("rowTabulates", signature(x="matrix"), function(x, values=NULL, ...) {
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
      names <- sprintf("%#x", values);
      values <- as.raw(values);
    } else {
      values <- sort(values);
      names <- as.character(values);
    }
  } else {
    if (is.raw(values)) {
      names <- sprintf("%#x", as.integer(values));
    } else {
      names <- as.character(values);
    }
  }


  nbrOfValues <- length(values);
  counts <- matrix(as.integer(0), nrow=nrow(x), ncol=nbrOfValues);
  colnames(counts) <- names;

  dim <- dim(x);
  for (kk in seq(length=nbrOfValues)) {
    value <- values[kk];
    hasValue <- (x == value);
    hasValue <- as.integer(hasValue);
    dim(hasValue) <- dim;
    sums <- rowSums(hasValue, ...);
    rm(hasValue);
    sums <- as.integer(sums);
    counts[,kk] <- sums;
    rm(sums);
  }

  counts;
})



setGeneric("colTabulates", function(x, values=NULL, ...) {
  standardGeneric("colTabulates");
})


setMethod("colTabulates", signature(x="matrix"), function(x, values=NULL, ...) {
  x <- t(x);
  counts <- rowTabulates(x, values=values, ...);
  rm(x);
#  if (transpose)
#    counts <- t(counts);
  counts;
})



############################################################################
# HISTORY:
# 2009-02-02
# o Fixed Rdoc comments.
# 2008-07-01
# o Created.
############################################################################
