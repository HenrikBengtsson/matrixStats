#' Calculates the weighted medians for each row (column) in a matrix
#'
#' Calculates the weighted medians for each row (column) in a matrix.
#'
#' The implementations of these methods are optimized for both speed and
#' memory.  If no weights are given, the corresponding
#' \code{\link{rowMedians}}()/\code{colMedians()} is used.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#' @inheritParams rowWeightedMeans
#'
#' @param ... Additional arguments passed to \code{\link{weightedMedian}}().
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @example incl/rowWeightedMedians.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso Internally, \code{\link{weightedMedian}}() is used.
#' See \code{\link{rowMedians}}() and \code{colMedians()} for non-weighted
#' medians.
#' 
#' @keywords array iteration robust univar
#' @export
rowWeightedMedians <- function(x, w = NULL, rows = NULL, cols = NULL,
                               na.rm = FALSE, ..., useNames = TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- ncol(x)
    if (length(w) != n) {
      stop(sprintf("The length of argument '%s' does not match the number of %s in '%s': %d != %d", "w", "columns", "x", length(w), n))  #nolint
    }
    if (!is.numeric(w)) {
      stop(sprintf("Argument '%s' is not numeric: %s", "w", mode(w)))
    }
    if (any(!is.na(w) & w < 0)) {
      stop(sprintf("Argument '%s' must not contain negative values", "w"))
    }
  }

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(cols)) w <- w[cols]


  if (has_weights) {
    # Allocate results
    m <- nrow(x)
    if (m == 0L)
      return(double(0L))

    res <- apply(x, MARGIN = 1L, FUN = function(x) {
      weightedMedian(x, w = w, na.rm = na.rm, ...)
    })
    
    # Preserve names attribute?
    if (!useNames) {
      names(res) <- NULL
    }

    w <- NULL  # Not needed anymore
  } else {
    res <- rowMedians(x, na.rm = na.rm, useNames = useNames)
  }

  res
}


#' @rdname rowWeightedMedians
#' @export
colWeightedMedians <- function(x, w = NULL, rows = NULL, cols = NULL,
                               na.rm = FALSE, ..., useNames = TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- nrow(x)
    if (length(w) != n) {
      stop(sprintf("The length of argument '%s' does not match the number of %s in '%s': %d != %d", "w", "rows", "x", length(w), n))  #nolint
    }
    if (!is.numeric(w)) {
      stop(sprintf("Argument '%s' is not numeric: %s", "w", mode(w)))
    }
    if (any(!is.na(w) & w < 0)) {
      stop(sprintf("Argument '%s' must not contain negative values", "w"))
    }
  }

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  if (has_weights) {
    # Allocate results
    m <- ncol(x)
    if (m == 0L)
      return(double(0L))

    res <- apply(x, MARGIN = 2L, FUN = function(x) {
      weightedMedian(x, w = w, na.rm = na.rm, ...)
    })
    
    # Preserve names attribute?
    if (!useNames) {
      names(res) <- NULL
    }

    w <- NULL  # Not needed anymore
  } else {
    res <- colMedians(x, na.rm = na.rm, useNames = useNames)
  }

  res
}
