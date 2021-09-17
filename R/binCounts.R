#' Fast element counting in non-overlapping bins
#'
#' Counts the number of elements in non-overlapping bins
#'
#' \code{binCounts(x, bx, right = TRUE)} gives equivalent results as
#' \code{rev(binCounts(-x, bx = rev(-bx), right = FALSE))}, but is faster
#' and more memory efficient.
#'
#' @inheritParams rowAlls
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K
#' positions for to be binned and counted.
#'
#' @param bx A \code{\link[base]{numeric}} \code{\link[base]{vector}} of B + 1
#' ordered positions specifying the B > 0 bins \code{[bx[1], bx[2])},
#' \code{[bx[2], bx[3])}, ..., \code{[bx[B], bx[B + 1])}.
#'
#' @param right If \code{\link[base:logical]{TRUE}}, the bins are right-closed
#' (left open), otherwise left-closed (right open).
#'
#' @return Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length B with non-negative integers.
#'
#' @section Missing and non-finite values:
#' Missing values in \code{x} are ignored/dropped.  Missing values in \code{bx}
#' are not allowed and gives an error.
#'
#' @author Henrik Bengtsson
#'
#' @seealso An alternative for counting occurrences within bins is
#' \code{\link[graphics]{hist}}, e.g. \code{hist(x, breaks = bx,
#' plot = FALSE)$counts}.  That approach is ~30-60\% slower than
#' \code{binCounts(..., right = TRUE)}.
#'
#' To count occurrences of indices \code{x} (positive
#' \code{\link[base]{integer}}s) in \code{[1, B]}, use \code{tabulate(x,
#' nbins = B)}, where \code{x} does \emph{not} have to be sorted first.  For
#' details, see \code{\link[base]{tabulate}}().
#'
#' To average values within bins, see \code{\link{binMeans}}().
#'
#' @keywords univar
#' @export
binCounts <- function(x, idxs = NULL, bx, right = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    stop(sprintf("Argument '%s' is not numeric: %s", "x", mode(x)))
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

  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  # Argument 'right':
  right <- as.logical(right)


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocessing of x
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop missing values
  keep <- which(!is.na(x))
  if (length(keep) < length(x)) {
    x <- x[keep]
  }
  keep <- NULL  # Not needed anymore

  # Order x (by increasing x).
  # If 'x' is already sorted, the overhead of (re)sorting is
  # relatively small.
  x <- sort.int(x, method = "quick")


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Bin
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- as.numeric(x)
  bx <- as.numeric(bx)
  .Call(C_binCounts, x, bx, right)
}
