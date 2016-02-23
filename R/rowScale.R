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
#
#*/###########################################################################
rowScale = function(x, 
                    center = TRUE, 
                    scale = TRUE,
                    add_attr = TRUE, 
                    rows = NULL, 
                    cols = NULL) {
  
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
  cm = rowMeans(x, na.rm = TRUE)
  ################
  # Get the row sd
  ################      
  if (scale) {
    csd = rowSds(x, center = cm)
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
                    cols = NULL) {
  
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
  cm = colMeans(x, na.rm = TRUE)
  ################
  # Get the column sd
  ################      
  if (scale) {
    csd = colSds(x, center = cm)
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
