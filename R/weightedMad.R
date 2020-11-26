#' Weighted Median Absolute Deviation (MAD)
#'
#' Computes a weighted MAD of a numeric vector.
#'
#'
#' @param x a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing
#' the values whose weighted MAD is to be computed.
#'
#' @param w a vector of weights the same length as \code{x} giving the weights
#' to use for each element of \code{x}. Negative weights are treated as zero
#' weights. Default value is equal weight to all values.
#'
#' @param idxs,rows,cols A \code{\link[base]{vector}} indicating subset of
#' elements (or rows and/or columns) to operate over. If
#' \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm a logical value indicating whether \code{\link[base]{NA}}
#' values in \code{x} should be stripped before the computation proceeds, or
#' not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s
#' is done.  Default value is \code{\link[base]{NA}} (for efficiency).
#'
#' @param constant A \code{\link[base]{numeric}} scale factor, cf.
#' \code{\link[stats]{mad}}.
#'
#' @param center Optional \code{\link[base]{numeric}} scalar specifying the
#' center location of the data.  If \code{\link[base]{NULL}}, it is estimated
#' from data.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.
#'
#' @example incl/weightedMad.R
#'
#' @section Missing values: Missing values are dropped at the very beginning,
#' if argument \code{na.rm} is \code{\link[base:logical]{TRUE}}, otherwise not.
#'
#' @author Henrik Bengtsson
#'
#' @seealso For the non-weighted MAD, see \code{\link[stats]{mad}}.  Internally
#' \code{\link{weightedMedian}}() is used to calculate the weighted median.
#'
#' @importFrom stats mad median
#' @keywords univar robust
#' @export
weightedMad <- function(x, w = NULL, idxs = NULL, na.rm = FALSE,
                        constant = 1.4826, center = NULL, ...) {
  # No weights? Fall back to non-weighted method.
  if (is.null(w)) {
    if (is.null(center)) center <- median(x, na.rm = na.rm)
    return(mad(x, center = center, constant = constant, na.rm = na.rm, ...))
  }

  # Argument 'x':
  n <- length(x)

  # Argument 'w':
  if (length(w) != n) {
    stop("The number of elements in arguments 'w' and 'x' does not match: ",
         length(w), " != ", n)
  } else if (!is.null(idxs)) {
    # Apply subset on w
    w <- w[idxs]
  }

  # Argument 'constant':
  if (length(constant) != 1L || !is.numeric(constant))
    stop("Argument 'constant' must be a numeric scalar")

  # Argument 'center':
  if (!is.null(center) && length(center) != 1L)
    stop("Argument 'center' must be a scalar or NULL")


  # Apply subset on x
  if (!is.null(idxs)) {
    x <- x[idxs]
    n <- length(x)
  }

  na_value <- NA
  storage.mode(na_value) <- storage.mode(x)


  # Remove values with zero (and negative) weight. This will:
  #  1) take care of the case when all weights are zero,
  #  2) it will most likely speed up the sorting.
  tmp <- (is.na(w) | w > 0)
  if (!all(tmp)) {
    x <- .subset(x, tmp)
    w <- .subset(w, tmp)
    n <- length(x)
  }
  tmp <- NULL  # Not needed anymore

  # Drop missing values?
  if (na.rm) {
    keep <- which(!is.na(x))
    x <- .subset(x, keep)
    w <- .subset(w, keep)
    n <- length(x)
    keep <- NULL  # Not needed anymore
  } else if (anyMissing(x)) {
    return(na_value)
  }

  # Missing values in 'w'?
  if (anyMissing(w)) return(na_value)

  # Are any weights Inf? Then treat them with equal weight and all others
  # with weight zero.
  tmp <- is.infinite(w)
  if (any(tmp)) {
    keep <- tmp
    x <- .subset(x, keep)
    n <- length(x)
    w <- rep(1, times = n)
    keep <- NULL  # Not needed anymore
  }
  tmp <- NULL  # Not needed anymore


  # Are there any values left to calculate the weighted median of?
  # This is consistent with how stats::mad() works.
  if (n == 0L) {
    return(na_value)
  } else if (n == 1L) {
    zero_value <- 0
    storage.mode(zero_value) <- storage.mode(x)
    return(zero_value)
  }

  # Estimate the mean?
  if (is.null(center)) {
    center <- weightedMedian(x, w = w, na.rm = NA)
  } else {
    ## https://github.com/HenrikBengtsson/matrixStats/issues/187
    centerOnUse("weightedMad")
  }

  # Estimate the standard deviation
  x <- abs(x - center)
  sigma <- weightedMedian(x, w = w, na.rm = NA)
  x <- w <- NULL  # Not needed anymore

  # Rescale for normal distributions
  sigma <- constant * sigma

  sigma
}


#' @rdname weightedMad
#' @export
rowWeightedMads <- function(x, w = NULL, rows = NULL, cols = NULL,
                            na.rm = FALSE,
                            constant = 1.4826, center = NULL, ...) {
  # Argument 'constant':
  if (length(constant) != 1L || !is.numeric(constant))
    stop("Argument 'constant' must be a numeric scalar")

  # Apply subset on 'center'?
  if (!is.null(center)) {
    if (length(center) != nrow(x)) {
      ## Scalar 'center'?
      if (length(center) == 1L && is.null(rows)) {
        validateScalarCenter(center, nrow(x), "rows")
        center <- rep(center, times = nrow(x))
      } else {
        stop("Argument 'center' should be of the same length as number of rows of 'x': ", length(center), " != ", nrow(x))
      }
    }
    if (!is.null(rows)) center <- center[rows]
  }
  
  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(cols)) w <- w[cols]

  y <- numeric(nrow(x))
  for (kk in seq_along(y)) {
    y[kk] <- weightedMad(x[kk, , drop = TRUE], w = w, na.rm = na.rm,
                          constant = constant, center = center[kk], ...)
  }

  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names(y) <- rownames(x)

  y
}


#' @rdname weightedMad
#' @export
colWeightedMads <- function(x, w = NULL, rows = NULL, cols = NULL,
                            na.rm = FALSE,
                            constant = 1.4826, center = NULL, ...) {
  # Argument 'constant':
  if (length(constant) != 1L || !is.numeric(constant))
    stop("Argument 'constant' must be a numeric scalar")

  # Argument 'center':
  # Apply subset on 'center'?
  if (!is.null(center)) {
    if (length(center) != ncol(x)) {
      ## Scalar 'center'?
      if (length(center) == 1L && is.null(cols)) {
        validateScalarCenter(center, ncol(x), "cols")
        center <- rep(center, times = ncol(x))
      } else {
        stop("Argument 'center' should be of the same length as number of columns of 'x': ", length(center), " != ", ncol(x))
      }
    }
    if (!is.null(cols)) center <- center[cols]
  }

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  y <- numeric(ncol(x))
  for (kk in seq_along(y)) {
    y[kk] <- weightedMad(x[, kk, drop = TRUE], w = w, na.rm = na.rm,
                          constant = constant, center = center[kk], ...)
  }

  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names(y) <- colnames(x)
  
  y
}
