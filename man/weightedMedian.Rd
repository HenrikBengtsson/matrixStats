%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  weightedMedian.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{weightedMedian}
\alias{weightedMedian.default}
\alias{weightedMedian}

\encoding{latin1}

\title{Weighted Median Value}

\usage{
\method{weightedMedian}{default}(x, w, na.rm=NA, interpolate=is.null(ties), ties=NULL,
  method=c("quick", "shell"), ...)
}

\description{
  Computes a weighted median of a numeric vector.
}

\arguments{
  \item{x}{a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing the values whose weighted median is
           to be computed.}
  \item{w}{a vector of weights the same length as \code{x} giving the weights
           to use for each element of \code{x}. Negative weights are treated
           as zero weights. Default value is equal weight to all values.}
  \item{na.rm}{a logical value indicating whether \code{\link[base]{NA}} values in
           \code{x} should be stripped before the computation proceeds,
           or not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s is done.
           Default value is \code{\link[base]{NA}} (for effiency).}
  \item{interpolate}{If \code{\link[base:logical]{TRUE}}, linear interpolation is used to get a
           consistant estimate of the weighted median.}
  \item{ties}{If \code{interpolate == FALSE},
           a character string specifying how to solve ties between two
           \code{x}'s that are satisfying the weighted median criteria.
           Note that at most two values can satisfy the criteria.
           When \code{ties} is \code{"min"}, the smaller value of the two
           is returned and when it is \code{"max"}, the larger value is
           returned.
           If \code{ties} is \code{"mean"}, the mean of the two values is
           returned and if it is \code{"both"}, both values are returned.
           Finally, if \code{ties} is \code{"weighted"} (or \code{\link[base]{NULL}}) a
           weighted average of the two are returned, where the weights are
           weights of all values \code{x[i] <= x[k]} and \code{x[i] >= x[k]},
           respectively.}
  \item{method}{If \code{"shell"}, then \code{order()} is used and when
           \code{method="quick"}, then internal \code{qsort()} is used.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\details{
 For the \code{n} elements \code{x = c(x[1], x[2], ..., x[n])} with positive
 weights \code{w = c(w[1], w[2], ..., w[n])} such that \code{sum(w) = S},
 the \emph{weighted median} is defined as the element \code{x[k]} for which
 the total weight of all elements \code{x[i] < x[k]} is less or equal to
 \code{S/2} and for which the total weight of all elements \code{x[i] > x[k]}
 is less or equal to \code{S/2} (c.f. [1]).

 If \code{w} is missing then all elements of \code{x} are given the same
 positive weight. If all weights are zero, \code{NA} is returned.

 If one or more weights are \code{Inf}, it is the same as these weights
 have the same weight and the others has zero. This makes things easier for
 cases where the weights are result of a division with zero. In this case
 \code{median()} is used internally.

 When all the weights are the same (after values with weight zero are excluded
 and \code{Inf}'s are taken care of), \code{median} is used internally.

 The weighted median solves the following optimization problem:

 \deqn{\alpha^* = \arg_\alpha \min \sum_{k=1}{K} w_k |x_k-\alpha|}
 where \eqn{x=(x_1,x_2,\ldots,x_K)} are scalars and
 \eqn{w=(w_1,w_2,\ldots,w_K)} are the corresponding "weights" for
 each individual \eqn{x} value.
}

\section{Benchmarks}{
 When implementing this function speed has been highly prioritized and
 it also making use of the internal quick sort algorithm (from \R v1.5.0).
 The result is that \code{weightedMedian(x)} is about half as slow as
 \code{median(x)}.

 Initial test also indicates that \code{method="shell"}, which uses
 \code{order()} is slower than \code{method="quick"}, which uses internal
 \code{qsort()}.  Non-weighted median can use partial sorting which is
 faster because all values do not have to be sorted.

 See examples below for some simple benchmarking tests.
}

\examples{
x <- 1:10
n <- length(x)

m1 <- median(x)                           # 5.5
m2 <- weightedMedian(x)                   # 5.5
stopifnot(identical(m1, m2))

w <- rep(1, n)
m1 <- weightedMedian(x, w)                # 5.5 (default)
m2 <- weightedMedian(x, ties="weighted")  # 5.5 (default)
m3 <- weightedMedian(x, ties="min")       # 5
m4 <- weightedMedian(x, ties="max")       # 6
stopifnot(identical(m1,m2))

# Pull the median towards zero
w[1] <- 5
m1 <- weightedMedian(x, w)                # 3.5
y <- c(rep(0,w[1]), x[-1])                # Only possible for integer weights
m2 <- median(y)                           # 3.5
stopifnot(identical(m1,m2))

# Put even more weight on the zero
w[1] <- 8.5
weightedMedian(x, w)                # 2

# All weight on the first value
w[1] <- Inf
weightedMedian(x, w)                # 1

# All weight on the last value
w[1] <- 1
w[n] <- Inf
weightedMedian(x, w)                # 10

# All weights set to zero
w <- rep(0, n)
weightedMedian(x, w)                # NA

# Simple benchmarking
bench <- function(N=1e5, K=10) {
  x <- rnorm(N)
  t <- c()
  t[1] <- system.time(for (k in 1:K) median(x))[3]
  t[2] <- system.time(for (k in 1:K) weightedMedian(x, method="quick"))[3]
  t[3] <- system.time(for (k in 1:K) weightedMedian(x, method="shell"))[3]
  t <- t / t[1]
  t[4] <- t[2]/t[3]
  names(t) <- c("median", "wMed-quick", "wMed-shell", "quick/shell")
  t
}

print(bench(N=  5, K=500))
print(bench(N= 50, K=500))
print(bench(N=200, K=200))
print(bench(N=1e5, K=5))
}

\seealso{
  \code{\link[stats]{median}}, \code{\link[base]{mean}}() and \code{\link[stats]{weighted.mean}}.
}

\references{
  [1]  T.H. Cormen, C.E. Leiserson, R.L. Rivest, Introduction to Algorithms,
       The MIT Press, Massachusetts Institute of Technology, 1989.
}

\author{
  Henrik Bengtsson and Ola \enc{Hössjer}{Hossjer}, Centre for Mathematical
  Sciences, Lund University.
  Thanks to Roger Koenker, Econometrics, University of Illinois, for
  the initial ideas.
}



\keyword{univar}
\keyword{robust}
