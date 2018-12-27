#' Calculates the weighted medians for each row (column) in a matrix
#'
#' Calculates the weighted medians for each row (column) in a matrix.
#'
#' The implementations of these methods are optimized for both speed and
#' memory.  If no weights are given, the corresponding
#' \code{\link{rowMedians}}()/\code{colMedians()} is used.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param w A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' K (N).
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' excluded from the calculation, otherwise not.
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
                               na.rm = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- ncol(x)
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of column in 'x': ", length(w), " != ", n)  #nolint
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w))
    }
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.")
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

    w <- NULL  # Not needed anymore
  } else {
    res <- rowMedians(x, na.rm = na.rm)
  }

  res
}


#' @rdname rowWeightedMedians
#' @export
colWeightedMedians <- function(x, w = NULL, rows = NULL, cols = NULL,
                               na.rm = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- nrow(x)
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of rows in 'x': ", length(w), " != ", n)  #nolint
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w))
    }
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.")
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

    w <- NULL  # Not needed anymore
  } else {
    res <- colMedians(x, na.rm = na.rm)
  }

  res
}
