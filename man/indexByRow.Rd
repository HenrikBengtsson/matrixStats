%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  indexByRow.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{indexByRow}
\alias{indexByRow}

\alias{indexByRow.matrix}

\title{Translates matrix indices by rows into indices by columns}

\description{
  Translates matrix indices by rows into indices by columns.
}

\usage{
 \method{indexByRow}{matrix}(x, idxs=NULL, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{matrix}}.}
 \item{idxs}{A \code{\link[base]{vector}} of indices.  If \code{\link[base]{NULL}}, all indices are returned.}
 \item{...}{Not use.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of indices.
}

\examples{
 x <- matrix(NA, nrow=5, ncol=4)
 y <- t(x)
 idxs <- seq(along=x)

 # Assign by columns
 x[idxs] <- idxs
 print(x)

 # Assign by rows
 y[indexByRow(y, idxs)] <- idxs
 print(y)

 stopifnot(x == t(y))
}

\author{Henrik Bengtsson}



\keyword{iteration}
\keyword{logic}
