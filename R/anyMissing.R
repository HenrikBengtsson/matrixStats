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
#  anyMissing(x, ...)
#  colAnyMissings(x, ...)
#  rowAnyMissings(x, ...)
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
anyMissing <- function(x, ...) {
  ## All list or a data.frame?
  if (is.list(x)) {
    for (kk in seq(along=x)) {
      if (.Call("anyMissing", x[[kk]], PACKAGE="matrixStats"))
        return(TRUE)
    }
  } else {
    ## All other data types
    .Call("anyMissing", x, PACKAGE="matrixStats")
  }
}


colAnyMissings <- function(x, ...) {
  colAnys(x, value=NA, ...)
}

rowAnyMissings <- function(x, ...) {
  rowAnys(x, value=NA, ...)
}


############################################################################
# HISTORY:
# 2015-02-10
# o CLEANUP: anyMissing() is no longer an S4 generic, cf. base::anyNA().
# 2015-01-20
# o CLEANUP: In the effort of migrating anyMissing() into a plain R
#   function, specific anyMissing() implementations for data.frame:s and
#   and list:s were dropped and is now handled by anyMissing() for "ANY".
# 2014-12-08
# o Added (col|row)AnyMissings().
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