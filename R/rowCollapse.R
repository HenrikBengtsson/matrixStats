###########################################################################/**
# @RdocFunction rowCollapse
# @alias rowCollapse.matrix
# @alias colCollapse
# @alias colCollapse.matrix
#
# @title "Extracts one cell per row (column) from a matrix"
#
# \description{
#  @get "title".
#  The implementation is optimized for memory and speed.
# }
#
# \usage{
#   @usage rowCollapse,matrix
#   @usage colCollapse,matrix
# }
#
# \arguments{
#   \item{x}{An NxK @matrix.}
#   \item{idxs}{An index @vector of (maximum) length N (K) specifying the
#    columns (rows) to be extracted.}
#  \item{dim.}{An @integer @vector of length two specifying the
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
setMethodS3("rowCollapse", "matrix", function(x, idxs, dim.=dim(x), ...) {
  # Argument 'idxs':
  idxs <- rep(idxs, length.out=dim.[1L])

  # Columns of interest
  cols <- 0:(dim.[2L]-1L)
  cols <- cols[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * cols + seq_len(dim.[1L])
  cols <- NULL # Not needed anymore

  x[idxs]
})

setMethodS3("colCollapse", "matrix", function(x, idxs, dim.=dim(x), ...) {
  # Argument 'idxs':
  idxs <- rep(idxs, length.out=dim.[2L])

  # Rows of interest
  rows <- seq_len(dim.[1L])
  rows <- rows[idxs]

  # Calculate column-based indices
  idxs <- dim.[1L] * 0:(dim.[2L]-1L) + rows
  rows <- NULL # Not needed anymore

  x[idxs]
})


############################################################################
# HISTORY:
# 2014-11-15
# o SPEEDUP: Made calculation of colOffsets faster.
# o SPEEDUP: Now colCollapse(x) no longer utilizes rowCollapse(t(x)).
# 2014-06-02
# o Made rowCollapse() an S3 method (was S4).
# 2013-11-23
# o MEMORY: rowCollapse() does a better job cleaning out allocated
#   objects sooner.
# 2008-06-13
# o BUG FIX: rowCollapse(x) was broken and returned the wrong elements.
# 2008-04-13
# o Added Rdocs.
# o Added colCollapse().
# 2007-10-21
# o Created.
############################################################################
