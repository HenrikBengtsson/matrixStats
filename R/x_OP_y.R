############################################################################/**
# @RdocFunction x_OP_y
# @alias t_tx_OP_y
#
# @title "Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y'"
#
# @synopsis
#
# \description{
#   @get "title", where OP can be +, -, *, and /.
#   For + and *, na.rm=TRUE will drop missing values first.
# }
#
# \arguments{
#   \item{x}{A @numeric NxK @matrix.}
#   \item{y}{A @numeric @vector of length L.}
#   \item{FUN}{A @character specifying which operator to use.}
#   \item{na.rm}{If @TRUE, missing values are skipped, otherwise not.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric NxK @matrix.
# }
#
# @examples "../incl/x_OP_y.Rex"
#
# @author
#
# @keyword internal
#*/############################################################################
x_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  na.rm <- as.logical(na.rm)
  op <- charmatch(FUN, c("+", "-", "*", "/"), nomatch=0L)
  stopifnot(op > 0L)
  .Call("x_OP_y", x, y, dim(x), FALSE, na.rm, TRUE, op, package="matrixStats")
} # x_OP_y()


t_tx_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  na.rm <- as.logical(na.rm)
  op <- charmatch(FUN, c("+", "-", "*", "/"), nomatch=0L)
  stopifnot(op > 0L)
  .Call("x_OP_y", x, y, dim(x), TRUE, na.rm, TRUE, op, package="matrixStats")
} # t_tx_OP_y()


############################################################################
# HISTORY:
# 2014-11-24 [HB]
# o Created.
############################################################################
