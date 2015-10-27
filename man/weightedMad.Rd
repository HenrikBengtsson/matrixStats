%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  weightedMad.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{weightedMad}
\alias{weightedMad}

\alias{rowWeightedMads}
\alias{colWeightedMads}

\title{Weighted Median Absolute Deviation (MAD)}

\usage{
 weightedMad(x, w=NULL, na.rm=FALSE, constant=1.4826, center=NULL, ...)
 colWeightedMads(x, w=NULL, na.rm=FALSE, ...)
 rowWeightedMads(x, w=NULL, na.rm=FALSE, ...)
}

\description{
  Computes a weighted MAD of a numeric vector.
}

\arguments{
  \item{x}{a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing the values whose weighted MAD is
           to be computed.}
  \item{w}{a vector of weights the same length as \code{x} giving the weights
           to use for each element of \code{x}. Negative weights are treated
           as zero weights. Default value is equal weight to all values.}
  \item{na.rm}{a logical value indicating whether \code{\link[base]{NA}} values in
           \code{x} should be stripped before the computation proceeds,
           or not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s is done.
           Default value is \code{\link[base]{NA}} (for efficiency).}
  \item{constant}{A \code{\link[base]{numeric}} scale factor, cf. \code{\link[stats]{mad}}.}
  \item{center}{Optional \code{\link[base]{numeric}} scalar specifying the center
           location of the data.  If \code{\link[base]{NULL}}, it is estimated from data.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\section{Missing values}{
  Missing values are dropped at the very beginning, if argument
  \code{na.rm} is \code{\link[base:logical]{TRUE}}, otherwise not.
}

\examples{
x <- 1:10
n <- length(x)

m1 <- mad(x)
m2 <- weightedMad(x)
stopifnot(identical(m1, m2))

w <- rep(1, times=n)
m1 <- weightedMad(x, w)
stopifnot(identical(m1,m2))

# All weight on the first value
w[1] <- Inf
m <- weightedMad(x, w)
stopifnot(m == 0)

# All weight on the first two values
w[1:2] <- Inf
m1 <- mad(x[1:2])
m2 <- weightedMad(x, w)
stopifnot(identical(m1,m2))

# All weights set to zero
w <- rep(0, times=n)
m <- weightedMad(x, w)
stopifnot(is.na(m))

}

\seealso{
  For the non-weighted MAD, see \code{\link[stats]{mad}}.
  Internally \code{\link{weightedMedian}}() is used to
  calculate the weighted median.
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{robust}
