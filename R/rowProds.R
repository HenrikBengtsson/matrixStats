#' Calculates the product for each row (column) in a matrix
#'
#' Calculates the product for each row (column) in a matrix.
#'
#' If \code{method = "expSumLog"}, then then \code{\link{product}}() function is
#' used, which calculates the product via the logarithmic transform (treating
#' negative values specially).  This improves the precision and lowers the risk
#' for numeric overflow.  If \code{method = "direct"}, the values are
#' multiplied in order, following the behavior of \code{\link[base]{prod}}().
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param method A \code{\link[base]{character}} string specifying how each
#' product is calculated.
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
                     method = c("direct", "expSumLog"), ..., useNames = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)
  
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  n <- nrow(x)
  if (n == 0L) return(double())

  method <- method[1L]
  if (method == "direct" && canUseDirectProds(x, na.rm)) {
    y <- .Call(C_directProds, x, na.rm, TRUE)
  } else {
    if (method == "expSumLog") {
      prod <- product
    } else if (method != "direct") {
      stop(sprintf("Unknown value of argument '%s': %s", "method", method))
    }
    y <- double(n)
    for (ii in seq_len(n)) {
      y[ii] <- prod(x[ii, , drop = TRUE], na.rm = na.rm)
    }
  }

  # Update names attribute?
  if (useNames) {
    names <- rownames(x)
    if (!is.null(names)) names(y) <- names
  } else {
    names(y) <- NULL
  }

  y
}


#' @rdname rowProds
#' @export
colProds <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                     method = c("direct", "expSumLog"), ..., useNames = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  n <- ncol(x)
  if (n == 0L) return(double())

  method <- method[1L]
  if (method == "direct" && canUseDirectProds(x, na.rm)) {
    y <- .Call(C_directProds, x, na.rm, FALSE)
  } else {
    if (method == "expSumLog") {
      prod <- product
    } else if (method != "direct") {
      stop(sprintf("Unknown value of argument '%s': %s", "method", method))
    }
    y <- double(n)
    for (ii in seq_len(n)) {
      y[ii] <- prod(x[, ii, drop = TRUE], na.rm = na.rm)
    }
  }

  # Update names attribute?
  if (useNames) {
    names <- colnames(x)
    if (!is.null(names)) names(y) <- names
  } else {
    names(y) <- NULL
  }

  y
}
# Keep method dispatch and base R coercion for classed and unusual arguments.
canUseDirectProds <- function(x, na.rm) {
  if (is.object(x) || !typeof(x) %in% c("double", "integer", "logical") ||
      !(identical(na.rm, TRUE) || identical(na.rm, FALSE))) return(FALSE)

  # Older R versions may not expose the long-double format. In that case
  # use base::prod() so the result always follows the running R.
  if (isTRUE(capabilities("long.double"))) {
    format <- c(.Machine$longdouble.digits, .Machine$longdouble.min.exp,
                .Machine$longdouble.max.exp)
  } else {
    format <- c(.Machine$double.digits, .Machine$double.min.exp,
                .Machine$double.max.exp)
  }
  identical(as.integer(format), .Call(C_directProdsFormat))
}
