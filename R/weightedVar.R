#' Weighted variance and weighted standard deviation
#'
#' Computes a weighted variance / standard deviation of a numeric vector or
#' across rows or columns of a matrix.
#'
#' @inheritParams weightedMad
#' @inheritParams rowAlls
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.
#'
#' @section Missing values:
#' This function handles missing values consistently with
#' \code{\link{weightedMean}}().
#' More precisely, if \code{na.rm = FALSE}, then any missing values in either
#' \code{x} or \code{w} will give result \code{NA_real_}.
#' If \code{na.rm = TRUE}, then all \code{(x, w)} data points for which
#' \code{x} is missing are skipped.  Note that if both \code{x} and \code{w}
#' are missing for a data points, then it is also skipped (by the same rule).
#' However, if only \code{w} is missing, then the final results will always
#' be \code{NA_real_} regardless of \code{na.rm}.
#'
#' @author Henrik Bengtsson
#'
#' @details
#' The estimator used here is the same as the one used by the "unbiased"
#' estimator of the \bold{Hmisc} package. More specifically,
#' \code{weightedVar(x, w = w) == Hmisc::wtd.var(x, weights = w)},
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
    stop(sprintf("The number of elements in arguments '%s' and '%s' does not match: %.0f != %.0f", "w", "x", length(w), n))
  } else if (!is.null(idxs)) {
    # Apply subset on 'w'
    w <- w[idxs]
  }

  # Apply subset on 'x'
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


  # Are there any values left to calculate the weighted variance of?
  # This is consistent with how stats::var() works.
  if (n <= 1L) return(na_value)

  # Standardize weights to sum to one
  wsum <- sum(w)

  # Estimate the mean?
  if (is.null(center)) {
    center <- sum(w * x) / wsum
  } else {
    ## https://github.com/HenrikBengtsson/matrixStats/issues/187
    centerOnUse("weightedVar")
  }

  # Estimate the variance
  x <- x - center  # Residuals
  x <- x^2         # Squared residuals

  ## Correction factor
  lambda <- 1 / (wsum - 1)

  sigma2 <- lambda * sum(w * x)

  x <- w <- NULL  # Not needed anymore

  ## Undefined estimate? (adopted from Hmisc::wtd.var())
  if (wsum <= 1) {
    warning(sprintf("Produced invalid variance estimate, because the weights suggest at most one effective observation (sum(w) <= 1): %g (wsum = %g)", sigma2, wsum))
  }


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
                            na.rm = FALSE, ..., useNames = TRUE) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(cols)) w <- w[cols]
  
  # Preserve names attributes?
  if (is.na(useNames)) {
    deprecatedUseNamesNA()
  } else if (!useNames) {
    rownames(x) <- NULL
  }

  apply(x, MARGIN = 1L, FUN = weightedVar, w = w, na.rm = na.rm, ...)
}


#' @rdname weightedVar
#' @export
colWeightedVars <- function(x, w = NULL, rows = NULL, cols = NULL,
                            na.rm = FALSE, ..., useNames = TRUE) {
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on 'w'
  if (!is.null(w) && !is.null(rows)) w <- w[rows]
  
  # Preserve names attributes?
  if (is.na(useNames)) {
    deprecatedUseNamesNA()
  } else if (!useNames) {
    colnames(x) <- NULL
  }

  apply(x, MARGIN = 2L, FUN = weightedVar, w = w, na.rm = na.rm, ...)
}


#' @rdname weightedVar
#' @export
rowWeightedSds <- function(x, w = NULL, rows = NULL, cols = NULL,
                           na.rm = FALSE, ..., useNames = TRUE) {
  sqrt(rowWeightedVars(x = x, w = w, rows = rows, cols = cols,
                       na.rm = na.rm, useNames = useNames, ...))
}


#' @rdname weightedVar
#' @export
colWeightedSds <- function(x, w = NULL, rows = NULL, cols = NULL,
                           na.rm = FALSE, ..., useNames = TRUE) {
  sqrt(colWeightedVars(x = x, w = w, rows = rows, cols = cols,
                       na.rm = na.rm, useNames = useNames, ...))
}
