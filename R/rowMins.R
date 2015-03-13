###########################################################################/**
# @RdocFunction rowMins
# @alias colMins
#
# @title "Find the min elements for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowMins_R
#  @usage colMins_R
# }
#
# \arguments{
#  \item{x}{A NxK @matrix.}
#  \item{cols}{An @integer @vector specifying the columns considered}
#  \item{rows}{An @integer @vector specifying the rows considered}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of length N.
# }
#
# @author "Dongcan Jiang"
#
# \seealso{
#   @see "rowMins" and @see "colMins"
# }
#
# @keyword array
#*/###########################################################################
rowMins_R <- function(x, cols=1:dim(x)[2], ...) {
  suppressWarnings({
    apply(x[,cols], MARGIN=1L, FUN=min, ...)
  })
}

colMins_R <- function(x, rows=1:dim(x)[1], ...) {
  suppressWarnings({
    apply(x[rows,], MARGIN=2L, FUN=min, ...)
  })
}
