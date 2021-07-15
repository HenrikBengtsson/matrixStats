#' Calculates difference for each row (column) in a matrix
#'
#' Calculates difference for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams diff2
#'
#' @return Returns a \code{\link[base]{numeric}} Nx(K-1) or (N-1)xK
#' \code{\link[base]{matrix}}.
#'
#' @example incl/rowDiffs.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See also \code{\link{diff2}}().
#' @keywords array iteration robust univar
#' @export
rowDiffs <- function(x, rows = NULL, cols = NULL,
                     lag = 1L, differences = 1L, dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  res <- .Call(C_rowDiffs, x, dim., rows, cols,
        as.integer(lag), as.integer(differences), TRUE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      if (!is.null(dimnames(x))) {
        rownames <- rownames(x)
        if (!is.null(rownames)) {
          if (!is.null(rows)) rownames <- rownames[rows]
        }
        colnames <- colnames(x)
        if (!is.null(colnames)) {
          if (!is.null(cols)) colnames <- colnames[cols]
          len <- length(colnames)
          ncols <- ncol(res)
          if (ncols <= 0) colnames <- NULL
          else colnames <- colnames[(len - ncols + 1):len]
        }
        print(rownames)
        print(colnames)
        # Zero-length attributes? Keep behavior same as base R function
        if (length(rownames) == 0L && length(colnames) == 0L) dimnames(res) <- NULL
        else dimnames(res) <- list(rownames, colnames)
      }
    } else {
      dimnames(res) <- NULL
    }
  }
  
  res
}

#' @rdname rowDiffs
#' @export
colDiffs <- function(x, rows = NULL, cols = NULL,
                     lag = 1L, differences = 1L, dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  res <- .Call(C_rowDiffs, x, dim., rows, cols,
        as.integer(lag), as.integer(differences), FALSE)
  
  # Update dimnames attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      if (!is.null(dimnames(x))) {
        colnames <- colnames(x)
        if (!is.null(colnames)) {
          if (!is.null(cols)) colnames <- colnames[cols]
        }
        rownames <- rownames(x)
        if (!is.null(rownames)) {
          if (!is.null(rows)) rownames <- rownames[rows]
          len <- length(rownames)
          nrows <- nrow(res)
          if (nrows <= 0) rownames <- NULL
          else rownames <- rownames[(len - nrows + 1):len]
        }
        # Zero-length attributes? Keep behavior same as base R function
        if (length(rownames) == 0L && length(colnames) == 0L) dimnames(res) <- NULL
        else dimnames(res) <- list(rownames, colnames)
      }
    } else {
      dimnames(res) <- NULL
    }
  }
  
  res
}
