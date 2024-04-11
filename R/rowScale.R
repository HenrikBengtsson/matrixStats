###########################################################################/**
# @RdocFunction colScale
# @alias colScale
# @alias rowScale
# \alias{rowScale,matrix-method}
# \alias{colScale,matrix-method}
#
# @title "Scaling each row/column of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowScale
#  @usage rowScale
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{center}{Should the matrix be centered by the mean}
#  \item{scale}{Should the matrix be scaled by the standard deviation}
#  \item{add_attr}{Should the center/scale attributes be added to the matrix}
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm} Remove NAs before getting the mean/sd.
#  \item{...} Arguments passed to \code{\link{rowSds}} or \code{\link{colSds}}
# }
#
# \value{
#   Returns a @numeric @matrix of size NxK.
# }
#
# @author "JM"
#
# \seealso{
#   See \code{rowMeans()} and \code{rowSds()}..
# }
# \note{
#  The \code{\link[base]{scale}} function will have different behavior 
# if \code{center = FALSE}
# and \code{scale = TRUE} compared to \code{colScale} as \code{colScale} always
# scales by the standard deviation, and \code{\link[base]{scale}} does not depending
# on the options.
# }
#
#*/###########################################################################
rowScale = function(x, 
                    center = TRUE, 
                    scale = TRUE,
                    add_attr = TRUE, 
                    rows = NULL, 
                    cols = NULL,
                    na.rm = TRUE, ...) {
  
  if (!is.null(rows) && !is.null(cols)) {
    x <- x[rows, cols, drop = FALSE]
  } else if (!is.null(rows)) {
    x <- x[rows, , drop = FALSE]
  } else if (!is.null(cols)) {
    x <- x[, cols, drop = FALSE]
  }
  
  ################
  # Get the row means
  ################  
  cm = rowMeans(x, na.rm = na.rm)
  ################
  # Get the row sd
  ################      
  if (scale) {
    csd = rowSds(x, center = cm, na.rm = na.rm, ...)
  } else {
    # just divide by 1 if not
    csd = rep(1, length = length(cm))
  }
  if (!center) {
    # just subtract 0
    cm = rep(0, length = length(cm))
  }
  x = (x - cm) / csd 
  if (add_attr) {
    if (center) {
      attr(x, "scaled:center") <- cm
    }
    if (scale) {
      attr(x, "scaled:scale") <- csd
    } 
  }   
  return(x)
}

colScale = function(x, 
                    center = TRUE, 
                    scale = TRUE,
                    add_attr = TRUE, 
                    rows = NULL, 
                    cols = NULL,
                    na.rm = TRUE, ...) {
  
  if (!is.null(rows) && !is.null(cols)) {
    x <- x[rows, cols, drop = FALSE]
  } else if (!is.null(rows)) {
    x <- x[rows, , drop = FALSE]
  } else if (!is.null(cols)) {
    x <- x[, cols, drop = FALSE]
  }
  
  ################
  # Get the column means
  ################  
  cm = colMeans(x, na.rm = na.rm)
  ################
  # Get the column sd
  ################      
  if (scale) {
    csd = colSds(x, center = cm, na.rm = na.rm, ...)
  } else {
    # just divide by 1 if not
    csd = rep(1, length = length(cm))
  }
  if (!center) {
    # just subtract 0
    cm = rep(0, length = length(cm))
  }
  x = t( (t(x) - cm) / csd )
  if (add_attr) {
    if (center) {
      attr(x, "scaled:center") <- cm
    }
    if (scale) {
      attr(x, "scaled:scale") <- csd
    } 
  }   
  return(x)
}
