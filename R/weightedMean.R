#' Weighted Arithmetic Mean
#'
#' Computes the weighted sample mean of a numeric vector.
#'
#' @inheritParams rowAlls
#' @inheritParams weightedMad
#' @inheritParams mean2
#'
#' @param w a vector of weights the same length as \code{x} giving the weights
#' to use for each element of \code{x}. Negative weights are treated as zero
#' weights. Default value is equal weight to all values.
#' If a missing-value weight exists, the result is always a missing value.
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.  If \code{x} is of
#' zero length, then \code{NaN} is returned, which is consistent with
#' \code{\link[base]{mean}}().
#'
#' @example incl/weightedMean.R
#'
#' @section Missing values:
#' This function handles missing values consistently with
#' \code{\link[stats]{weighted.mean}}.  More precisely, if \code{na.rm = FALSE},
#' then any missing values in either \code{x} or \code{w} will give result
#' \code{NA_real_}.  If \code{na.rm = TRUE}, then all \code{(x, w)} data points
#' for which \code{x} is missing are skipped.  Note that if both \code{x} and
#' \code{w} are missing for a data points, then it is also skipped (by the same
#' rule).  However, if only \code{w} is missing, then the final results will
#' always be \code{NA_real_} regardless of \code{na.rm}.
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link[base]{mean}}() and \code{\link[stats]{weighted.mean}}.
#' @keywords univar robust
#' @export
weightedMean <- function(x, w = NULL, idxs = NULL, na.rm = FALSE,
                         refine = FALSE, ...) {
  # Argument 'refine':
  refine <- as.logical(refine)

  # Argument 'w':
  if (is.null(w)) {
    ## We won't fall back to stats::mean(), because it's has some overhead
    ## and it doesn't support refine = FALSE.
    w <- rep(1, times = length(x))
  } else {
    w <- as.numeric(w)
  }

  .Call(C_weightedMean, x, w, idxs, na.rm, refine)
}
