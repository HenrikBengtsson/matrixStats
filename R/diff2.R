#' Fast lagged differences
#'
#' Computes the lagged and iterated differences.
#'
#' @inheritParams rowAlls
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' N.
#'
#' @param lag An \code{\link[base]{integer}} specifying the lag.
#'
#' @param differences An \code{\link[base]{integer}} specifying the order of
#' difference.
#' 
#' @param useNames If \code{\link[base]{NA}}, the default behavior of the 
#' function about naming support is remained. If \code{\link[base:logical]{FALSE}}, 
#' no naming support is done. Else if \code{\link[base:logical]{TRUE}}, names 
#' attributes of result are set.
#' 
#' 
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
diff2 <- function(x, idxs = NULL, lag = 1L, differences = 1L, ..., useNames = TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'lag':
  if (length(lag) != 1L) {
    stop(sprintf("Argument '%s' is not a scalar: %.0f", "lag", length(lag)))
  }

  # Argument 'differences':
  if (length(differences) != 1L) {
    stop(sprintf("Argument '%s' is not a scalar: %.0f", "differences", length(differences)))
  }

  lag <- as.integer(lag)
  differences <- as.integer(differences)

  .Call(C_diff2, x, idxs, lag, differences, useNames)
}
