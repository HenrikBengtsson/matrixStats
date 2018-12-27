#' Calculates the number of negative, zero, positive and missing values
#'
#' Calculates the number of negative, zero, positive and missing values in a
#' \code{\link[base]{numeric}} vector.  For \code{\link[base]{double}} vectors,
#' the number of negative and positive infinite values are also counted.
#'
#'
#' @param x a \code{\link[base]{numeric}} \code{\link[base]{vector}}.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{name}}d \code{\link[base]{numeric}}
#' \code{\link[base]{vector}}.
#'
#' @author Henrik Bengtsson
#' @seealso \code{\link[base]{sign}}().
#' @keywords internal
#' @export
signTabulate <- function(x, idxs = NULL, ...) {
  res <- .Call(C_signTabulate, x, idxs)
  names(res) <- c("-1", "0", "+1", "NA", "-Inf", "+Inf")[1:length(res)]
  res
}
