############################################################################/**
# @RdocFunction x_OP_y
# @alias x_OP_y
# @alias t_tx_OP_y
#
# @title "Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y)'"
#
# \usage{
#  @usage x_OP_y
#  @usage t_tx_OP_y
# }
#
# \description{
#   @get "title", where OP can be +, -, *, and /.
#   For + and *, na.rm=TRUE will drop missing values first.
# }
#
# \arguments{
#   \item{x}{A @numeric NxK @matrix.}
#   \item{y}{A @numeric @vector of length L.}
#   \item{OP}{A @character specifying which operator to use.}
#   \item{xrows, xcols}{A @vector indicating subset of rows (and/or columns)
#       to operate over 'x'. If @NULL, no subsetting is done.}
#   \item{idxs}{A @vector indicating subset of elements
#       to operate over 'y'. If @NULL, no subsetting is done.}
#   \item{commute}{If @TRUE, 'y OP x' ('t(y OP t(x))') is calculated,
#       otherwise 'x OP y' ('t(t(x) OP y)').}
#   \item{na.rm}{If @TRUE, missing values are ignored, otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric NxK @matrix.
# }
#
# \section{Missing values}{
#   If \code{na.rm=TRUE}, then missing values are "dropped" before applying
#   the operator to each pair of values.  For instance, if \code{x[1,1]} is
#   a missing value, then the result of \code{x[1,1] + y[1]} equals
#   \code{y[1]}.  If also \code{y[1]} is a missing value, then the result
#   is a missing value.  This only applies to additions and multiplications.
#   For subtractions and divisions, argument \code{na.rm} is ignored.
# }
#
# @examples "../incl/x_OP_y.Rex"
#
# @author
#
# @keyword internal
#*/############################################################################
x_OP_y <- function(x, y, OP, xrows=NULL, xcols=NULL, yidxs=NULL, commute=FALSE, na.rm=FALSE) {
  commute <- as.logical(commute)
  na.rm <- as.logical(na.rm)
  op <- charmatch(OP, c("+", "-", "*", "/"), nomatch=0L)
  stopifnot(op > 0L)
  .Call("x_OP_y", x, y, dim(x), op, xrows, xcols, yidxs, commute, na.rm, TRUE, FALSE, package="matrixStats")
} # x_OP_y()


t_tx_OP_y <- function(x, y, OP, xrows=NULL, xcols=NULL, yidxs=NULL, commute=FALSE, na.rm=FALSE) {
  commute <- as.logical(commute)
  na.rm <- as.logical(na.rm)
  op <- charmatch(OP, c("+", "-", "*", "/"), nomatch=0L)
  stopifnot(op > 0L)
  .Call("x_OP_y", x, y, dim(x), op, xrows, xcols, yidxs, commute, na.rm, TRUE, TRUE, package="matrixStats")
} # t_tx_OP_y()


############################################################################
# HISTORY:
# 2014-11-24 [HB]
# o Created.
############################################################################
