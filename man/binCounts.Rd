%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  binCounts.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{binCounts}
\alias{binCounts.default}
\alias{binCounts}

\title{Fast element counting in non-overlapping bins}

\usage{
\method{binCounts}{default}(x, bx, ...)
}

\description{
  Counts the number of elements in non-overlapping bins
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K positions for to be binned and counted.}
  \item{bx}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of B+1 ordered positions specifying
     the B bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
     \code{[bx[B],bx[B+1])}.}
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of length B with non-negative integers.
}

\section{Missing and non-finite values}{
  Missing values in \code{x} are ignored/dropped.
  Missing values in \code{bx} are not allowed and gives an error.
}

\seealso{
  Note that \code{\link[graphics]{hist}} is almost as fast for counting
  occurances within bins, e.g.
  \code{hist(x, breaks=bx, right=FALSE, plot=FALSE)$counts}.

  To average values within bins, see \code{\link{binMeans}}().
}

\author{Henrik Bengtsson}


\keyword{univar}
