%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowLogSumExps.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowLogSumExps}
\alias{rowLogSumExps}

\alias{colLogSumExps}
\alias{rowLogSumExps,matrix-method}
\alias{colLogSumExps,matrix-method}

\title{Accurately computes the logarithm of the sum of exponentials across rows or columns}

\description{
  Accurately computes the logarithm of the sum of exponentials across rows or columns.
}

\usage{
 rowLogSumExps(lx, ...)
 colLogSumExps(lx, ...)
}

\arguments{
 \item{lx}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
  Typically \code{lx} are \eqn{log(x)} values.}
 \item{...}{Additional arguments passed to \code{\link{logSumExp}}().}
}

\value{
 A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\author{Henrik Bengtsson, Nakayama X}

\seealso{
  Internally, \code{\link{logSumExp}}() is used.
}



\keyword{array}
\keyword{internal}
