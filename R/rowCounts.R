#' Counts the number of occurrences of a specific value
#'
#' The row- and column-wise functions take either a matrix or a vector as
#' input. If a vector, then argument \code{dim.} must be specified and fulfill
#' \code{prod(dim.) == length(x)}.  The result will be identical to the results
#' obtained when passing \code{matrix(x, nrow = dim.[1L], ncol = dim.[2L])},
#' but avoids having to temporarily create/allocate a matrix, if only such is
#' needed only for these calculations.
#'
#' @inheritParams rowAlls
#'
#' @param value A value to search for.
#'
#' @return \code{rowCounts()} (\code{colCounts()}) returns an
#' \code{\link[base]{integer}} \code{\link[base]{vector}} of length N (K).
#' \code{count()} returns a scalar of type \code{\link[base]{integer}} if
#' the count is less than 2^31-1 (= \code{.Machine$integer.max}) otherwise
#' a scalar of type \code{\link[base]{double}}.
#'
#' @example incl/rowCounts.R
#'
#' @author Henrik Bengtsson
#' @seealso rowAlls
#' @keywords array logic iteration univar
#' @export
rowCounts <- function(x, rows = NULL, cols = NULL, value = TRUE,
                      na.rm = FALSE, dim. = dim(x), ..., useNames = TRUE) {
  # Argument 'x':
  if (is.matrix(x)) {
  } else if (is.vector(x)) {
  } else {
    stop(sprintf("Argument '%s' is not a matrix or a vector: %s", "x", mode(x)[1L]))
  }

  # Argument 'value':
  if (length(value) != 1L) {
    stop(sprintf("Argument '%s' is not a scalar: %.0f", "value", length(value)))
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x) || is.logical(x)) {
    # Preserve rownames
    names <- rownames(x)
    
    has_nas <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 2L, na.rm, has_nas, useNames)
    # Preserve names attribute
    names <- names(counts)
    counts <- as.integer(counts)
    names(counts) <- names
  } else {
    # Preserve rownames
    names <- rownames(x)
    
    # Apply new dimensions
    if (!identical(dim(x), dim.)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN = 1L, FUN = function(x) {
        sum(is.na(x))
      })
    } else {
      counts <- apply(x, MARGIN = 1L, FUN = function(x) {
        sum(x == value, na.rm = na.rm)
      })
    }
    
    counts <- as.integer(counts)
    
    # Update names attribute?
    if (useNames) {
      if (!is.null(names)) {
        if (!is.null(rows)) {
          names <- names[rows]
          # Zero-length attribute? Keep behavior same as base R function
          if (length(names) == 0L) names <- NULL
        }
        names(counts) <- names
      }
    } else {
      names(counts) <- NULL
    }
  }
  counts
}


#' @rdname rowCounts
#' @export
colCounts <- function(x, rows = NULL, cols = NULL, value = TRUE,
                      na.rm = FALSE, dim. = dim(x), ..., useNames = TRUE) {
  # Argument 'x':
  if (is.matrix(x)) {
  } else if (is.vector(x)) {
  } else {
    stop(sprintf("Argument '%s' is not a matrix or a vector: %s", "x", mode(x)[1L]))
  }

  # Argument 'value':
  if (length(value) != 1L) {
    stop(sprintf("Argument '%s' is not a scalar: %.0f", "value", length(value)))
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x) || is.logical(x)) {
    # Preserve colnames
    names <- colnames(x)
    
    has_nas <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 2L, na.rm, has_nas, useNames)
    # Preserve names attribute
    names <- names(counts)
    counts <- as.integer(counts)
    names(counts) <- names
  } else {
    # Preserve colnames
    names <- colnames(x)
    
    # Apply new dimensions
    if (!identical(dim(x), dim.)) dim(x) <- dim.

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      counts <- apply(x, MARGIN = 2L, FUN = function(x)
        sum(is.na(x))
      )
    } else {
      counts <- apply(x, MARGIN = 2L, FUN = function(x) {
        sum(x == value, na.rm = na.rm)
      })
    }
    
    counts <- as.integer(counts)
    
    # Update names attribute?
    if (useNames) {
      if (!is.null(names)) {
        if (!is.null(cols)) {
          names <- names[cols]
          # Zero-length attribute? Keep behavior same as base R function
          if (length(names) == 0L) names <- NULL        
        }
        names(counts) <- names
      }
    } else {
      names(counts) <- NULL
    }
  }
  counts
}


#' @rdname rowCounts
#' @export
count <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  # Argument 'x':
  if (!is.vector(x)) {
    stop(sprintf("Argument '%s' is not a vector: %s", "x", mode(x)[1L]))
  }

  # Argument 'value':
  if (length(value) != 1L) {
    stop(sprintf("Argument '%s' is not a scalar: %.0f", "value", length(value)))
  }

  # Coerce 'value' to matrix
  storage.mode(value) <- storage.mode(x)

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Count
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (is.numeric(x) || is.logical(x)) {
    has_nas <- TRUE
    counts <- .Call(C_count, x, idxs, value, 2L, na.rm, has_nas)
  } else {
    # Apply subset
    if (!is.null(idxs)) x <- x[idxs]

    if (is.na(value)) {
      counts <- sum2(is.na(x))
    } else {
      counts <- sum2(x == value, na.rm = na.rm)
    }
  }
  counts
}
