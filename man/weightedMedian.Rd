%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  weightedMedian.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{weightedMedian}
\alias{weightedMedian}


\encoding{latin1}

\title{Weighted Median Value}

\usage{
weightedMedian(x, w=NULL, idxs=NULL, na.rm=FALSE, interpolate=is.null(ties), ties=NULL,
  ...)
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
  \item{idxs}{A \code{\link[base]{vector}} indicating subset of elements
           to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
  \item{na.rm}{a logical value indicating whether \code{\link[base]{NA}} values in
           \code{x} should be stripped before the computation proceeds,
           or not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s is done.
           Default value is \code{\link[base]{NA}} (for efficiency).}
  \item{interpolate}{If \code{\link[base:logical]{TRUE}}, linear interpolation is used to get a
           consistent estimate of the weighted median.}
  \item{ties}{If \code{interpolate == FALSE},
           a character string specifying how to solve ties between two
           \code{x}'s that are satisfying the weighted median criteria.
           Note that at most two values can satisfy the criteria.
           When \code{ties} is \code{"min"}, the smaller value of the two
           is returned and when it is \code{"max"}, the larger value is
           returned.
           If \code{ties} is \code{"mean"}, the mean of the two values is
           returned.
           Finally, if \code{ties} is \code{"weighted"} (or \code{\link[base]{NULL}}) a
           weighted average of the two are returned, where the weights are
           weights of all values \code{x[i] <= x[k]} and \code{x[i] >= x[k]},
           respectively.}
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
 positive weight. If all weights are zero, \code{\link[base]{NA}}_real_ is returned.

 If one or more weights are \code{Inf}, it is the same as these weights
 have the same weight and the others has zero. This makes things easier for
 cases where the weights are result of a division with zero.

 The weighted median solves the following optimization problem:

 \deqn{\alpha^* = \arg_\alpha \min \sum_{k=1}{K} w_k |x_k-\alpha|}
 where \eqn{x=(x_1,x_2,\ldots,x_K)} are scalars and
 \eqn{w=(w_1,w_2,\ldots,w_K)} are the corresponding "weights" for
 each individual \eqn{x} value.
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
  gc()
  t <- c()
  t[1] <- system.time(for (k in 1:K) median(x))[3]
  t[2] <- system.time(for (k in 1:K) weightedMedian(x))[3]
  t <- t / t[1]
  names(t) <- c("median", "weightedMedian")
  t
}

print(bench(N=    5, K=100))
print(bench(N=   50, K=100))
print(bench(N=  200, K=100))
print(bench(N= 1000, K=100))
print(bench(N= 10e3, K= 20))
print(bench(N=100e3, K= 20))
}

\seealso{
  \code{\link[stats]{median}}, \code{\link[base]{mean}}() and \code{\link{weightedMean}}().
}

\references{
  [1]  T.H. Cormen, C.E. Leiserson, R.L. Rivest, Introduction to Algorithms,
       The MIT Press, Massachusetts Institute of Technology, 1989.
}

\author{
  Henrik Bengtsson and Ola Hossjer, Centre for Mathematical
  Sciences, Lund University.
  Thanks to Roger Koenker, Econometrics, University of Illinois, for
  the initial ideas.
}



\keyword{univar}
\keyword{robust}
