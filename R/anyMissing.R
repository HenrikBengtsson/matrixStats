###########################################################################/**
# @RdocFunction anyMissing
# \alias{anyMissing,numeric-method}
# \alias{anyMissing,complex-method}
# \alias{anyMissing,logical-method}
# \alias{anyMissing,character-method}
# \alias{anyMissing,matrix-method}
# \alias{anyMissing,data.frame-method}
# \alias{anyMissing,list-method}
# \alias{anyMissing,NULL-method}
# \alias{anyMissing,raw-method}
#
# @title "Checks if there are any missing values in an object or not"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  anyMissing(x, ...)
# }
#
# \arguments{
#  \item{x}{A @vector, a @list, a @matrix, a @data.frame, or @NULL.}
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
#   which provides the same functionality as this function.
# }
#
# @keyword iteration
# @keyword logic
#*/###########################################################################
setGeneric("anyMissing", function(x, ...) {
  standardGeneric("anyMissing");
})

setMethod("anyMissing", signature(x="numeric"), function(x, ...) {
  .Call("anyMissing", x, PACKAGE="matrixStats");
})

setMethod("anyMissing", signature(x="complex"), function(x, ...) {
  .Call("anyMissing", x, PACKAGE="matrixStats");
})

setMethod("anyMissing", signature(x="logical"), function(x, ...) {
  .Call("anyMissing", x, PACKAGE="matrixStats");
})

setMethod("anyMissing", signature(x="character"), function(x, ...) {
  .Call("anyMissing", x, PACKAGE="matrixStats");
})

setMethod("anyMissing", signature(x="matrix"), function(x, ...) {
  x <- as.vector(x);
  anyMissing(x, ...);
})

setMethod("anyMissing", signature(x="data.frame"), function(x, ...) {
  for (kk in seq(along=x)) {
    if (anyMissing(x[[kk]]))
      return(TRUE);
  }
  FALSE;
})

setMethod("anyMissing", signature(x="list"), function(x, ...) {
  for (kk in seq(along=x)) {
    if (anyMissing(x[[kk]]))
      return(TRUE);
  }
  FALSE;
})

setMethod("anyMissing", signature(x="raw"), function(x, ...) {
  FALSE;
})

setMethod("anyMissing", signature(x="NULL"), function(x, ...) {
  FALSE;
})


############################################################################
# HISTORY:
# 2013-09-26
# o Added help reference to base::anyNA().
# 2013-01-13
# o Added anyMissing() for raw, which always returns FALSE.
# 2008-03-25
# o Added anyMissing() for matrices, data.frames, lists and NULL.
# o Added anyMissing() for numeric, logical, complex and character.
# o Made anyMissing() into an S4 method.
# 2007-08-14
# o Created. See also R-devel thread "hasNA()/anyNA()?" on 2007-08-13.
############################################################################
