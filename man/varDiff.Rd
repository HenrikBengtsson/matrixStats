%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  varDiff.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{varDiff}
\alias{varDiff}

\alias{sdDiff}
\alias{madDiff}
\alias{varDiff,numeric-method}
\alias{sdDiff,numeric-method}
\alias{madDiff,numeric-method}

\title{Estimation of discrepancies off sequential order differences in a vector}

\description{
  Estimation of discrepancies off sequential order differences in a vector.
}

\usage{
 varDiff(x, na.rm=FALSE, diff=1, ...)
 sdDiff(x, na.rm=FALSE, diff=1, ...)
 madDiff(x, na.rm=FALSE, diff=1, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded, otherwise not.}
 \item{diff}{The positional distance of elements for which the
    difference should be calculated.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  See \code{\link[base]{diff}}().
}




\keyword{iteration}
\keyword{robust}
\keyword{univar}
