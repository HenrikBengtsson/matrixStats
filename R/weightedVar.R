#' Weighted variance and weighted standard deviation
#'
#' Computes a weighted variance / standard deviation of a numeric vector or
#' across rows or columns of a matrix.
#'
#'
#' @param x a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing
#' the values whose weighted variance is to be computed.
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
#' @param center Optional \code{\link[base]{numeric}} scalar specifying the
#' center location of the data.  If \code{\link[base]{NULL}}, it is estimated
#' from data.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.
#'
#' @section Missing values: Missing values are dropped at the very beginning,
#' if argument \code{na.rm} is \code{\link[base:logical]{TRUE}}, otherwise not.
#'
#' @author Henrik Bengtsson
#'
#' @seealso For the non-weighted variance, see \code{\link[stats]{var}}.
#'
#' @keywords univar robust
#' @export
weightedVar <- function(x, w = NULL, idxs = NULL, na.rm = FALSE,
                        center = NULL, ...) {
  # Argument 'x':
  n <- length(x)

  # Argument 'w':
  if (is.null(w)) {
    w <- rep(1, times = n)
  } else if (length(w) != n) {
    stop("The number of elements in arguments 'w' and 'x' does not match: ",
         length(w), " != ", n)
  } else if (!is.null(idxs)) {
    # Apply subset on 'w'
    w <- w[idxs]
  }

  # Apply subset on 'x'
  if (!is.null(idxs)) {
    x <- x[idxs]
    n <- length(x)
  }

  # Argument 'na.rm':

  # Argument 'method':
  method <- list(...)$method

  ## Backward compatible but incorrect estimate?
  ## See https://github.com/HenrikBengtsson/matrixStats/issues/72
  use_0.14.2 <- (identical(method, "0.14.2"))
  if (use_0.14.2) {
    .Deprecated(msg = "weightedVar(..., method = \"0.14.2\") should not be used since it uses an incorrect degree-of-freedom term. It was supported only for very rare backward compatible reasons. It will be defunct in a future version of matrixStats.")  #nolint
  }


  na_value <- NA
  storage.mode(na_value) <- storage.mode(x)


  # Remove values with zero (and negative) weight. This will:
  #  1) take care of the case when all weights are zero,
  #  2) it will most likely speed up the sorting.
  tmp <- (w > 0)
  if (!all(tmp)) {
    x <- .subset(x, tmp)
    w <- .subset(w, tmp)
    n <- length(x)
  }
  tmp <- NULL  # Not needed anymore

  # Drop missing values?
  if (na.rm) {
    keep <- which(!is.na(x) & !is.na(w))
    x <- .subset(x, keep)
    w <- .subset(w, keep)
    n <- length(x)
    keep <- NULL  # Not needed anymore
  } else if (anyMissing(x)) {
    return(na_value)
  }

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


  # Are there any values left to calculate the weighted variance of?
  # This is consistent with how stats::var() works.
  if (n <= 1L) return(na_value)

  # Standardize weights to sum to one
  wsum <- sum(w)
  w <- w / wsum

  # Estimate the mean?
  if (is.null(center)) {
    center <- sum(w * x)
  }

  # Estimate the variance
  x <- x - center  # Residuals
  x <- x^2         # Squared residuals

  ## Correction factor
  lambda <- wsum / (wsum - 1)
  if (use_0.14.2) lambda <- n / (n - 1L)

  sigma2 <- lambda * sum(w * x)

  x <- w <- NULL  # Not needed anymore

  sigma2
}


#' @rdname weightedVar
#' @export
weightedSd <- function(...) {
  sqrt(weightedVar(...))
}


#' @rdname weightedVar
#' @export
rowWeightedVars <- function(x, w = NULL, rows = NULL, cols = NULL,
                            na.rm = FALSE, ...) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(cols)) w <- w[cols]

  apply(x, MARGIN = 1L, FUN = weightedVar, w = w, na.rm = na.rm, ...)
}


#' @rdname weightedVar
#' @export
colWeightedVars <- function(x, w = NULL, rows = NULL, cols = NULL,
                            na.rm = FALSE, ...) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  apply(x, MARGIN = 2L, FUN = weightedVar, w = w, na.rm = na.rm, ...)
}


#' @rdname weightedVar
#' @export
rowWeightedSds <- function(x, w = NULL, rows = NULL, cols = NULL,
                           na.rm = FALSE, ...) {
  sqrt(rowWeightedVars(x = x, w = w, rows = rows, cols = cols,
                       na.rm = na.rm, ...))
}


#' @rdname weightedVar
#' @export
colWeightedSds <- function(x, w = NULL, rows = NULL, cols = NULL,
                           na.rm = FALSE, ...) {
  sqrt(colWeightedVars(x = x, w = w, rows = rows, cols = cols,
                       na.rm = na.rm, ...))
}
