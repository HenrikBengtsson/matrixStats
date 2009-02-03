%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowProds.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowProds}
\alias{rowProds}

\alias{rowProds}
\alias{colProds}

\title{Calculates the product for each row (column) in a matrix}

\description{
  Calculates the product for each row (column) in a matrix.
}

\usage{
 rowProds(x, ...)
 colProds(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{...}{Arguments passed to \code{\link[base]{rowSums}}().}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\details{
  Internally the product is calculated via the logarithmic transform,
  treating zeros and negative values specially.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
