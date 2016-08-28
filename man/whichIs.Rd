%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  whichIs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{whichIs}
\alias{whichIs}


\title{Identifying vector elements based on comparision to a scalar}

\usage{
whichIs(x, y, op=c("==", "!=", "<", "<=", ">", ">="), ...)
}

\description{
  Identifying vector elements based on comparision to a scalar.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length K.}
  \item{y}{A \code{\link[base]{numeric}} scalar.}
  \item{op}{A \code{\link[base]{character}} string specifying the comparison to use.}
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of indices in [1,K].
}

\author{Henrik Bengtsson}


\keyword{univar}
