%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  anyMissing.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{anyMissing}
\alias{anyMissing}

\alias{colAnyMissings}
\alias{rowAnyMissings}

\title{Checks if there are any missing values in an object or not}

\description{
  Checks if there are any missing values in an object or not.
}

\usage{
 anyMissing(x, idxs=NULL, ...)
 colAnyMissings(x, rows=NULL, cols=NULL, ...)
 rowAnyMissings(x, rows=NULL, cols=NULL, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{vector}}, a \code{\link[base]{list}}, a \code{\link[base]{matrix}}, a \code{\link[base]{data.frame}}, or \code{\link[base]{NULL}}.}
 \item{idxs, rows, cols}{A \code{\link[base]{vector}} indicating subset of elements (or rows and/or columns)
    to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
 \item{...}{Not used.}
}

\value{
  Returns \code{\link[base:logical]{TRUE}} if a missing value was detected, otherwise \code{\link[base:logical]{FALSE}}.
}

\details{
  The implementation of this method is optimized for both speed and memory.
  The method will return \code{\link[base:logical]{TRUE}} as soon as a missing value is detected.
}

\examples{
 x <- rnorm(n=1000)
 x[seq(300,length(x),by=100)] <- NA
 stopifnot(anyMissing(x) == any(is.na(x)))
}

\author{Henrik Bengtsson}

\seealso{
  Starting with R v3.1.0, there is \code{anyNA()} in the \pkg{base},
  which provides the same functionality as \code{anyMissing()}.
}



\keyword{iteration}
\keyword{logic}
