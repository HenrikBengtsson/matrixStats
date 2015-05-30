###########################################################################/**
# @RdocFunction rowIQRs
# @alias colIQRs
# @alias iqr
#
# @title "Estimates of the interquartile range for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowIQRs
#  @usage colIQRs
#  @usage iqr
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, missing values are dropped first, otherwise not.}
#  \item{...}{Additional arguments passed to @see "rowQuantiles"
#     (\code{colQuantiles()}).}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \section{Missing values}{
#  Contrary to @see "stats::IQR", which gives an error if there are missing
#  values and \code{na.rm=FALSE}, \code{iqr()} and its corresponding row and
#  column-specific functions return @NA_real_.
# }
#
# @examples "../incl/rowIQRs.Rex"
#
# @author "HB"
#
# \seealso{
#   See @see "stats::IQR".
#   See @see "rowSds".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowIQRs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  Q <- rowQuantiles(x, rows=rows, cols=cols, probs=c(0.25, 0.75), na.rm=na.rm, drop=FALSE, ...)
  ans <- Q[,2L,drop=TRUE] - Q[,1L,drop=TRUE]

  # Remove attributes
  attributes(ans) <- NULL
  ans
}


colIQRs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, ...) {
  Q <- colQuantiles(x, rows=rows, cols=cols, probs=c(0.25, 0.75), na.rm=na.rm, drop=FALSE, ...)
  ans <- Q[,2L,drop=TRUE] - Q[,1L,drop=TRUE]

  # Remove attributes
  attributes(ans) <- NULL
  ans
}

iqr <- function(x, idxs=NULL, na.rm=FALSE, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if(na.rm) {
    x <- x[!is.na(x)]
  } else if (anyMissing(x)) {
    return(NA_real_)
  }

  # At this point, there should be no missing values

  # Nothing to do?
  n <- length(x)
  if (n == 0L) {
    return(NA_real_)
  } else if (n == 1L) {
    return(0)
  }

  q <- quantile(x, probs=c(0.25, 0.75), names=FALSE, na.rm=FALSE, ...)

  q[2L] - q[1L]
}


############################################################################
# HISTORY:
# 2015-05-30 [DJ]
# o Supported subsetted computation.
# 2015-01-16
# o Now iqr(..., na.rm=FALSE) returns NA_real_ if there are missing values.
# 2015-01-11
# o Now iqr() no longer returns a named value.
# 2014-12-19
# o Added iqr().
# 2011-11-25
# o Added help and example to rowIQRs() and colIQRs().
# o BUG FIX: rowIQRs() and colIQRs() would return the 25% and the 75%
#   quantiles, not the difference between them.  Thanks Pierre Neuvial
#   at CNRS, Evry, France for the report.
# 2008-03-26 [HB]
# o Created.
############################################################################
