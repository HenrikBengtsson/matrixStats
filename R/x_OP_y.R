#' Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y)'
#'
#' Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y)', where OP can be
#' +, -, *, and /.  For + and *, na.rm = TRUE will drop missing values first.
#'
#'
#' @param x A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' NxK \code{\link[base]{matrix}}.
#'
#' @param y A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of length L.
#'
#' @param OP A \code{\link[base]{character}} specifying which operator to use.
#'
#' @param xrows,xcols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over 'x'. If \code{\link[base]{NULL}}, no
#' subsetting is done.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over 'y'. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param commute If \code{\link[base:logical]{TRUE}}, 'y OP x' ('t(y OP
#' t(x))') is calculated, otherwise 'x OP y' ('t(t(x) OP y)').
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' ignored, otherwise not.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} NxK
#' \code{\link[base]{matrix}}.
#'
#' @example incl/x_OP_y.R
#'
#' @section Missing values: If \code{na.rm = TRUE}, then missing values are
#' "dropped" before applying the operator to each pair of values.  For
#' instance, if \code{x[1, 1]} is a missing value, then the result of
#' \code{x[1, 1] + y[1]} equals \code{y[1]}.  If also \code{y[1]} is a missing
#' value, then the result is a missing value.  This only applies to additions
#' and multiplications.  For subtractions and divisions, argument \code{na.rm}
#' is ignored.
#'
#' @author Henrik Bengtsson
#'
#' @keywords internal
#' @export
x_OP_y <- function(x, y, OP, xrows = NULL, xcols = NULL, yidxs = NULL,
                   commute = FALSE, na.rm = FALSE) {
  commute <- as.logical(commute)
  na.rm <- as.logical(na.rm)
  if (is.character(OP)) {
    op <- charmatch(OP, c("+", "-", "*", "/"), nomatch = 0L)
    if (op == 0L) stop("Unknown value on argument 'OP': ", sQuote(OP))
  } else {
    op <- as.integer(OP)
  }
  .Call(C_x_OP_y, x, y, dim(x), op, xrows, xcols, yidxs,
        commute, na.rm, TRUE, FALSE)
}


#' @rdname x_OP_y
#' @export
t_tx_OP_y <- function(x, y, OP, xrows = NULL, xcols = NULL, yidxs = NULL,
                      commute = FALSE, na.rm = FALSE) {
  commute <- as.logical(commute)
  na.rm <- as.logical(na.rm)
  if (is.character(OP)) {
    op <- charmatch(OP, c("+", "-", "*", "/"), nomatch = 0L)
    if (op == 0L) stop("Unknown value on argument 'OP': ", sQuote(OP))
  } else {
    op <- as.integer(OP)
  }
  .Call(C_x_OP_y, x, y, dim(x), op, xrows, xcols, yidxs,
        commute, na.rm, TRUE, TRUE)
}
