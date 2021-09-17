#' Fast mean calculations in non-overlapping bins
#'
#' Computes the sample means in non-overlapping bins
#'
#' \code{binMeans(x, bx, right = TRUE)} gives equivalent results as
#' \code{rev(binMeans(-x, bx = sort(-bx), right = FALSE))}, but is faster.
#'
#' @inheritParams rowAlls
#'
#' @param y A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of K values to calculate means on.
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K
#' positions for to be binned.
#'
#' @param bx A \code{\link[base]{numeric}} \code{\link[base]{vector}} of B + 1
#' ordered positions specifying the B > 0 bins \code{[bx[1], bx[2])},
#' \code{[bx[2], bx[3])}, ..., \code{[bx[B], bx[B + 1])}.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values in \code{y}
#' are dropped before calculating the mean, otherwise not.
#'
#' @param count If \code{\link[base:logical]{TRUE}}, the number of data points
#' in each bins is returned as attribute \code{count}, which is an
#' \code{\link[base]{integer}} \code{\link[base]{vector}} of length B.
#'
#' @param right If \code{\link[base:logical]{TRUE}}, the bins are right-closed
#' (left open), otherwise left-closed (right open).
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length B.
#'
#' @section Missing and non-finite values:
#' Data points where either of \code{y} and \code{x} is missing are dropped
#' (and therefore are also not counted).   Non-finite values in \code{y} are
#' not allowed and gives an error.  Missing values in \code{bx} are not allowed
#' and gives an error.
#'
#' @example incl/binMeans.R
#'
#' @author Henrik Bengtsson with initial code contributions by
#' Martin Morgan [1].
#'
#' @seealso \code{\link{binCounts}}().  \code{\link[stats]{aggregate}} and
#' \code{\link[base]{mean}}().
#'
#' @references [1] R-devel thread \emph{Fastest non-overlapping binning mean
#' function out there?} on Oct 3, 2012\cr
#'
#' @keywords univar
#' @export
binMeans <- function(y, x, idxs = NULL, bx, na.rm = TRUE, count = TRUE,
                     right = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'y':
  if (!is.numeric(y) && !is.logical(y)) {
    stop(sprintf("Argument '%s' is not numeric or logical: %s", "y", mode(y)))
  }
  if (is.numeric(y) && !is.integer(y) && any(is.infinite(y))) {
    stop(sprintf("Argument '%s' must not contain infinite values", "y"))
  }
  n <- length(y)

  # Argument 'x':
  if (!is.numeric(x)) {
    stop(sprintf("Argument '%s' is not numeric: %s", "x", mode(x)))
  }
  if (length(x) != n) {
    stop(sprintf("Argument '%s' and '%s' have different lengths: %.0f != %.0f", "y", "x", length(y), length(x)))
  }

  # Argument 'bx':
  if (!is.numeric(bx)) {
    stop(sprintf("Argument '%s' is not numeric: %s", "bx", mode(bx)))
  }
  if (any(is.infinite(bx))) {
    stop(sprintf("Argument '%s' must not contain infinite values", "bx"))
  }
  if (is.unsorted(bx)) {
    stop(sprintf("Argument '%s' is not ordered", "bx"))
  }

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop(sprintf("Argument '%s' is not logical: %s", "na.rm", mode(na.rm)))
  }

  # Argument 'count':
  if (!is.logical(count)) {
    stop(sprintf("Argument '%s' is not logical: %s", "count", mode(count)))
  }

  # Apply subset
  if (!is.null(idxs)) {
    x <- x[idxs]
    y <- y[idxs]
  }

  # Argument 'right':
  right <- as.logical(right)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocessing of (x, y)
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop missing values in 'x'
  keep <- which(!is.na(x))
  if (length(keep) < n) {
    x <- x[keep]
    y <- y[keep]
    n <- length(y)
  }
  keep <- NULL  # Not needed anymore

  # Drop missing values in 'y'?
  if (na.rm) {
    keep <- which(!is.na(y))
    if (length(keep) < n) {
      x <- x[keep]
      y <- y[keep]
    }
    keep <- NULL  # Not needed anymore
  }

  # Order (x, y) by increasing x.
  # If 'x' is already sorted, the overhead of (re)sorting is
  # relatively small.
  x <- sort.int(x, method = "quick", index.return = TRUE)
  y <- y[x$ix]
  x <- x$x


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Bin
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  y <- as.numeric(y)
  x <- as.numeric(x)
  bx <- as.numeric(bx)
  count <- as.logical(count)
  .Call(C_binMeans, y, x, bx, count, right)
}
