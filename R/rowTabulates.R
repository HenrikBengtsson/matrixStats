#' Tabulates the values in a matrix by row (column).
#'
#' @param x An \code{\link[base]{integer}}, a \code{\link[base]{logical}}, or
#' a \code{\link[base]{raw}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param values An \code{\link[base]{vector}} of J values of count. If
#' \code{\link[base]{NULL}}, all (unique) values are counted.
#'
#' @param ... Not used.
#'
#' @return Returns a NxJ (KxJ) \code{\link[base]{matrix}} where N (K) is the
#' number of row (column) \code{\link[base]{vector}}s tabulated and J is the
#' number of values counted.
#'
#' @details
#' An alternative to these functions, is to use \code{table(x, row(x))}
#' and \code{table(x, col(x))}, with the exception that the latter do not
#' support the \code{\link[base]{raw}} data type.
#' When there are no missing values in \code{x}, we have that
#' \code{all(rowTabulates(x) == t(table(x, row(x))))} and
#' \code{all(colTabulates(x) == t(table(x, col(x))))}.
#' When there are missing values, we have that
#' \code{all(rowTabulates(x) == t(table(x, row(x), useNA = "always")[, seq_len(nrow(x))]))} and
#' \code{all(colTabulates(x) == t(table(x, col(x), useNA = "always")[, seq_len(ncol(x))]))}.
#'
#' @example incl/rowTabulates.R
#'
#' @author Henrik Bengtsson
#' @keywords utilities
#' @export
rowTabulates <- function(x, rows = NULL, cols = NULL, values = NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.logical(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' must be of type integer, logical, or raw: ", class(x)[1])
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Argument 'values':
  if (is.null(values)) {
    values <- as.vector(x)
    values <- unique(values)
    if (is.raw(values)) {
      values <- as.integer(values)
      values <- sort.int(values)
      # WORKAROUND: Cannot use "%#x" because it gives an error OSX with
      # R v2.9.0 devel (2009-01-13 r47593b) at R-forge. /HB 2009-06-20
      names <- sprintf("%x", values)
      names <- paste("0x", names, sep = "")
      values <- as.raw(values)
    } else {
      values <- sort.int(values, na.last = TRUE)
      names <- as.character(values)
    }
  } else {
    if (is.raw(values)) {
      names <- sprintf("%x", as.integer(values))
      names <- paste("0x", names, sep = "")
    } else {
      names <- as.character(values)
    }
  }


  nbr_of_values <- length(values)
  counts <- matrix(0L, nrow = nrow(x), ncol = nbr_of_values)
  colnames(counts) <- names
  na.rm <- anyMissing(x)
  for (kk in seq_len(nbr_of_values)) {
    counts[, kk] <- rowCounts(x, value = values[kk], na.rm = na.rm)
  }

  counts
}


#' @rdname rowTabulates
#' @export
colTabulates <- function(x, rows = NULL, cols = NULL, values = NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (is.integer(x)) {
  } else if (is.logical(x)) {
  } else if (is.raw(x)) {
  } else {
    stop("Argument 'x' must be of type integer, logical, or raw: ", class(x)[1])
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Argument 'values':
  if (is.null(values)) {
    values <- as.vector(x)
    values <- unique(values)
    if (is.raw(values)) {
      values <- as.integer(values)
      values <- sort.int(values)
      # WORKAROUND: Cannot use "%#x" because it gives an error OSX with
      # R v2.9.0 devel (2009-01-13 r47593b) at R-forge. /HB 2009-06-20
      names <- sprintf("%x", values)
      names <- paste("0x", names, sep = "")
      values <- as.raw(values)
    } else {
      values <- sort.int(values, na.last = TRUE)
      names <- as.character(values)
    }
  } else {
    if (is.raw(values)) {
      names <- sprintf("%x", as.integer(values))
      names <- paste("0x", names, sep = "")
    } else {
      names <- as.character(values)
    }
  }


  transpose <- FALSE
  if (!transpose) {
    nbr_of_values <- length(values)
    counts <- matrix(0L, nrow = ncol(x), ncol = nbr_of_values)
    colnames(counts) <- names
    na.rm <- anyMissing(x)
    for (kk in seq_len(nbr_of_values)) {
      counts[, kk] <- colCounts(x, value = values[kk], na.rm = na.rm)
    }
  }
  counts
}
