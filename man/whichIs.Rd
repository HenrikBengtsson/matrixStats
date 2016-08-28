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
whichIs(x, op=c("==", "!=", "<", "<=", ">", ">="), y, ...)
}

\description{
  Identifying vector elements based on comparision to a scalar.
}

\arguments{
  \item{x, y}{A \code{\link[base]{vector}} of length K and a scalar
    (either of \code{x} and \code{y} have to be a scalar).
    These arguments may be of type logical, integer or numeric.
  }
  \item{op}{A \code{\link[base]{character}} string specifying the comparison to use.}
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of indices in [1,K].
}

\details{
  The function is consistent with
  \code{\link[base]{which}(x op y, arr.ind=FALSE, useNames=FALSE)}
  and either one of \code{x} and \code{y} is a scalar.
  \code{which(x, op, y)} is more memory efficient than the corresponding
  \code{which(x op y)} call, because the latter allocates a temporary
  logical vector of length K whereas the former does not.
  Moreover, if the types of \code{x} and \code{y} are such that the
  non-scalar one needs to be coerced to the type of the scalar, then
  another temporary vector of length K needs to be allocated in the case
  of using \code{which(x op y)} whereas this is not the case for
  \code{whichIs(x, op, y)}.
}

\seealso{
}

\author{Henrik Bengtsson}


\keyword{univar}
