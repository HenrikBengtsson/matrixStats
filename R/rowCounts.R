###########################################################################/**
# @RdocFunction rowCounts
# @alias colCounts
# @alias count
# @alias allValue
# @alias anyValue
# @alias rowAnys
# @alias colAnys
# @alias rowAlls
# @alias colAlls
#
# @title "Counts the number of TRUE values in each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   @usage count
#   @usage rowCounts
#   @usage colCounts
#   @usage rowAlls
#   @usage colAlls
#   @usage rowAnys
#   @usage colAnys
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
rowCounts <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
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
    counts <- .Call("rowCounts", x, dim., value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.vector(x)) dim(x) <- dim.
    if (is.na(value)) {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
} # rowCounts()


colCounts <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
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
    counts <- .Call("colCounts", x, dim., value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.vector(x)) dim(x) <- dim.
    if (is.na(value)) {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
} # colCounts()



count <- function(x, value=TRUE, na.rm=FALSE, ...) {
  # Argument 'x':
  if (!is.vector(x)) {
    stop("Argument 'x' must be a vector: ", mode(x)[1L])
  }

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
    counts <- .Call("count", x, value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.na(value)) {
      counts <- sum(is.na(x))
    } else {
      counts <- sum(x == value, na.rm=na.rm)
    }
  }

  as.integer(counts)
} # count()



rowAlls <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("rowCounts", x, dim., value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    counts <- rowCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
    (counts == dim.[2L])
  }
}

colAlls <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("colCounts", x, dim., value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    counts <- colCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
    (counts == dim.[1L])
  }
}


allValue <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("count", x, value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    counts <- counts(x, value=value, na.rm=na.rm, ...)
    (counts == sum(x, na.rm=TRUE))
  }
}



rowAnys <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("rowCounts", x, dim., value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    counts <- rowCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  }
  as.logical(counts)
}

colAnys <- function(x, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("colCounts", x, dim., value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    counts <- colCounts(x, dim.=dim., value=value, na.rm=na.rm, ...)
  }
  as.logical(counts)
}


anyValue <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("count", x, value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    counts <- counts(x, value=value, na.rm=na.rm, ...)
  }
  as.logical(counts)
}



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
