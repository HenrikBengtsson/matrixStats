############################################################################/**
# @RdocFunction weightedMedian
#
# \encoding{latin1}
#
# @title "Weighted Median Value"
#
# @synopsis
#
# \description{
#   Computes a weighted median of a numeric vector.
# }
#
# \arguments{
#   \item{x}{a @numeric @vector containing the values whose weighted median is
#            to be computed.}
#   \item{w}{a vector of weights the same length as \code{x} giving the weights
#            to use for each element of \code{x}. Negative weights are treated
#            as zero weights. Default value is equal weight to all values.}
#   \item{idxs}{A @vector indicating subset of elements
#            to operate over. If @NULL, no subsetting is done.}
#   \item{na.rm}{a logical value indicating whether @NA values in
#            \code{x} should be stripped before the computation proceeds,
#            or not.  If @NA, no check at all for @NAs is done.
#            Default value is @NA (for efficiency).}
#   \item{interpolate}{If @TRUE, linear interpolation is used to get a
#            consistent estimate of the weighted median.}
#   \item{ties}{If \code{interpolate == FALSE},
#            a character string specifying how to solve ties between two
#            \code{x}'s that are satisfying the weighted median criteria.
#            Note that at most two values can satisfy the criteria.
#            When \code{ties} is \code{"min"}, the smaller value of the two
#            is returned and when it is \code{"max"}, the larger value is
#            returned.
#            If \code{ties} is \code{"mean"}, the mean of the two values is
#            returned.
#            Finally, if \code{ties} is \code{"weighted"} (or @NULL) a
#            weighted average of the two are returned, where the weights are
#            weights of all values \code{x[i] <= x[k]} and \code{x[i] >= x[k]},
#            respectively.}
#   \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# \details{
#  For the \code{n} elements \code{x = c(x[1], x[2], ..., x[n])} with positive
#  weights \code{w = c(w[1], w[2], ..., w[n])} such that \code{sum(w) = S},
#  the \emph{weighted median} is defined as the element \code{x[k]} for which
#  the total weight of all elements \code{x[i] < x[k]} is less or equal to
#  \code{S/2} and for which the total weight of all elements \code{x[i] > x[k]}
#  is less or equal to \code{S/2} (c.f. [1]).
#
#  If \code{w} is missing then all elements of \code{x} are given the same
#  positive weight. If all weights are zero, @NA_real_ is returned.
#
#  If one or more weights are \code{Inf}, it is the same as these weights
#  have the same weight and the others has zero. This makes things easier for
#  cases where the weights are result of a division with zero.
#
#  The weighted median solves the following optimization problem:
#
#  \deqn{\alpha^* = \arg_\alpha \min \sum_{k=1}{K} w_k |x_k-\alpha|}
#  where \eqn{x=(x_1,x_2,\ldots,x_K)} are scalars and
#  \eqn{w=(w_1,w_2,\ldots,w_K)} are the corresponding "weights" for
#  each individual \eqn{x} value.
# }
#
# @examples "../incl/weightedMedian.Rex"
#
# \seealso{
#   @see "stats::median", @see "base::mean" and @see "weightedMean".
# }
#
# \references{
#   [1]  T.H. Cormen, C.E. Leiserson, R.L. Rivest, Introduction to Algorithms,
#        The MIT Press, Massachusetts Institute of Technology, 1989.
# }
#
# \author{
#   Henrik Bengtsson and Ola Hossjer, Centre for Mathematical
#   Sciences, Lund University.
#   Thanks to Roger Koenker, Econometrics, University of Illinois, for
#   the initial ideas.
# }
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
weightedMedian <- function(x, w=NULL, idxs=NULL, na.rm=FALSE, interpolate=is.null(ties), ties=NULL, ...) {
  # Argument 'x':

  # Argument 'w':
  if (is.null(w)) {
    w <- rep(1, times=length(x))
  } else {
    w <- as.double(w)
  }

  # Argument 'na.rm':
  na.rm <- as.logical(na.rm)
  if (is.na(na.rm)) na.rm <- FALSE

  # Argument 'interpolate':
  interpolate <- as.logical(interpolate)

  # Argument 'ties':
  if (is.null(ties)) {
    tiesC <- 1L
  } else {
    if (ties == "weighted") {
      tiesC <- 1L
    } else if (ties == "min") {
      tiesC <- 2L
    } else if (ties == "max") {
      tiesC <- 4L
    } else if (ties == "mean") {
      tiesC <- 8L
    } else if (ties == "both") {
      .Defunct("As of matrixStats (> 0.12.2), weightedMedian(..., interpolate=FALSE, ties=\"both\") is no longer supported. Use ties=\"min\" and then ties=\"max\" to achieve the same result.")
    } else {
      stop("Unknown value on 'ties': ", ties)
    }
  }

  .Call(C_weightedMedian, x, w, idxs, na.rm, interpolate, tiesC)
}
