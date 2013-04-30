%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  sumInLogspace.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{sumInLogspace}
\alias{sumInLogspace}


\title{Accurately computes log(sum(x))}

\description{
 get "title", where \eqn{x} is given via \eqn{log(x)} and
 where all values of \eqn{x} is \eqn{|x| << 1}.
 Example of such \eqn{x}:s are p-values.
}

\arguments{
  \item{lx}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of \eqn{log(x)} values.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, any missing values are removed before
    doing the computation, otherwise not.
    Only used if argument \code{hasNA} is \code{\link[base:logical]{TRUE}}.}
  \item{hasNA}{A \code{\link[base]{logical}} indicating whether \code{lx} contains
    missing values or not.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\details{
  The implementation of this function is based on the observation that
  \deqn{
     log(x + y)
       = \{ lx = log(x), ly = log(y) \}
       = log( exp(lx) + exp(ly) )
       = lx + log ( 1 + exp(ly - lx) )
  }
}

\examples{
## EXAMPLE #1
lx <- c(1, 1000.02)
y0 <- log(sum(exp(lx)))
print(y0) ## Inf

y1 <- sumInLogspace(lx)
print(y1) ## 1000.02


## EXAMPLE #2:
## R-help thread \emph{'[R] Beyond double-precision?'} on May 9, 2009.

set.seed(1)
x <- runif(50)

## The logarithm of the harmonic mean
y0 <- log(1/mean(1/x))
print(y0)  ## -1.600885

lx <- log(x)
y1 <- log(length(x)) - sumInLogspace(-lx)
print(y1)  ## [1] -1.600885

# Sanity check
stopifnot(all.equal(y1, y0))
}

\author{Henrik Bengtsson, Nakayama X}

\seealso{
  Internally, \code{\link[base]{log1p}}() is used for accurately computing
  \eqn{log(1+x)}.
}


\keyword{internal}
