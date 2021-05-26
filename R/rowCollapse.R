#' Extracts one cell per row (column) from a matrix
#'
#' Extracts one cell per row (column) from a matrix.  The implementation is
#' optimized for memory and speed.
#'
#' @inheritParams rowAlls
#'
#' @param idxs An index \code{\link[base]{vector}} of (maximum) length N (K)
#' specifying the columns (rows) to be extracted.
#'
#' @return Returns a \code{\link[base]{vector}} of length N (K).
#'
#' @example incl/rowCollapse.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso \emph{Matrix indexing} to index elements in matrices and arrays,
#' cf. \code{\link[base]{[}}().
#' @keywords utilities
#' @export
rowCollapse <- function(x, idxs, rows = NULL, dim. = dim(x), ...) {
  # Argument 'x':
  if (!is.matrix(x) && !is.vector(x)) defunctShouldBeMatrixOrVector(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out = dim.[1L])

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.

  # Apply subset
  if (!is.null(rows)) {
    x <- x[rows, , drop = FALSE]
    idxs <- idxs[rows]
  }
  dim. <- dim(x)

  # Columns of interest
  cols <- 0:(dim.[2L] - 1L)
  cols <- cols[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * cols + seq_len(dim.[1L])
  cols <- NULL # Not needed anymore

  x[idxs]
}

#' @rdname rowCollapse
#' @export
colCollapse <- function(x, idxs, cols = NULL, dim. = dim(x), ...) {
  # Argument 'x':
  if (!is.matrix(x) && !is.vector(x)) defunctShouldBeMatrixOrVector(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out = dim.[2L])

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.

  # Apply subset
  if (!is.null(cols)) {
    x <- x[, cols, drop = FALSE]
    idxs <- idxs[cols]
  }
  dim. <- dim(x)

  # Rows of interest
  rows <- seq_len(dim.[1L])
  rows <- rows[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * 0:(dim.[2L] - 1L) + rows
  rows <- NULL # Not needed anymore

  x[idxs]
}
