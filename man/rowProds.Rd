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
\alias{product}

\title{Calculates the product for each row (column) in a matrix}

\description{
  Calculates the product for each row (column) in a matrix.
}

\usage{
 rowProds(x, na.rm=FALSE, method=c("expSumLog", "direct"), ...)
 colProds(x, na.rm=FALSE, ...)
 product(x, na.rm=FALSE, method=c("expSumLog", "direct"), ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are ignored, otherwise not.}
 \item{method}{A \code{\link[base]{character}} string specifying how each product
  is calculated.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\details{
  If \code{method="expSumLog"}, then the product is calculated via
  the logarithmic transform (treating zeros and negative values
  specially).  This improves the precision and lowers the risk
  for numeric overflow.
  If \code{method="direct"}, the direct product is calculated
  via \code{\link[base]{prod}}().
}

\author{Henrik Bengtsson}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
