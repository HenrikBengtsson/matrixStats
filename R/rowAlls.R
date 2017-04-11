#' Checks if a value exists / does not exist in each row (column) of a matrix
#'
#' Checks if a value exists / does not exist in each row (column) of a matrix.
#'
#' These functions takes either a matrix or a vector as input. If a vector,
#' then argument \code{dim.} must be specified and fulfill \code{prod(dim.) ==
#' length(x)}.  The result will be identical to the results obtained when
#' passing \code{matrix(x, nrow = dim.[1L], ncol = dim.[2L])}, but avoids
#' having to temporarily create/allocate a matrix, if only such is needed
#' only for these calculations.
#'
#' @param x An NxK \code{\link[base]{matrix}} or an N * K
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
#' @return \code{rowAlls()} (\code{colAlls()}) returns an
#' \code{\link[base]{logical}} \code{\link[base]{vector}} of length N (K).
#' Analogously for \code{rowAnys()} (\code{rowAlls()}).
#'
#' @section Logical \code{value}:
#' When \code{value} is logical, the result is as if the function is applied
#' on \code{as.logical(x)}.  More specifically, if \code{x} is numeric, then
#' all zeros are treates as \code{FALSE}, non-zero values as \code{TRUE},
#' and all missing values as \code{NA}.
#'
#' @example incl/rowAlls.R
#'
#' @author Henrik Bengtsson
#' @seealso rowCounts
#' @keywords array logic iteration univar
#' @export
rowAlls <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## rowAlls(x, value = <logical>) == !rowAnys(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas)
    as.logical(counts)
  } else {
    if (is.vector(x)) {
      dim(x) <- dim.
    } else if (!is.matrix(x)) {
      .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
    }

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAlls(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      rowAlls(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowAlls
#' @export
colAlls <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## colAlls(x, value = <logical>) == !colAnys(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas)
    as.logical(counts)
  } else {
    if (is.vector(x)) {
      dim(x) <- dim.
    } else if (!is.matrix(x)) {
      .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
    }

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAlls(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      colAlls(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowAlls
#' @export
allValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## allValue(x, value = <logical>) == !anyValue(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_count, x, idxs, value, 1L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_count, x, idxs, value, 0L, na.rm, has_nas)
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


#' @rdname rowAlls
#' @export
rowAnys <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## rowAnys(x, value = <logical>) == !rowAlls(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas)
    as.logical(counts)
  } else {
    if (is.vector(x)) {
      dim(x) <- dim.
    } else if (!is.matrix(x)) {
      .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
    }

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      rowAnys(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      rowAnys(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowAlls
#' @export
colAnys <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## colAnys(x, value = <logical>) == !colAlls(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas)
    as.logical(counts)
  } else {
    if (is.vector(x)) {
      dim(x) <- dim.
    } else if (!is.matrix(x)) {
      .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
    }

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      colAnys(is.na(x), na.rm = na.rm, dim. = dim., ...)
    } else {
      colAnys(x == value, na.rm = na.rm, dim. = dim., ...)
    }
  }
}


#' @rdname rowAlls
#' @export
anyValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    ## anyValue(x, value = <logical>) == !allValue(x, value = !<logical>)
    value <- !value
    counts <- .Call(C_count, x, idxs, value, 0L, na.rm, has_nas)
    (counts == 0L)
  } else if (is.numeric(x) || is.logical(x)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    counts <- .Call(C_count, x, idxs, value, 1L, na.rm, has_nas)
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
