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
#' @param x A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of length N.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' skipped, otherwise not.
#'
#' @param mode A \code{\link[base]{character}} string specifying the data type
#' of the return value.  Default is to use the same mode as argument \code{x},
#' unless it is logical when it defaults to \code{"integer"}.
#'
#' @param ... Not used.
#'
#' @return Returns a scalar of the data type specified by argument \code{mode}.
#' If \code{mode = "integer"}, then integer overflow occurs if the \emph{sum}
#' is outside the range of defined integer values.
#' Note that the intermediate sum (\code{sum(x[1:n])}) is internally
#' represented as a floating point value and will therefore never be outside of
#' the range.
#' If \code{mode = "integer"} and \code{typeof{x} == "double"}, then a warning
#' is generated.
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
  x_mode <- typeof(x)
  x_logical <- (x_mode == "logical")
  if (!is.numeric(x) && !x_logical) {
    stop("Argument 'x' is neither numeric nor logical: ", x_mode)
  }

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm))
  }

  # Argument 'mode':
  mode <- mode[1L]
  if (x_logical && mode == "logical") {
    ## SPECIAL CASE: If `x` is logical, default mode should be `integer`
    mode_idx <- 1L
  } else if (mode == "integer") {
    mode_idx <- 1L
    ## Coercing results from double to integer is likely a mistake
    if (x_mode == "double") {
      warning('sum2(x, mode = "integer") called with typeof(x) == "double"; did you mean to use as.integer(sum2(x))?')
    }
  } else if (mode == "double") {
    mode_idx <- 2L
  } else {
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
  .Defunct(new = "sum2")
}
