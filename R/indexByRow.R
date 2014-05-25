###########################################################################/**
# @RdocFunction indexByRow
# \alias{indexByRow.matrix}
#
# @title "Translates matrix indices by rows into indices by columns"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage indexByRow,matrix
# }
#
# \arguments{
#  \item{x}{A @matrix.}
#  \item{idxs}{A @vector of indices.  If @NULL, all indices are returned.}
#  \item{...}{Not use.}
# }
#
# \value{
#   Returns an @integer @vector of indices.
# }
#
# \examples{
#  x <- matrix(NA, nrow=5, ncol=4)
#  y <- t(x)
#  idxs <- seq(along=x)
#
#  # Assign by columns
#  x[idxs] <- idxs
#  print(x)
#
#  # Assign by rows
#  y[indexByRow(y, idxs)] <- idxs
#  print(y)
#
#  stopifnot(x == t(y))
# }
#
# @author "HB"
#
# @keyword iteration
# @keyword logic
#*/###########################################################################
setMethodS3("indexByRow", "matrix", function(x, idxs=NULL, ...) {
  xT <- matrix(seq(along=x), nrow=ncol(x), ncol=nrow(x), byrow=TRUE);
  if (!is.null(idxs))
    xT <- xT[idxs];
  xT <- as.vector(xT);
  xT;
})

##############################################################################
# HISTORY:
# 2014-05-23
# o CLEANUP: Made indexByRow() an S3 rather than S4 generic.
# 2007-04-12
# o Created.
##############################################################################
