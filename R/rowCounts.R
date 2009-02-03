###########################################################################/**
# @RdocFunction rowCounts
# @alias colCounts
# \alias{rowCounts,matrix-method}
# \alias{colCounts,matrix-method} 
# @alias rowAnys
# \alias{rowAnys,matrix-method}
# @alias colAnys
# \alias{colAnys,matrix-method}
# @alias rowAlls
# \alias{rowAlls,matrix-method}
# @alias colAlls
# \alias{colAlls,matrix-method}
#
# @title "Counts the number of TRUE values in each row (column) of a matrix"
#
# \description{
#   @get "title". 
# }
#
# \usage{
#   rowCounts(x, na.rm=FALSE, ...)
#   colCounts(x, na.rm=FALSE, ...)
#   rowAlls(x, na.rm=FALSE, ...)
#   colAlls(x, na.rm=FALSE, ...)
#   rowAnys(x, na.rm=FALSE, ...)
#   colAnys(x, na.rm=FALSE, ...)
# }
#
# \arguments{
#  \item{x}{A @logical NxK @matrix.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowCounts()} (\code{colCounts()}) returns an @integer @vector
#   of length N (K).
#   The other methods returns a @logical @vector of length N (K).
# }
#
# @examples "../incl/rowCounts.Rex"
#
# @author
#
# @keyword array
# @keyword logic
# @keyword iteration
# @keyword univar
#*/########################################################################### 
setGeneric("rowCounts", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowCounts")
}) 


setMethod("rowCounts", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  dim <- dim(x);
  x <- as.logical(x);
  x <- as.integer(x);
  dim(x) <- dim;
  counts <- rowSums(x, na.rm=na.rm);
  as.integer(counts);
})


setGeneric("colCounts", function(x, na.rm=FALSE, ...) {
  standardGeneric("colCounts")
}) 


setMethod("colCounts", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  dim <- dim(x);
  x <- as.logical(x);
  x <- as.integer(x);
  dim(x) <- dim;
  counts <- colSums(x, na.rm=na.rm);
  as.integer(counts);
}) # colCounts()




setGeneric("rowAlls", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowAlls")
}) 


setMethod("rowAlls", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  counts <- rowCounts(x, na.rm=na.rm, ...);
  (counts == ncol(x));
})


setGeneric("colAlls", function(x, na.rm=FALSE, ...) {
  standardGeneric("colAlls")
}) 


setMethod("colAlls", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  counts <- colCounts(x, na.rm=na.rm, ...);
  (counts == nrow(x));
})




setGeneric("rowAnys", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowAnys")
}) 


setMethod("rowAnys", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  counts <- rowCounts(x, na.rm=na.rm, ...);
  (counts > 0);
})


setGeneric("colAnys", function(x, na.rm=FALSE, ...) {
  standardGeneric("colAnys")
}) 


setMethod("colAnys", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  counts <- colCounts(x, na.rm=na.rm, ...);
  (counts > 0);
})



############################################################################
# HISTORY:
# 2008-03-25 [HB]
# o Created.
############################################################################
