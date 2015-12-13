###########################################################################/**
# @RdocFunction rowDiffs
# @alias colDiffs
#
# @title "Calculates difference for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowDiffs
#  @usage colDiffs
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{lag}{An @integer specifying the lag.}
#  \item{differences}{An @integer specifying the order of difference.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric Nx(K-1) or (N-1)xK @matrix.
# }
#
# @examples "../incl/rowDiffs.Rex"
#
# @author "HB"
#
# \seealso{
#   See also @see "diff2".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowDiffs <- function(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...) {
  .Call("rowDiffs", x, dim(x), rows, cols, as.integer(lag), as.integer(differences), TRUE, PACKAGE="matrixStats")
}

colDiffs <- function(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...) {
  .Call("rowDiffs", x, dim(x), rows, cols, as.integer(lag), as.integer(differences), FALSE, PACKAGE="matrixStats")
}


############################################################################
# HISTORY:
# 2015-05-30 [DJ]
# o Supported subsetted computation.
# 2014-11-15 [HB]
# o SPEEDUP: Now colDiffs(x) no longer uses rowDiffs(t(x)).
# 2008-03-26 [HB]
# o Created.
############################################################################
