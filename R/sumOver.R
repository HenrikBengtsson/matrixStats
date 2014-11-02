############################################################################/**
# @RdocFunction sumOver
#
# @title "Fast sum over subset of vector elements"
#
# @synopsis
#
# \description{
#   Computes the sum of all or a subset of values.
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of length N.}
#   \item{na.rm}{If @TRUE, missing values are skipped, otherwise not.}
#   \item{idxs}{A @numeric index @vector in [1,N] of elements to sum over.
#      If @NULL, all elements are considered.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar of the same type as argument \code{x}.
#   If \code{x} is integer, then integer overflow occurs if the
#   \emph{sum} is outside the range of defined integer values.
# }
#
# \details{
#   \code{sumOver(x, idxs)} gives equivalent results as
#   \code{sum(x[idxs])}, but is faster and more memory efficient
#   since it avoids the actual subsetting which requires copying
#   of elements and garbage collection thereof.
# }
#
# @examples "../incl/sumOver.Rex"
#
# \seealso{
#   @see "base::sum".
# }
#
# @author
#
# @keyword "univar"
#*/############################################################################
sumOver <- function(x, na.rm=FALSE, idxs=NULL, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.numeric(x)) {
    stop("Argument 'x' is not numeric: ", mode(x));
  }
  n <- length(x);

  # Argument 'na.rm':
  if (!is.logical(na.rm)) {
    stop("Argument 'na.rm' is not logical: ", mode(na.rm));
  }

  # Argument 'idxs':
  if (is.null(idxs)) {
  } else if (is.integer(idxs)) {
  } else if (is.logical(idxs)) {
    if (length(idxs) != n) {
      stop(sprintf("Lengths of arguments 'idxs' and 'x' do not match: %d != %d", length(idxs), n));
    }
    idxs <- which(idxs);
  } else {
    idxs <- as.integer(idxs);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Summing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  .Call("sumOver", x, na.rm, idxs, PACKAGE="matrixStats");
} # sumOver()


############################################################################
# HISTORY:
# 2014-11-02 [HB]
# o Created.
############################################################################
