############################################################################/**
# @RdocFunction allocMatrix
# @alias allocVector
# @alias allocArray
#
# @title "Allocates an empty vector, matrix or array"
#
# \usage{
#  @usage allocVector
#  @usage allocMatrix
#  @usage allocArray
# }
#
# \description{
#   @get title faster than the corresponding function in R.
# }
#
# \arguments{
#   \item{length, nrow, ncol, dim}{@numerics specifying the dimension of
#      the created @vector, @matrix or @array.}
#   \item{value}{A @numeric scalar that all elements will have as value.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector, @matrix and @array respectively of the same data
#   type as \code{value}.
# }
#
# @author "HB"
#
# \seealso{
#   See also @vector, @matrix and @array.
# }
#
# @keyword programming
# @keyword internal
#*/############################################################################
allocVector <- function(length, value=0.0, ...) {
  length <- as.integer(length)
  .Call(C_allocVector2, length, value)
} # allocVector()

allocMatrix <- function(nrow, ncol, value=0.0, ...) {
  nrow <- as.integer(nrow)
  ncol <- as.integer(ncol)
  .Call(C_allocMatrix2, nrow, ncol, value)
} # allocMatrix()

allocArray <- function(dim, value=0.0, ...) {
  dim <- as.integer(dim)
  .Call(C_allocArray2, dim, value)
} # allocArray()


############################################################################
# HISTORY:
# 2014-11-08 [HB]
# o Created.
############################################################################
