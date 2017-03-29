#' Counts the number of TRUE values in each row (column) of a matrix
#' 
#' Counts the number of TRUE values in each row (column) of a matrix.
#' 
#' These functions takes either a matrix or a vector as input. If a vector,
#' then argument \code{dim} must be specified and fulfill \code{prod(dim) ==
#' length(x)}.  The result will be identical to the results obtained when
#' passing \code{matrix(x, nrow = dim[1L], ncol = dim[2L])}, but avoids having to
#' temporarily create/allocate a matrix, if only such is needed only for these
#' calculations.
#' 
#' @param x An NxK \code{\link[base]{matrix}} or an N*K
#' \code{\link[base]{vector}}.
#' 
#' @param idxs,rows,cols A \code{\link[base]{vector}} indicating subset of
#' elements (or rows and/or columns) to operate over. If
#' \code{\link[base]{NULL}}, no subsetting is done.
#' 
#' @param value A value to search for.
#' 
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are excluded first, otherwise not.
#' 
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#' 
#' @param ... Not used.
#' 
#' @return \code{rowCounts()} (\code{colCounts()}) returns an
#' \code{\link[base]{integer}} \code{\link[base]{vector}} of length N (K).  The
#' other methods returns a \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of length N (K).
#'
#' @example incl/rowCounts.R
#' 
#' @author Henrik Bengtsson
#' @keywords array logic iteration univar
#' @export
rowCounts <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
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
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 2L, na.rm, hasNAs)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN = 1L, FUN = function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN = 1L, FUN = function(x) sum(x == value, na.rm = na.rm))
    }
  }

  as.integer(counts)
}


#' @rdname rowCounts
#' @export
colCounts <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
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
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 2L, na.rm, hasNAs)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN = 2L, FUN = function(x) sum(is.na(x)))
    } else {
      counts <- apply(x, MARGIN = 2L, FUN = function(x) sum(x == value, na.rm = na.rm))
    }
  }

  as.integer(counts)
}


#' @rdname rowCounts
#' @export
count <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
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
    counts <- .Call(C_count, x, idxs, value, 2L, na.rm, hasNAs)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      counts <- sum(is.na(x))
    } else {
      counts <- sum(x == value, na.rm = na.rm)
    }
  }

  as.integer(counts)
}


#' @rdname rowCounts
#' @export
rowAlls <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 0L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAlls(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      rowAlls(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowCounts
#' @export
colAlls <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 0L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAlls(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      colAlls(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowCounts
#' @export
allValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_count, x, idxs, value, 0L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      allValue(is.na(x), na.rm = na.rm, ...)
    } else {
      allValue(x == value, na.rm = na.rm, ...)
    }
  }
}


#' @rdname rowCounts
#' @export
rowAnys <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 1L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAnys(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      rowAnys(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowCounts
#' @export
colAnys <- function(x, rows = NULL, cols = NULL, value = TRUE, na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 1L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    if (is.vector(x)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop = FALSE]
    else if (!is.null(rows)) x <- x[rows,,drop = FALSE]
    else if (!is.null(cols)) x <- x[,cols,drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAnys(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      colAnys(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowCounts
#' @export
anyValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    hasNAs <- TRUE
    counts <- .Call(C_count, x, idxs, value, 1L, na.rm, hasNAs)
    as.logical(counts)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      anyValue(is.na(x), na.rm = na.rm, ...)
    } else {
      anyValue(x == value, na.rm = na.rm, ...)
    }
  }
}
