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
whichIs(x, value, op=c("==", "!=", "<", "<=", ">", ">="), ...)
}

\description{
  Identifying vector elements based on comparision to a scalar.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length K.}
  \item{value}{A \code{\link[base]{numeric}} scalar.}
  \item{op}{A \code{\link[base]{character}} string specifying the comparison to use.}
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of indices in [1,K].
}

\details{
  \code{which(x, value, op)} is more memory efficient than the corresponding
  \code{which(x OP value)} call, because the latter allocates a temporary
  logical vector of length K whereas the former does not.  Moreover,
  if the types of \code{x} and \code{value} are such that \code{x} needs to
  be coerced to that of \code{value}, then another temporary vector of type
  \code{typeof(value)} and length K needs to be allocated.
}

\author{Henrik Bengtsson}


\keyword{univar}
