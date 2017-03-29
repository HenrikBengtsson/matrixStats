############################################################################/**
# @RdocFunction binCounts
#
# @title "Fast element counting in non-overlapping bins"
#
# @synopsis
#
# \description{
#   Counts the number of elements in non-overlapping bins
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of K positions for to be binned and counted.}
#   \item{idxs}{A @vector indicating subset of elements
#      to operate over. If @NULL, no subsetting is done.}
#   \item{bx}{A @numeric @vector of B+1 ordered positions specifying
#      the B > 0 bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
#      \code{[bx[B],bx[B+1])}.}
#   \item{right}{If @TRUE, the bins are right-closed (left open),
#      otherwise left-closed (right open).}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns an @integer @vector of length B with non-negative integers.
# }
#
# \details{
#   \code{binCounts(x, bx, right=TRUE)} gives equivalent results as
#   \code{rev(binCounts(-x, bx=rev(-bx), right=FALSE))}, but is
#   faster and more memory efficient.
# }
#
# \section{Missing and non-finite values}{
#   Missing values in \code{x} are ignored/dropped.
#   Missing values in \code{bx} are not allowed and gives an error.
# }
#
# \seealso{
#   An alternative for counting occurrences within bins is
#   @see "graphics::hist", e.g. \code{hist(x, breaks=bx, plot=FALSE)$counts}.
#   That approach is ~30-60\% slower than \code{binCounts(..., right=TRUE)}.
#
#   To count occurrences of indices \code{x} (positive @integers) in
#   \code{[1,B]}, use \code{tabulate(x, nbins=B)}, where \code{x} does
#   \emph{not} have to be sorted first.
#   For details, see @see "base::tabulate".
#
#   To average values within bins, see @see "binMeans".
# }
#
# @author "HB"
#
# @keyword "univar"
#*/############################################################################
binCounts <- function(x, idxs=NULL, bx, right=FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x));
  }

  # Argument 'bx':
  if (!is.numeric(bx)) {
    stop("Argument 'bx' is not numeric: ", mode(bx));
  }
  if (any(is.infinite(bx))) {
    stop("Argument 'bx' must not contain Inf values.");
  }
  if (is.unsorted(bx)) {
    stop("Argument 'bx' is not ordered.");
  }

  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  # Argument 'right':
  right <- as.logical(right);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Preprocessing of x
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Drop missing values
  keep <- which(!is.na(x));
  if (length(keep) < length(x)) {
    x <- x[keep];
  }
  keep <- NULL; # Not needed anymore

  # Order x (by increasing x).
  # If 'x' is already sorted, the overhead of (re)sorting is
  # relatively small.
  x <- sort.int(x, method="quick");


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Bin
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- as.numeric(x);
  bx <- as.numeric(bx);
  .Call(C_binCounts, x, bx, right);
} # binCounts()
