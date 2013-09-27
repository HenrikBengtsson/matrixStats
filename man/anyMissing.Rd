%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  anyMissing.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{anyMissing}
\alias{anyMissing}

\alias{anyMissing,numeric-method}
\alias{anyMissing,complex-method}
\alias{anyMissing,logical-method}
\alias{anyMissing,character-method}
\alias{anyMissing,matrix-method}
\alias{anyMissing,data.frame-method}
\alias{anyMissing,list-method}
\alias{anyMissing,NULL-method}
\alias{anyMissing,raw-method}

\title{Checks if there are any missing values in an object or not}

\description{
  Checks if there are any missing values in an object or not.
}

\usage{
 anyMissing(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{vector}}, a \code{\link[base]{list}}, a \code{\link[base]{matrix}}, a \code{\link[base]{data.frame}}, or \code{\link[base]{NULL}}.}
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
  which provides the same functionality as this function.
}



\keyword{iteration}
\keyword{logic}
