#' Allocates an empty vector, matrix or array
#'
#' Allocates an empty vector, matrix or array faster than the corresponding
#' function in R.
#'
#'
#' @param value A \code{\link[base]{numeric}} scalar that all elements will
#' have as value.
#'
#' @param ... Not used.
#'
#' @param length,nrow,ncol,dim \code{\link[base]{numeric}}s specifying the
#' dimension of the created \code{\link[base]{vector}},
#' \code{\link[base]{matrix}} or \code{\link[base]{array}}.
#'
#' @return Returns a \code{\link[base]{vector}}, \code{\link[base]{matrix}} and
#' \code{\link[base]{array}} respectively of the same data type as
#' \code{value}.
#'
#' @author Henrik Bengtsson
#'
#' @seealso See also \code{\link[base]{vector}}, \code{\link[base]{matrix}} and
#' \code{\link[base]{array}}.
#'
#' @keywords internal programming
#'
#' @export
allocMatrix <- function(nrow, ncol, value = 0.0, ...) {
  nrow <- as.integer(nrow)
  ncol <- as.integer(ncol)
  .Call(C_allocMatrix2, nrow, ncol, value)
}

#' @rdname allocMatrix
#' @export
allocVector <- function(length, value = 0.0, ...) {
  length <- as.integer(length)
  .Call(C_allocVector2, length, value)
}

#' @rdname allocMatrix
#' @export
allocArray <- function(dim, value = 0.0, ...) {
  dim <- as.integer(dim)
  .Call(C_allocArray2, dim, value)
}
