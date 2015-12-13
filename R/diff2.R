############################################################################/**
# @RdocFunction diff2
#
# @title "Fast lagged differences"
#
# @synopsis
#
# \description{
#   Computes the lagged and iterated differences.
# }
#
# \arguments{
#   \item{x}{A @numeric @vector of length N.}
#   \item{idxs}{A @vector indicating subset of elements
#      to operate over. If @NULL, no subsetting is done.}
#   \item{lag}{An @integer specifying the lag.}
#   \item{differences}{An @integer specifying the order of difference.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length N - \code{differences}.
# }
#
# @examples "../incl/diff2.Rex"
#
# \seealso{
#   @see "base::diff".
# }
#
# @author
#
# @keyword univar
# @keyword internal
#*/############################################################################
diff2 <- function(x, idxs=NULL, lag=1L, differences=1L, ...) {
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

  .Call("diff2", x, idxs, lag, differences, PACKAGE="matrixStats");
} # diff2()


############################################################################
# HISTORY:
# 2015-05-26 [DJ]
# o Supported subsetted computation.
# 2014-12-29
# o Created.
############################################################################
