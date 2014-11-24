###########################################################################/**
# @RdocFunction rowCounts
# @alias colCounts
# @alias rowAnys
# @alias colAnys
# @alias rowAlls
# @alias colAlls
# @alias rowCounts.default
# @alias colCounts.default
# @alias rowAnys.default
# @alias colAnys.default
# @alias rowAlls.default
# @alias colAlls.default
#
# @title "Counts the number of TRUE values in each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   @usage rowCounts,default
#   @usage colCounts,default
#   @usage rowAlls,default
#   @usage colAlls,default
#   @usage rowAnys,default
#   @usage colAnys,default
# }
#
# \arguments{
#  \item{x}{An NxK @matrix or an N*K @vector.}
#  \item{value}{A value to search for.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowCounts()} (\code{colCounts()}) returns an @integer @vector
#   of length N (K).
#   The other methods returns a @logical @vector of length N (K).
# }
#
# \details{
#   @include "../incl/rowNNN_by_vector.Rd"
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
setMethodS3("rowCounts", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  # Argument 'x':
  if (is.matrix(x)) {
  } else if (is.vector(x)) {
  } else {
    stop("Argument 'x' must be a matrix or a vector: ", mode(x)[1L])
  }

  # Argument 'dim.':
  dim. <- as.integer(dim.)

  # Argument 'value':
  if (length(value) != 1L) {
    stop("Argument 'value' has to be a single value: ", length(value))
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("rowCounts", x, dim., value, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.vector(x)) dim(x) <- dim.
    if (is.na(value)) {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
}) # rowCounts()


setMethodS3("colCounts", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  # Argument 'x':
  if (is.matrix(x)) {
  } else if (is.vector(x)) {
  } else {
    stop("Argument 'x' must be a matrix or a vector: ", mode(x)[1L])
  }

  # Argument 'dim.':
  dim. <- as.integer(dim.)

  # Argument 'value':
  if (length(value) != 1L) {
    stop("Argument 'value' has to be a single value: ", length(value))
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("colCounts", x, dim., value, na.rm, hasNAs, PACKAGE="matrixStats")
    x <- NULL # Not needed anymore
  } else {
    if (is.vector(x)) dim(x) <- dim.
    if (is.na(value)) {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
}) # colCounts()



setMethodS3("rowAlls", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  counts <- rowCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  (counts == dim.[2L])
})

setMethodS3("colAlls", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  counts <- colCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  (counts == dim.[1L])
})

setMethodS3("rowAnys", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  counts <- rowCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  (counts > 0L)
})

setMethodS3("colAnys", "default", function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  counts <- colCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  (counts > 0L)
})



############################################################################
# HISTORY:
# 2014-11-14 [HB]
# o SPEEDUP: Now colCounts() is implemented in native code.
# o CLEANUP: Now (col|row)Count(x) when x is logical utilizes the
#   same code as as.integer(x).
# o As a part of transitioning to plain functions, rowCounts() for matrix
#   was turned into a default method that understands matrix inputs.
#   It also understand vector input, if argument 'dim' is given.
# 2014-06-02 [HB]
# o Made rowCounts() an S3 method (was S4).
# o Added argument 'value' to col- and rowCounts().
# 2008-03-25 [HB]
# o Created.
############################################################################
