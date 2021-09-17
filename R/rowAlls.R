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
#' @param x An NxK \code{\link[base]{matrix}} or, if \code{dim.} is specified,
#' an N * K \code{\link[base]{vector}}.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param rows A \code{\link[base]{vector}} indicating subset of rows to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param cols A \code{\link[base]{vector}} indicating subset of columns to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param value A value to search for.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' excluded.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.  \emph{Comment:} The reason for this argument
#' being named with a period at the end is purely technical (we get a run-time
#' error if we try to name it \code{dim}).
#' 
#' @param ... Not used.
#' 
#' @param useNames If \code{\link[base]{NA}}, the default behavior of the 
#' function about naming support is remained. If \code{\link[base:logical]{FALSE}}, 
#' no naming support is done. Else if \code{\link[base:logical]{TRUE}}, names 
#' attributes of result are set. 
#'
#' @return \code{rowAlls()} (\code{colAlls()}) returns an
#' \code{\link[base]{logical}} \code{\link[base]{vector}} of length N (K).
#' Analogously for \code{rowAnys()} (\code{rowAlls()}).
#'
#' @section Logical \code{value}:
#' When \code{value} is logical, the result is as if the function is applied
#' on \code{as.logical(x)}.  More specifically, if \code{x} is numeric, then
#' all zeros are treated as \code{FALSE}, non-zero values as \code{TRUE},
#' and all missing values as \code{NA}.
#'
#' @example incl/rowAlls.R
#'
#' @author Henrik Bengtsson
#' @seealso rowCounts
#' @keywords array logic iteration univar
#' @export
rowAlls <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ..., useNames = NA) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_rowCounts, x, dim., rows, cols, FALSE, 1L, na.rm, has_nas, useNames)
      res <- (counts == 0L)
    } else {
      counts <- .Call(C_rowCounts, x, dim., rows, cols, FALSE, 0L, na.rm, has_nas, useNames)
      res <- (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
    has_nas <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas, FALSE)
    res <- as.logical(counts)
    
    # Update names attribute?
    if (!is.na(useNames)) {
      if (useNames) {
        names <- rownames(x)
        if (!is.null(names)) {
          if (!is.null(rows)) {
            names <- names[rows]
            # Zero-length attribute? Keep behavior same as base R function
            if (length(names) == 0L) names <- NULL
          }
          names(res) <- names
        }
      } else {
        names(res) <- NULL
      }
    }
  } else {
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    if (!is.matrix(x)) defunctShouldBeMatrixOrDim(x)

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      return(rowAlls(is.na(x), na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    } else {
      z <- (x == value)
      dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
      if (!identical(dim(z), as.integer(dim))) dim(z) <- dim
      if (isTRUE(useNames)) dimnames(z) <- dimnames(x)
      return(rowAlls(z, na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    }
  }
  
  res 
}


#' @rdname rowAlls
#' @export
colAlls <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ..., useNames = NA) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_colCounts, x, dim., rows, cols, FALSE, 1L, na.rm, has_nas, useNames)
      res <- (counts == 0L)
    } else {
      counts <- .Call(C_colCounts, x, dim., rows, cols, FALSE, 0L, na.rm, has_nas, useNames)
      res <- (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
    has_nas <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 0L, na.rm, has_nas, FALSE)
    res <- as.logical(counts)
    
    # Update names attribute?
    if (!is.na(useNames)) {
      if (useNames) {
        names <- colnames(x)
        if (!is.null(names)) {
          if (!is.null(cols)) {
            names <- names[cols]
            # Zero-length attribute? Keep behavior same as base R function
            if (length(names) == 0L) names <- NULL       
          }
          names(res) <- names
        }
      } else {
        names(res) <- NULL
      }
    }    
  } else {
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    if (!is.matrix(x)) defunctShouldBeMatrixOrDim(x)

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      return(colAlls(is.na(x), na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    } else {
      z <- (x == value)
      dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
      if (!identical(dim(z), as.integer(dim))) dim(z) <- dim
      if (isTRUE(useNames)) dimnames(z) <- dimnames(x)
      return(colAlls(z, na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    }
  }
  
  res
}


#' @rdname rowAlls
#' @export
allValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_count, x, idxs, FALSE, 1L, na.rm, has_nas)
      (counts == 0L)
    } else {
      counts <- .Call(C_count, x, idxs, FALSE, 0L, na.rm, has_nas)
      (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
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
                    na.rm = FALSE, dim. = dim(x), ..., useNames = NA) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_rowCounts, x, dim., rows, cols, FALSE, 0L, na.rm, has_nas, useNames)
      res <- (counts == 0L)
    } else {
      counts <- .Call(C_rowCounts, x, dim., rows, cols, FALSE, 1L, na.rm, has_nas, useNames)
      res <- (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
    has_nas <- TRUE
    counts <- .Call(C_rowCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas, useNames)
    res <- as.logical(counts)
    # Preserve names attribute
    names <- names(counts)
    res <- as.logical(counts)
    names(res) <- names  
  } else {
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    if (!is.matrix(x)) defunctShouldBeMatrixOrDim(x)

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      return(rowAnys(is.na(x), na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    } else {
      z <- (x == value)
      dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
      if (!identical(dim(z), as.integer(dim))) dim(z) <- dim
      if (isTRUE(useNames)) dimnames(z) <- dimnames(x)
      return(rowAnys(z, na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    }
  }
  
  res
}


#' @rdname rowAlls
#' @export
colAnys <- function(x, rows = NULL, cols = NULL, value = TRUE,
                    na.rm = FALSE, dim. = dim(x), ..., useNames = NA) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_colCounts, x, dim., rows, cols, FALSE, 0L, na.rm, has_nas, useNames)
      res <- (counts == 0L)
    } else {
      counts <- .Call(C_colCounts, x, dim., rows, cols, FALSE, 1L, na.rm, has_nas, useNames)
      res <- (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
    has_nas <- TRUE
    counts <- .Call(C_colCounts, x, dim., rows, cols, value, 1L, na.rm, has_nas, useNames)
    # Preserve names attribute
    names <- names(counts)
    res <- as.logical(counts)
    names(res) <- names  
  } else {
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    if (!is.matrix(x)) defunctShouldBeMatrixOrDim(x)

    # Apply subset
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    if (is.na(value)) {
      return(colAnys(is.na(x), na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    } else {
      z <- (x == value)
      dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
      if (!identical(dim(z), as.integer(dim))) dim(z) <- dim
      if (isTRUE(useNames)) dimnames(z) <- dimnames(x)
      return(colAnys(z, na.rm = na.rm, dim. = dim., ..., useNames = useNames))
    }
  }
  
  res
}


#' @rdname rowAlls
#' @export
anyValue <- function(x, idxs = NULL, value = TRUE, na.rm = FALSE, ...) {
  if (is.numeric(x) && is.logical(value) && !is.na(value)) {
    has_nas <- TRUE
    if (isTRUE(value)) {
      counts <- .Call(C_count, x, idxs, FALSE, 0L, na.rm, has_nas)
      (counts == 0L)
    } else {
      counts <- .Call(C_count, x, idxs, FALSE, 1L, na.rm, has_nas)
      (counts == 1L)
    }
  } else if (is.numeric(x) || is.logical(x)) {
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
