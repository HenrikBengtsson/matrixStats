#' Estimates of the interquartile range for each row (column) in a matrix
#'
#' Estimates of the interquartile range for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param ... Additional arguments passed to \code{\link{rowQuantiles}}()
#' (\code{colQuantiles()}).
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @section Missing values: Contrary to \code{\link[stats]{IQR}}, which gives
#' an error if there are missing values and \code{na.rm = FALSE}, \code{iqr()}
#' and its corresponding row and column-specific functions return
#' \code{\link[base]{NA}}_real_.
#'
#' @example incl/rowIQRs.R
#'
#' @author Henrik Bengtsson
#' @seealso See \code{\link[stats]{IQR}}.  See \code{\link{rowSds}}().
#' @keywords array iteration robust univar
#'
#' @importFrom stats quantile
#' @export
rowIQRs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ...) {
  Q <- rowQuantiles(x, rows = rows, cols = cols,
                    probs = c(0.25, 0.75), na.rm = na.rm, drop = FALSE, ...)
  ans <- Q[, 2L, drop = TRUE] - Q[, 1L, drop = TRUE]

  # Remove attributes
  attributes(ans) <- NULL
  ans
}


#' @rdname rowIQRs
#' @export
colIQRs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ...) {
  Q <- colQuantiles(x, rows = rows, cols = cols,
                    probs = c(0.25, 0.75), na.rm = na.rm, drop = FALSE, ...)
  ans <- Q[, 2L, drop = TRUE] - Q[, 1L, drop = TRUE]

  # Remove attributes
  attributes(ans) <- NULL
  ans
}


#' @rdname rowIQRs
#' @export
iqr <- function(x, idxs = NULL, na.rm = FALSE, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if (na.rm) {
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

  q <- quantile(x, probs = c(0.25, 0.75), names = FALSE, na.rm = FALSE, ...)

  q[2L] - q[1L]
}
