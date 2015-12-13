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

  .Call("weightedMedian", x, w, idxs, na.rm, interpolate, tiesC, package="matrixStats")
} # weightedMedian()



###############################################################################
# HISTORY:
# 2015-05-31 [DJ]
# o Supported subsetted computation.
# 2015-01-26
# o CLEANUP: Drop old internally-renamed .weightedMedian().
# 2015-01-01
# o Dropped support for weightedMedian(..., ties="both").
# o BUG FIX:  weightedMedian(..., ties="both") would give "Error in
#   .subset(x, k, k + 1L) : incorrect number of dimensions" if there
#   was a tie.
# 2014-06-03
# o SPEEDUP: Made weightedMedian() a plain function (was an S3 method).
# 2013-11-23
# o MEMORY: Now weightedMad() cleans out allocated objects sooner.
# 2013-09-26
# o Now utilizing anyMissing().
# 2012-09-10
# o Replaced an .Internal(psort(...)) call with new .psortKM().
# 2012-04-16
# o Added local function qsort() to weightedMedian(), which was adopted
#   from calculateResidualSet() for ProbeLevelModel in aroma.affymatrix 2.5.0.
# o Added local function psortGet() to weightedMedian().
# 2011-04-08
# o Now weightedMedian() returns NA:s of the same mode as argument 'x'.
# 2006-04-21
# o Now negative weights are not check for, but instead treated as zero
#   weights.  This was done to minimize the overhead of the function.
# o Replace all "[[" and "[" with .subset2() and .subset() to minimize
#   overhead from method dispatching.
# o Remove all calls to rm().
# o It is now possible to specify via na.rm=NA that there are no NAs.
# o Small speed up, especially when all weights were the same.
# 2006-01-31
# o Rdoc bug fix: 'reference' to 'references'.
# 2005-07-26
# o Argument 'interpolate' defaults to TRUE only if 'ties' is NULL.
# 2005-06-03
# o Renamed from weighted. median() to weightedMedian().
# o Made into a default function.
# o Now using setMethodS3().
# 2003-02-01
# o Update the Rdoc with comments about the method and interpolate argument.
# 2002-06-27
# * Reduced memory usage a little bit by calling rm() when possible; minimized
#   the risk for automatic garbage collecting.
# * Improved speed when looking for largest index k s.t. wcum[k] < wmid.
# * Improved speed by making use of the R v1.5.0 internal quick sort.
# * Made na.rm=FALSE by default for efficiency.
# 2002-02-28
# * Calls plain median(x) in two cases: i) all weights are equal, ii) some of
#   the weights are Inf's. See code for more information.
# 2002-02-14
# * BUG FIX: If interpolate==TRUE and sum(lows) == 0 then use k <- 1.
# * Added the interpolation version of the weighted median for consistent
#   estimates.
# 2002-02-07
# * Optimized the code for speed.
# * Added support for zero and Inf weights.
# * Added the 'ties' argument.
# * Created!
# * Thanks to the following people for helping me out with this one:
#   - David Brahm, brahm@alum.mit.edu
#   - David Eppstein, eppstein@ics.uci.edu
#   - Frank E Harrell Jr, fharrell@virginia.edu
#   - Markus Jantti, markus.jantti@iki.fi
#   - Roger Koenker, roger@ysidro.econ.uiuc.edu
###############################################################################
