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

\title{Estimation of discrepancies based on sequential order differences in a vector}

\description{
  Estimation of discrepancies based on sequential order differences in a vector.
}

\usage{
 varDiff(x, na.rm=FALSE, diff=1L, ...)
 sdDiff(x, na.rm=FALSE, diff=1L, ...)
 madDiff(x, na.rm=FALSE, diff=1L, ...)
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

\author{Henrik Bengtsson}

\seealso{
  See \code{\link[base]{diff}}().
}

\references{
 [1] J. von Neumann et al., \emph{The mean square successive difference}.
     Annals of Mathematical Statistics, 1941, 12, 153-162.\cr
}




\keyword{iteration}
\keyword{robust}
\keyword{univar}
