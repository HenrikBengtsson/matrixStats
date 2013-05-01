%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  logSumExp.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{logSumExp}
\alias{logSumExp}


\title{Accurately computes the logarithm of the sum of exponentials}

\description{
 Accurately computes the logarithm of the sum of exponentials, that is, \eqn{log(sum(exp(lx)))}.
 If \eqn{lx = log(x)}, then this is equivalently to calculating
 \eqn{log(sum(x))}.

 This function, which avoid numerical underflow, is often used when
 computing the logarithm of the sum of small numbers (\eqn{|x| << 1})
 such as probabilities.
}

\arguments{
  \item{lx}{A \code{\link[base]{numeric}} \code{\link[base]{vector}}.
    Typically \code{lx} are \eqn{log(x)} values.}
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
 This is function is more accurate than \code{log(sum(exp(lx)))}
 when the values of \eqn{x = exp(lx)} are \eqn{|x| << 1}.
 The implementation of this function is based on the observation that
  \deqn{
     log(x + y)
       = { lx = log(x), ly = log(y) }
       = log( exp(lx) + exp(ly) )
       = lx + log ( 1 + exp(ly - lx) )
  }
}

\section{Benchmarking}{
  This method is implemented in native code and has been optimized
  for speed and memory.
}

\examples{
## EXAMPLE #1
lx <- c(1000.01, 1000.02)
y0 <- log(sum(exp(lx)))
print(y0) ## Inf

y1 <- logSumExp(lx)
print(y1) ## 1000.708


## EXAMPLE #2
lx <- c(-1000.01, -1000.02)
y0 <- log(sum(exp(lx)))
print(y0) ## -Inf

y1 <- logSumExp(lx)
print(y1) ## -999.3218


## EXAMPLE #3
## R-help thread 'Beyond double-precision?' on May 9, 2009.

set.seed(1)
x <- runif(50)

## The logarithm of the harmonic mean
y0 <- log(1/mean(1/x))
print(y0)  ## -1.600885

lx <- log(x)
y1 <- log(length(x)) - logSumExp(-lx)
print(y1)  ## [1] -1.600885

# Sanity check
stopifnot(all.equal(y1, y0))
}

\author{
  Native implementation by Henrik Bengtsson.
  Original R code by Nakayama ???.
}

\seealso{
  To compute this function on rows or columns of a matrix,
  see \code{\link{rowLogSumExps}}().

  For adding \emph{two} double values in native code, R provides
  the C function \code{logspace_add()} [1].
  For properties of the log-sum-exponential function, see [2].
}

\references{
[1] R Core Team, \emph{Writing R Extensions}, v3.0.0, April 2013. \cr
[2] Laurent El Ghaoui,
    \emph{Hyper-Textbook: Optimization Models and Applications},
    University of California at Berkeley, August 2012.
    (Chapter 'Log-Sum-Exp (LSE) Function and Properties',
    \url{https://inst.eecs.berkeley.edu/~ee127a/book/login/def_lse_fcn.html})
    \cr
[3] R-help thread \emph{logsumexp function in R}, 2011-02-17.
    \url{https://stat.ethz.ch/pipermail/r-help/2011-February/269205.html}\cr
}


\keyword{internal}
