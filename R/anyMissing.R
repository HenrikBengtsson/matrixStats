###########################################################################/**
# @RdocFunction anyMissing
# \alias{colAnyMissings}
# \alias{rowAnyMissings}
#
# @title "Checks if there are any missing values in an object or not"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage anyMissing
#  @usage colAnyMissings
#  @usage rowAnyMissings
# }
#
# \arguments{
#  \item{x}{A @vector, a @list, a @matrix, a @data.frame, or @NULL.}
#  \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns @TRUE if a missing value was detected, otherwise @FALSE.
# }
#
# \details{
#   The implementation of this method is optimized for both speed and memory.
#   The method will return @TRUE as soon as a missing value is detected.
# }
#
# \examples{
#  x <- rnorm(n=1000)
#  x[seq(300,length(x),by=100)] <- NA
#  stopifnot(anyMissing(x) == any(is.na(x)))
# }
#
# @author "HB"
#
# \seealso{
#   Starting with R v3.1.0, there is \code{anyNA()} in the \pkg{base},
#   which provides the same functionality as \code{anyMissing()}.
# }
#
# @keyword iteration
# @keyword logic
#*/###########################################################################
anyMissing <- function(x, idxs=NULL, ...) {
  ## All list or a data.frame?
  if (is.list(x)) {
    for (kk in seq_along(x)) {
      if (.Call(C_anyMissing, x[[kk]], idxs))
        return(TRUE)
    }
    return(FALSE)
  } else {
    ## All other data types
    .Call(C_anyMissing, x, idxs)
  }
}


colAnyMissings <- function(x, rows=NULL, cols=NULL, ...) {
  colAnys(x, rows, cols, value=NA, ...)
}

rowAnyMissings <- function(x, rows=NULL, cols=NULL, ...) {
  rowAnys(x, rows, cols, value=NA, ...)
}
