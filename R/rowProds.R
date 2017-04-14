#' Calculates the product for each row (column) in a matrix
#'
#' Calculates the product for each row (column) in a matrix.
#'
#' If \code{method = "expSumLog"}, then then \code{\link{product}}() function is
#' used, which calculates the produce via the logarithmic transform (treating
#' negative values specially).  This improves the precision and lowers the risk
#' for numeric overflow.  If \code{method = "direct"}, the direct product is
#' calculated via the \code{\link[base]{prod}}() function.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param idxs,rows,cols A \code{\link[base]{vector}} indicating subset of
#' elements (or rows and/or columns) to operate over. If
#' \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' ignored, otherwise not.
#'
#' @param method A \code{\link[base]{character}} string specifying how each
#' product is calculated.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @section Missing values:
#' Note, if \code{method = "expSumLog"}, \code{na.rm = FALSE}, and \code{x}
#' contains missing values (\code{\link[base]{NA}} or
#' \code{\link[base:is.finite]{NaN}}), then the calculated value is also
#' missing value.  Note that it depends on platform whether
#' \code{\link[base:is.finite]{NaN}} or \code{\link[base]{NA}} is returned
#' when an \code{\link[base:is.finite]{NaN}} exists, cf.
#' \code{\link[base]{is.nan}}().
#'
#' @author Henrik Bengtsson
#'
#' @keywords array iteration robust univar
#' @export
rowProds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                     method = c("direct", "expSumLog"), ...) {
  # Argument 'x':
  if (!is.matrix(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Preallocate result (zero:ed by default)
  n <- nrow(x)
  y <- double(length = n)

  # Nothing todo?
  if (n == 0L) return(y)

  # Argument 'method':
  method <- method[1L]

  # How to calculate product?
  if (method == "expSumLog") {
    prod <- product
  } else if (method == "direct") {
  } else {
    stop("Unknown value of argument 'method': ", method)
  }

  for (ii in seq_len(n)) {
    y[ii] <- prod(x[ii, , drop = TRUE], na.rm = na.rm)
  }

  y
}


#' @rdname rowProds
#' @export
colProds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                     method = c("direct", "expSumLog"), ...) {
  # Argument 'x':
  if (!is.matrix(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Preallocate result (zero:ed by default)
  n <- ncol(x)
  y <- double(length = n)

  # Nothing todo?
  if (n == 0L) return(y)

  # Argument 'method':
  method <- method[1L]

  # How to calculate product?
  if (method == "expSumLog") {
    prod <- product
  } else if (method == "direct") {
  } else {
    stop("Unknown value of argument 'method': ", method)
  }

  for (ii in seq_len(n)) {
    y[ii] <- prod(x[, ii, drop = TRUE], na.rm = na.rm)
  }

  y
}
