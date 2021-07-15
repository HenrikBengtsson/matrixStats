#' Gets the range of values in each row (column) of a matrix
#'
#' Gets the range of values in each row (column) of a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @return \code{rowRanges()} (\code{colRanges()}) returns a
#' \code{\link[base]{numeric}} Nx2 (Kx2) \code{\link[base]{matrix}}, where N
#' (K) is the number of rows (columns) for which the ranges are calculated.
#'
#' \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a
#' \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link{rowOrderStats}}() and \code{\link[base]{pmin.int}}().
#'
#' @keywords array iteration robust univar
#'
#' @export
rowRanges <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                      dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_rowRanges, x, dim., rows, cols, 2L, na.rm, TRUE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      rownames <- rownames(x)
      if (!is.null(rownames)) {
        if (!is.null(rows)) rownames <- rownames[rows]
        # Zero-length attribute? Keep behavior same as base R function
        if (length(rownames) == 0L) dimnames <- NULL
        else rownames(res) <- rownames
      }
    } else {
      rownames(res) <- NULL
    }
  }
  
  res
}


#' @rdname rowRanges
#' @export
rowMins <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_rowRanges, x, dim., rows, cols, 0L, na.rm, TRUE)
  
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
  
  res
}


#' @rdname rowRanges
#' @export
rowMaxs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_rowRanges, x, dim., rows, cols, 1L, na.rm, TRUE)
  
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
  
  res
}


#' @rdname rowRanges
#' @export
colRanges <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                      dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_colRanges, x, dim., rows, cols, 2L, na.rm, TRUE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      colnames <- colnames(x)
      if (!is.null(colnames)) {
        if (!is.null(cols)) colnames <- colnames[cols]
        # Zero-length attribute? Keep behavior same as base R function
        if (length(colnames) == 0L) dimnames <- NULL
        else rownames(res) <- colnames
      }
    } else {
      rownames(res) <- NULL
    }
  }
  
  res
}


#' @rdname rowRanges
#' @export
colMins <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_colRanges, x, dim., rows, cols, 0L, na.rm, TRUE)
  
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
  
  res
}


#' @rdname rowRanges
#' @export
colMaxs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  res <- .Call(C_colRanges, x, dim., rows, cols, 1L, na.rm, TRUE)
  
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
  
  res
}
