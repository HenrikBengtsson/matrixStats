#' Fast sum over subset of vector elements
#'
#' Computes the sum of all or a subset of values.
#'
#' \code{sum2(x, idxs)} gives equivalent results as \code{sum(x[idxs])}, but
#' is faster and more memory efficient since it avoids the actual subsetting
#' which requires copying of elements and garbage collection thereof.
#'
#' Furthermore, \code{sum2(x, mode = "double")} is equivalent to
#' \code{sum(as.numeric(x))} and may therefore be used to avoid integer
#' overflow, but at the same time is much more memory efficient that
#' the regular \code{sum()} function when \code{x} is an
#' \code{\link[base]{integer}} vector.
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' skipped, otherwise not.
#'
#' @param mode A \code{\link[base]{character}} string specifying the data type
#' of the return value.  Default is to use the same mode as argument \code{x}.
#'
#' @param ... Not used.
#'
#' @return Returns a scalar of the data type specified by argument \code{mode}.
#' If \code{mode = "integer"}, then integer overflow occurs if the \emph{sum}
#' is outside the range of defined integer values.
#' Note that the intermediate sum (\code{sum(x[1:n])}) is internally
#' represented as a floating point value and will therefor never be outside of
#' the range.
#'
#' @example incl/sum2.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link[base]{sum}}().
#' To efficiently average over a subset, see \code{\link{mean2}}().
#'
#' @keywords univar internal
#' @export
sum2 <- function(x, idxs = NULL, na.rm = FALSE, mode = typeof(x), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x))
  }

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm))
  }

  # Argument 'mode':
  mode <- mode[1L]
  mode_idx <- charmatch(mode, c("integer", "double"), nomatch = 0L)
  if (mode_idx == 0L) {
    stop("Unknown value of argument 'mode': ", mode)
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Summing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  .Call(C_sum2, x, idxs, na.rm, mode_idx)
}

#' @rdname sum2
#' @export
sumOver <- function(...) {
  .Deprecated(new = "sum2")
  sum2(...)
}
