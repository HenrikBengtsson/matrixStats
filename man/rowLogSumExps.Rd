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
 rowLogSumExps(lx, na.rm=FALSE, ...)
 colLogSumExps(lx, na.rm=FALSE, ...)
}

\arguments{
 \item{lx}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
  Typically \code{lx} are \eqn{log(x)} values.}
 \item{...}{Additional arguments passed to \code{\link{logSumExp}}().}
}

\value{
 A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\section{Benchmarking}{
  These methods are implemented in native code and have been optimized
  for speed and memory.
}

\author{Henrik Bengtsson, Nakayama X}

\seealso{
  To calculate the same on vectors, \code{\link{logSumExp}}().
}



\keyword{array}
\keyword{internal}
