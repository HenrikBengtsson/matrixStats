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
#   @usage allValue
#   @usage rowAnys
#   @usage colAnys
#   @usage anyValue
# }
#
# \arguments{
#  \item{x}{An NxK @matrix or an N*K @vector.}
#  \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
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
rowCounts <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
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
    counts <- .Call("rowCounts", x, dim., rows, cols, value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=1L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
} # rowCounts()


colCounts <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
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
    counts <- .Call("colCounts", x, dim., rows, cols, value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN=2L, FUN=function(x) sum(x == value, na.rm=na.rm))
    }
  }

  as.integer(counts)
} # colCounts()



count <- function(x, idxs=NULL, value=TRUE, na.rm=FALSE, ...) {
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
    counts <- .Call("count", x, idxs, value, 2L, na.rm, hasNAs, PACKAGE="matrixStats")
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      counts <- sum(is.na(x))
    } else {
      counts <- sum(x == value, na.rm=na.rm)
    }
  }

  as.integer(counts)
} # count()



rowAlls <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("rowCounts", x, dim., rows, cols, value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAlls(is.na(x), na.rm=na.rm, dim.=dim., ...)
    } else {
      rowAlls(x == value, na.rm=na.rm, dim.=dim., ...)
    }
  }
}

colAlls <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("colCounts", x, dim., rows, cols, value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAlls(is.na(x), na.rm=na.rm, dim.=dim., ...)
    } else {
      colAlls(x == value, na.rm=na.rm, dim.=dim., ...)
    }
  }
}


allValue <- function(x, idxs=NULL, value=TRUE, na.rm=FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("count", x, idxs, value, 0L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      allValue(is.na(x), na.rm=na.rm, ...)
    } else {
      allValue(x == value, na.rm=na.rm, ...)
    }
  }
}



rowAnys <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("rowCounts", x, dim., rows, cols, value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAnys(is.na(x), na.rm=na.rm, dim.=dim., ...)
    } else {
      rowAnys(x == value, na.rm=na.rm, dim.=dim., ...)
    }
  }
}

colAnys <- function(x, rows=NULL, cols=NULL, value=TRUE, na.rm=FALSE, dim.=dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("colCounts", x, dim., rows, cols, value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop=FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAnys(is.na(x), na.rm=na.rm, dim.=dim., ...)
    } else {
      colAnys(x == value, na.rm=na.rm, dim.=dim., ...)
    }
  }
}


anyValue <- function(x, idxs=NULL, value=TRUE, na.rm=FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call("count", x, idxs, value, 1L, na.rm, hasNAs, PACKAGE="matrixStats")
    as.logical(counts)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      anyValue(is.na(x), na.rm=na.rm, ...)
    } else {
      anyValue(x == value, na.rm=na.rm, ...)
    }
  }
}



############################################################################
# HISTORY:
# 2015-05-26 [DJ]
# o Supported subsetted computation.
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
