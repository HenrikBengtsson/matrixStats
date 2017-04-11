#' Extracts one cell per row (column) from a matrix
#'
#' Extracts one cell per row (column) from a matrix.  The implementation is
#' optimized for memory and speed.
#'
#' @param x An NxK \code{\link[base]{matrix}}.
#'
#' @param idxs An index \code{\link[base]{vector}} of (maximum) length N (K)
#' specifying the columns (rows) to be extracted.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
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
  if (!is.matrix(x) && !is.vector(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Apply subset
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows)) {
    x <- x[rows, , drop = FALSE]
    idxs <- idxs[rows]
  }
  dim. <- dim(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out = dim.[1L])

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
  if (!is.matrix(x) && !is.vector(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix or a vector. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Apply subset
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(cols)) {
    x <- x[, cols, drop = FALSE]
    idxs <- idxs[cols]
  }
  dim. <- dim(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out = dim.[2L])

  # Rows of interest
  rows <- seq_len(dim.[1L])
  rows <- rows[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * 0:(dim.[2L] - 1L) + rows
  rows <- NULL # Not needed anymore

  x[idxs]
}
