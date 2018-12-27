#' Fast lagged differences
#'
#' Computes the lagged and iterated differences.
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' N.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param lag An \code{\link[base]{integer}} specifying the lag.
#'
#' @param differences An \code{\link[base]{integer}} specifying the order of
#' difference.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N - \code{differences}.
#'
#' @examples
#' diff2(1:10)
#'
#' @author Henrik Bengtsson
#'
#' @seealso \code{\link[base]{diff}}().
#' @keywords univar internal
#'
#' @export
diff2 <- function(x, idxs = NULL, lag = 1L, differences = 1L, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'lag':
  if (length(lag) != 1L) {
    stop("Argument 'lag' is not a scalar: ", length(lag))
  }

  # Argument 'differences':
  if (length(differences) != 1L) {
    stop("Argument 'differences' is not a scalar: ", length(differences))
  }

  lag <- as.integer(lag)
  differences <- as.integer(differences)

  .Call(C_diff2, x, idxs, lag, differences)
}
