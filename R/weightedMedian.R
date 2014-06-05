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
#   \item{na.rm}{a logical value indicating whether @NA values in
#            \code{x} should be stripped before the computation proceeds,
#            or not.  If @NA, no check at all for @NAs is done.
#            Default value is @NA (for effiency).}
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
#            returned and if it is \code{"both"}, both values are returned.
#            Finally, if \code{ties} is \code{"weighted"} (or @NULL) a
#            weighted average of the two are returned, where the weights are
#            weights of all values \code{x[i] <= x[k]} and \code{x[i] >= x[k]},
#            respectively.}
#   \item{method}{If \code{"shell"}, then \code{order()} is used and when
#            \code{method="quick"}, then internal \code{qsort()} is used.}
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
#  positive weight. If all weights are zero, \code{NA} is returned.
#
#  If one or more weights are \code{Inf}, it is the same as these weights
#  have the same weight and the others has zero. This makes things easier for
#  cases where the weights are result of a division with zero. In this case
#  \code{median()} is used internally.
#
#  When all the weights are the same (after values with weight zero are excluded
#  and \code{Inf}'s are taken care of), \code{median} is used internally.
#
#  The weighted median solves the following optimization problem:
#
#  \deqn{\alpha^* = \arg_\alpha \min \sum_{k=1}{K} w_k |x_k-\alpha|}
#  where \eqn{x=(x_1,x_2,\ldots,x_K)} are scalars and
#  \eqn{w=(w_1,w_2,\ldots,w_K)} are the corresponding "weights" for
#  each individual \eqn{x} value.
# }
#
# \section{Benchmarks}{
#  When implementing this function speed has been highly prioritized and
#  it also making use of the internal quick sort algorithm (from \R v1.5.0).
#  The result is that \code{weightedMedian(x)} is about half as slow as
#  \code{median(x)}.
#
#  Initial test also indicates that \code{method="shell"}, which uses
#  \code{order()} is slower than \code{method="quick"}, which uses internal
#  \code{qsort()}.  Non-weighted median can use partial sorting which is
#  faster because all values do not have to be sorted.
#
#  See examples below for some simple benchmarking tests.
# }
#
# @examples "../incl/weightedMedian.Rex"
#
# \seealso{
#   @see "stats::median", @see "base::mean" and @see "stats::weighted.mean".
# }
#
# \references{
#   [1]  T.H. Cormen, C.E. Leiserson, R.L. Rivest, Introduction to Algorithms,
#        The MIT Press, Massachusetts Institute of Technology, 1989.
# }
#
# \author{
#   Henrik Bengtsson and Ola \enc{Hössjer}{Hossjer}, Centre for Mathematical
#   Sciences, Lund University.
#   Thanks to Roger Koenker, Econometrics, University of Illinois, for
#   the initial ideas.
# }
#
# @keyword "univar"
# @keyword "robust"
#*/############################################################################
weightedMedian <- function(x, w, na.rm=NA, interpolate=is.null(ties), ties=NULL, method=c("quick", "shell"), ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'w':
  n <- length(x);
  if (missing(w)) {
    # By default use weights that are one.
    w <- rep(1, times=n);
  }

  naValue <- NA;
  storage.mode(naValue) <- storage.mode(x);

  # Argument 'na.rm':
  if (is.na(na.rm)) {
    # There are no NAs
  } else if (identical(na.rm, TRUE)) {
    # Remove values that are NA's
    tmp <- which(!(is.na(x) | is.na(w)));
    if (length(tmp) < n) {
      x <- .subset(x, tmp);
      w <- .subset(w, tmp);
      n <- length(x);
    }
    tmp <- NULL; # Not needed anymore
  } else if (anyMissing(x)) {
    return(naValue);
  }

  # Remove values with zero (and negative) weight. This will:
  #  1) take care of the case when all weights are zero,
  #  2) make sure that possible tied values are next to each others, and
  #  3) it will most likely speed up the sorting.
  tmp <- which(w > 0);
  if (length(tmp) < n) {
    x <- .subset(x, tmp);
    w <- .subset(w, tmp);
    n <- length(x);
  }
  tmp <- NULL; # Not needed anymore

  # Are there any values left to calculate the weighted median of?
  if (n == 0L) {
    return(naValue);
  } else if (n == 1L) {
    return(x);
  }

  # Are any weights Inf? Then treat them with equal weight and all others
  # with weight zero. If they have equal weight, regular median can be used
  # instead, which is assumed to be faster.
  tmp <- which(is.infinite(w));
  if (length(tmp) > 0L) {
    x <- .subset(x, tmp);
    # Here we know there are no NAs; we can do better than stats::median(),
    # because we do not have to check for NAs etc.
    n <- length(x);
    half <- (n+1L)/2;
    if (n%%2 == 1) {
      # Get x(half), where x(k) is k:th sorted value in x;
      return(.psortKM(x, k=half));
    } else {
      # Average x(half) and x(half+1).
      return(sum(.psortKM(x, k=half+1L, m=2L))/2);
    }
  }
  tmp <- NULL; # Not needed anymore

  # If all weights are equal, the regular median could be used instead,
  # which is assumed to be faster.
  # DO NOT DO THIS: For efficiency reasons when length(x) is small
  # diff() is expensive!
#  if (all(diff(w) == 0)) {
#    return(median(x));        # na.rm is already taken care of.
#  }

  # Order the values and order the weights
  if (identical(method, "quick")) {
    # Using new (from R v1.5.0) internal quick sort.
    l <- qsort(x);                    # index.return=TRUE
    x <- .subset2(l, 1L);             # l$x
    w <- .subset(w, .subset2(l, 2L)); # l$index
    l <- NULL; # Not needed anymore
  } else {
    # .Internal() calls are no longer allowed. /HB 2012-04-16
    ## ord <- .Internal(order(TRUE, FALSE, x));  # == order(x)
    ord <- order(x);
    x <- .subset(x, ord);
    w <- .subset(w, ord);
    ord <- NULL; # Not needed anymore
  }

  # Calculate the cumulative sum, the total weight and the middle total weight.
  wcum <- cumsum(w);
  wsum <- .subset(wcum, n);
  wmid <- wsum/2;

  if (interpolate) {
    # Adjusting the cumulative weights by subtracting of half the weights.
    wcum <- wcum - (w/2);
    w <- NULL; # Not needed anymore

    # Find the position k such that
    #   i) sum(w[i], i=1:(k-1)) < wmid, and
    #  ii) sum(w[i], i=1:k)    >= wmid
    # In other words, it is the (k+1):th value that brings the cumulative
    # sum of weights above half the total weight.
    # Find the "lower half" of the weights:
    if (n < 1e5) {
      # Alt 1: faster for short vectors
      lows <- (wcum < wmid);
      k  <- max(1, sum(lows));
      lows <- NULL; # Not needed anymore
    } else {
      # Alt 2 (020627): faster for long vectors

      # Design example:
      #
      #    1 2 3 4<5>6 7 8 9 10
      #    .                 .    dk = 9, 4, wcum[k] = 5
      #    1 2 3 4 5 6<7>8 9 10
      #            .         .    dk = 5, 2, wcum[k] = 7
      #    1 2 3 4 5<6>7 8 9 10
      #            .   .          dk = 2, 1, wcum[k] = 6
      #    1 2 3 4<5>6 7 8 9 10
      #            . .            dk = 1, 0, wcum[k] = 5
      k0 <- 1; k1 <- n;
      while ((dk <- (k1 - k0)) > 1) {
        k <- k0 + dk %/% 2;
        if (.subset(wcum, k) < wmid) k0 <- k else k1 <- k;
      }
      k <- k0;
    }

    # The width and the height of the "rectangle".
    Dx <-    .subset(x, k+1L) -    .subset(x, k);
    Dy <- .subset(wcum, k+1L) - .subset(wcum, k);

    # The width and the height of the triangle which upper corner touches
    # the level where the cumulative sum of weights *equals* half the
    # total weight.
    dy <- wmid - .subset(wcum, k);
    wcum <- NULL; # Not needed anymore
    dx <- (dy/Dy) * Dx;

    # The corresponding x value
    xm <- dx + .subset(x, k);

##    if (FALSE == TRUE) {
##      x0 <- x[k];
##      x1 <- x[k+1];
##      y0 <- wcum[k];
##      y1 <- wcum[k+1];
##      ym <- wmid;
##
##      plot(c(x0,x1), c(y0,y1), type="l", pch="*", col="blue");
##      abline(h=wmid, lty=3, col="red");
##      lines(x0+c(0,0), y0+w[k]/2*c(0,1));
##      lines(c(x0,x1), y0+w[k]/2+c(0,0));
##      lines(x1+c(0,0), y1-w[k+1]/2*c(0,1));
##      lines(x0+dx*c(1,1), y0+dy*c(0,1), lty=3, col="red");
##    }

    return(xm);
  } # if (interpolate)
  w <- NULL; # Not needed anymore

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # The code below has become more obsolete after interpolation has been added.
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Find the position where the sum of the weights of the elements such that
  # x[i] < x[k] is less or equal than half the sum of all weights.
  # (these two lines could probably be optimized for speed).
  lows <- (wcum <= wmid);
  k  <- sum(lows);
  lows <- NULL; # Not needed anymore

  # Two special cases where more than half of the total weight
  # is at a) the first, or b) the last value
  if (k == 0L) return(.subset(x, 1L));
  if (k == n) return(.subset(x, n));

  # At this point we know that:
  #  1) at most half the total weight is in the set x[1:k],
  #  2) that the set x[(k+2):n] contains less than half the total weight
  # The question is whether x[(k+1):n] contains *more* than
  # half the total weight (try x=c(1,2,3), w=c(1,1,1)). If it is then
  # we can be sure that x[k+1] is the weighted median we are looking
  # for, otherwise it is any function of x[k:(k+1)].

  wlow  <- .subset(wcum, k);  # the weight of x[1:k]
  whigh <- wsum - wlow;       # the weight of x[(k+1):n]
  wcum <- NULL; # Not needed anymore

  if (whigh > wmid)
    return(.subset(x, k+1L));

  if (is.null(ties) || ties == "weighted") {  # Default!
    (wlow*.subset(x, k) + whigh*.subset(x, k+1L)) / wsum;
  } else if (ties == "max") {
    .subset(x, k+1L);
  } else if (ties == "min") {
    .subset(x, k);
  } else if (ties == "mean") {
    (.subset(x, k)+.subset(x, k+1L))/2;
  } else if (ties == "both") {
    .subset(x, k, k+1L);
  }
} # weightedMedian()


# Used by weightedMedian()
qsort <- function(x) {
  ## .Internal(qsort(x, TRUE));  # index.return=TRUE
  sort.int(x, index.return=TRUE, method="quick");
} # qsort()



###############################################################################
# HISTORY:
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
