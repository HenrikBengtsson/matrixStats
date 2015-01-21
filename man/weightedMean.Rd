%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  weightedMean.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{weightedMean}
\alias{weightedMean}


\encoding{latin1}

\title{Weighted Arithmetic Mean}

\usage{
weightedMean(x, w, na.rm=FALSE, refine=FALSE, ...)
}

\description{
  Computes the weighted sample mean of a numeric vector.
}

\arguments{
  \item{x}{a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing the values whose weighted mean is
           to be computed.}
  \item{w}{a vector of weights the same length as \code{x} giving the weights
           to use for each element of \code{x}. Negative weights are treated
           as zero weights. Default value is equal weight to all values.}
  \item{na.rm}{a logical value indicating whether \code{\link[base]{NA}} values in
           \code{x} should be stripped before the computation proceeds,
           or not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s is done.
           Default value is \code{\link[base]{NA}} (for efficiency).}
  \item{refine}{If \code{\link[base:logical]{TRUE}} and \code{x} is \code{\link[base]{numeric}}, then extra effort is
     used to calculate the average with greater numerical precision,
     otherwise not.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\examples{
x <- 1:10
n <- length(x)

w <- rep(1, times=n)
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))

# Pull the mean towards zero
w[1] <- 5
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))

# Put even more weight on the zero
w[1] <- 8.5
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))

# All weight on the first value
w[1] <- Inf
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))

# All weight on the last value
w[1] <- 1
w[n] <- Inf
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))

# All weights set to zero
w <- rep(0, n)
m0 <- weighted.mean(x, w)
m1 <- weightedMean(x, w)
stopifnot(identical(m1,m0))
}

\seealso{
  \code{\link[base]{mean}}() and \code{\link[stats]{weighted.mean}}.
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{robust}
