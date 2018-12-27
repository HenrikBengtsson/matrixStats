#' Fast mean calculations in non-overlapping bins
#'
#' Computes the sample means in non-overlapping bins
#'
#' \code{binMeans(x, bx, right = TRUE)} gives equivalent results as
#' \code{rev(binMeans(-x, bx = sort(-bx), right = FALSE))}, but is faster.
#'
#' @param y A \code{\link[base]{numeric}} or \code{\link[base]{logical}}
#' \code{\link[base]{vector}} of K values to calculate means on.
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K
#' positions for to be binned.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
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
#' @param ... Not used.
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
    stop("Argument 'y' is neither numeric nor logical: ", mode(y))
  }
  if (is.numeric(y) && !is.integer(y) && any(is.infinite(y))) {
    stop("Argument 'y' must not contain infinite values.")
  }
  n <- length(y)

  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x))
  }
  if (length(x) != n) {
    stop("Argument 'y' and 'x' are of different lengths: ",
         length(y), " != ", length(x))
  }

  # Argument 'bx':
  if (!is.numeric(bx)) {
    stop("Argument 'bx' is not numeric: ", mode(bx))
  }
  if (any(is.infinite(bx))) {
    stop("Argument 'bx' must not contain Inf values.")
  }
  if (is.unsorted(bx)) {
    stop("Argument 'bx' is not ordered.")
  }

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm))
  }

  # Argument 'count':
  if (!is.logical(count)) {
    stop("Argument 'count' is not logical: ", mode(count))
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
