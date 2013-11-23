###########################################################################/**
# @RdocFunction rowCollapse
# @alias colCollapse
# \alias{rowCollapse,matrix-method}
# \alias{colCollapse,matrix-method}
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
setGeneric("rowCollapse", function(x, idxs, ...) {
  standardGeneric("rowCollapse")
})

setMethod("rowCollapse", signature("matrix"), function(x, idxs, ...) {
  dim <- dim(x);
  colOffsets <- c(0L, cumsum(rep(dim[1L], times=dim[2L]-1L)));
  rowOffsets <- seq_len(dim[1L]);
  idxs <- rep(idxs, length.out=dim[1L]);
  colOffsets <- colOffsets[idxs];
  idxs <- rowOffsets + colOffsets;
  rowOffsets <- colOffsets <- NULL; # Not needed anymore
  x[idxs];
})

setGeneric("colCollapse", function(x, idxs, ...) {
  standardGeneric("colCollapse")
})

setMethod("colCollapse", signature("matrix"), function(x, idxs, ...) {
  rowCollapse(t(x), idxs=idxs, ...);
})


############################################################################
# HISTORY:
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
