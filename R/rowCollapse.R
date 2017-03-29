###########################################################################/**
# @RdocFunction rowCollapse
# @alias colCollapse
#
# @title "Extracts one cell per row (column) from a matrix"
#
# \description{
#  @get "title".
#  The implementation is optimized for memory and speed.
# }
#
# \usage{
#   @usage rowCollapse
#   @usage colCollapse
# }
#
# \arguments{
#   \item{x}{An NxK @matrix.}
#   \item{idxs}{An index @vector of (maximum) length N (K) specifying the
#    columns (rows) to be extracted.}
#   \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#    to operate over. If @NULL, no subsetting is done.}
#   \item{dim.}{An @integer @vector of length two specifying the
#              dimension of \code{x}, also when not a @matrix.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of length N (K).
# }
#
# @examples "../incl/rowCollapse.Rex"
#
# @author "HB"
#
# \seealso{
#   \emph{Matrix indexing} to index elements in matrices and arrays,
#   cf. @see "base::[".
# }
#
# @keyword utilities
#*/###########################################################################
rowCollapse <- function(x, idxs, rows=NULL, dim.=dim(x), ...) {
  # Apply subset
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows)) {
    x <- x[rows,,drop=FALSE]
    idxs <- idxs[rows]
  }
  dim. <- dim(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out=dim.[1L])

  # Columns of interest
  cols <- 0:(dim.[2L]-1L)
  cols <- cols[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * cols + seq_len(dim.[1L])
  cols <- NULL # Not needed anymore

  x[idxs]
}

colCollapse <- function(x, idxs, cols=NULL, dim.=dim(x), ...) {
  # Apply subset
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(cols)) {
    x <- x[,cols,drop=FALSE]
    idxs <- idxs[cols]
  }
  dim. <- dim(x)

  # Argument 'idxs':
  idxs <- rep(idxs, length.out=dim.[2L])

  # Rows of interest
  rows <- seq_len(dim.[1L])
  rows <- rows[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * 0:(dim.[2L]-1L) + rows
  rows <- NULL # Not needed anymore

  x[idxs]
}
