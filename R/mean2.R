#' Fast averaging over subset of vector elements
#'
#' Computes the sample mean of all or a subset of values.
#'
#' \code{mean2(x, idxs)} gives equivalent results as \code{mean(x[idxs])},
#' but is faster and more memory efficient since it avoids the actual
#' subsetting which requires copying of elements and garbage collection
#' thereof.
#'
#' If \code{x} is \code{\link[base]{numeric}} and \code{refine = TRUE}, then a
#' two-pass scan is used to calculate the average.  The first scan calculates
#' the total sum and divides by the number of (non-missing) values.  In the
#' second scan, this average is refined by adding the residuals towards the
#' first average.  The \code{\link[base]{mean}}() uses this approach.
#' \code{mean2(..., refine = FALSE)} is almost twice as fast as
#' \code{mean2(..., refine = TRUE)}.
#'
#' @param x A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of length N.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' skipped, otherwise not.
#'
#' @param refine If \code{\link[base:logical]{TRUE}} and \code{x} is
#' \code{\link[base]{numeric}}, then extra effort is used to calculate the
#' average with greater numerical precision, otherwise not.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.
#'
#' @example incl/mean2.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link[base]{mean}}().
#' To efficiently sum over a subset, see \code{\link{sum2}}().
#' @keywords univar internal
#' @export
mean2 <- function(x, idxs = NULL, na.rm = FALSE, refine = TRUE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x) && !is.logical(x)) {
    stop("Argument 'x' is neither numeric nor logical: ", mode(x))
  }

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm))
  }

  # Argument 'refine':
  if (!is.logical(refine)) {
    stop("Argument 'refine' is not logical: ", mode(refine))
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Averaging
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  .Call(C_mean2, x, idxs, na.rm, refine)
}

#' @rdname mean2
#' @export
meanOver <- function(...) {
  .Defunct(new = "mean2")
}
