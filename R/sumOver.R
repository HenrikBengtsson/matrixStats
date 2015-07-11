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
#   \item{idxs}{A @vector indicating subset of elements
#      to operate over. If @NULL, no subsetting is done.}
#   \item{na.rm}{If @TRUE, missing values are skipped, otherwise not.}
#   \item{mode}{A @character string specifying the data type of the
#      return value.  Default is to use the same mode as argument
#      \code{x}.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a scalar of the data type specified by argument \code{mode}.
#   If \code{mode="integer"}, then integer overflow occurs if the
#   \emph{sum} is outside the range of defined integer values.
# }
#
# \details{
#   \code{sumOver(x, idxs)} gives equivalent results as
#   \code{sum(x[idxs])}, but is faster and more memory efficient
#   since it avoids the actual subsetting which requires copying
#   of elements and garbage collection thereof.
#
#   Furthermore, \code{sumOver(x, mode="double")} is equivalent to
#   \code{sum(as.numeric(x))}, but is much more memory efficient when
#   \code{x} is an @integer vector.
# }
#
# @examples "../incl/sumOver.Rex"
#
# \seealso{
#   @see "base::sum".
#   To efficiently average over a subset, see @see "meanOver".
# }
#
# @author
#
# @keyword univar
# @keyword internal
#*/############################################################################
sumOver <- function(x, idxs=NULL, na.rm=FALSE, mode=typeof(x), ...) {
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

  # Argument 'mode':
  mode <- mode[1L]
  modeI <- charmatch(mode, c("integer", "double"), nomatch=0L)
  if (modeI == 0L) {
    stop("Unknown value of argument 'mode': ", mode)
  }

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Summing
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  .Call("sumOver", x, idxs, na.rm, modeI, PACKAGE="matrixStats");
} # sumOver()


############################################################################
# HISTORY:
# 2015-05-31 [DJ]
# o Supported subsetted computation.
# 2014-11-15 [HB]
# o SPEEDUP: No longer using match.arg() due to its overhead.
# 2014-11-02 [HB]
# o Created.
############################################################################
