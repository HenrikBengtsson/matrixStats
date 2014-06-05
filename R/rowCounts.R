###########################################################################/**
# @RdocFunction rowCounts
# @alias rowCounts.matrix
# @alias colCounts
# @alias colCounts.matrix
# @alias rowAnys
# @alias rowAnys.matrix
# @alias colAnys
# @alias colAnys.matrix
# @alias rowAlls
# @alias rowAlls.matrix
# @alias colAlls
# @alias colAlls.matrix
#
# @title "Counts the number of TRUE values in each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   @usage rowCounts,matrix
#   @usage colCounts,matrix
#   @usage rowAlls,matrix
#   @usage colAlls,matrix
#   @usage rowAnys,matrix
#   @usage colAnys,matrix
# }
#
# \arguments{
#  \item{x}{An NxK @matrix.}
#  \item{value}{A value to search for.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowCounts()} (\code{colCounts()}) returns an @integer @vector
#   of length N (K).
#   The other methods returns a @logical @vector of length N (K).
# }
#
# @examples "../incl/rowCounts.Rex"
#
# @author "HB"
#
# @keyword array
# @keyword logic
# @keyword iteration
# @keyword univar
#*/###########################################################################
setMethodS3("rowCounts", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  # Argument 'value':
  if (length(value) != 1L) {
    stop("Argument 'value' has to be a single value: ", length(value));
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x)) {
    na.rm <- as.logical(na.rm);
    hasNAs <- TRUE;
    counts <- .Call("rowCounts", x, value, na.rm, hasNAs, PACKAGE="matrixStats");
  } else {
    if (is.nan(value)) {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.nan(x)));
    } else if (is.na(value)) {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.na(x)));
    } else {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm));
    }
  }

  as.integer(counts);
})


setMethodS3("colCounts", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  # Argument 'value':
  if (length(value) != 1L) {
    stop("Argument 'value' has to be a single value: ", length(value));
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x)) {
    x <- t(x);
    na.rm <- as.logical(na.rm);
    hasNAs <- TRUE;
    counts <- .Call("rowCounts", x, value, na.rm, hasNAs, PACKAGE="matrixStats");
    x <- NULL; # Not needed anymore
  } else {
    if (is.nan(value)) {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(is.nan(x)));
    } else if (is.na(value)) {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(is.na(x)));
    } else {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(x == value, na.rm=na.rm));
    }
  }

  as.integer(counts);
}) # colCounts()



setMethodS3("rowAlls", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  counts <- rowCounts(x, value=value, na.rm=na.rm, ...);
  (counts == ncol(x));
})

setMethodS3("colAlls", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  counts <- colCounts(x, value=value, na.rm=na.rm, ...);
  (counts == nrow(x));
})

setMethodS3("rowAnys", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  counts <- rowCounts(x, value=value, na.rm=na.rm, ...);
  (counts > 0L);
})

setMethodS3("colAnys", "matrix", function(x, value=TRUE, na.rm=FALSE, ...) {
  counts <- colCounts(x, value=value, na.rm=na.rm, ...);
  (counts > 0L);
})



############################################################################
# HISTORY:
# 2014-06-02 [HB]
# o Made rowCounts() an S3 method (was S4).
# o Added argument 'value' to col- and rowCounts().
# 2008-03-25 [HB]
# o Created.
############################################################################
