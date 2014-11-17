%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  allocMatrix.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{allocMatrix}
\alias{allocMatrix}

\alias{allocVector}
\alias{allocArray}

\title{Allocates an empty vector, matrix or array}

\usage{
 allocVector(length, value=0, ...)
 allocMatrix(nrow, ncol, value=0, ...)
 allocArray(dim, value=0, ...)
}

\description{
  Allocates an empty vector, matrix or array faster than the corresponding function in R.
}

\arguments{
  \item{length, nrow, ncol, dim}{\code{\link[base]{numeric}}s specifying the dimension of
     the created \code{\link[base]{vector}}, \code{\link[base]{matrix}} or \code{\link[base]{array}}.}
  \item{value}{A \code{\link[base]{numeric}} scalar that all elements will have as value.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}}, \code{\link[base]{matrix}} and \code{\link[base]{array}} respectively of the same data
  type as \code{value}.
}

\author{Henrik Bengtsson}

\seealso{
  See also \code{\link[base]{vector}}, \code{\link[base]{matrix}} and \code{\link[base]{array}}.
}



\keyword{programming}
\keyword{internal}
