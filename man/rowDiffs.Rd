%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowDiffs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowDiffs}
\alias{rowDiffs}

\alias{colDiffs}

\title{Calculates difference for each row (column) in a matrix}

\description{
  Calculates difference for each row (column) in a matrix.
}

\usage{
 rowDiffs(x, ...)
 colDiffs(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} Nx(K-1) or (N-1)xK \code{\link[base]{matrix}}.
}

\author{Henrik Bengtsson}

\seealso{
  Internally \code{\link[base]{diff}}() is used.
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
