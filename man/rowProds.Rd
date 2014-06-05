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
 colProds(x, na.rm=FALSE, method=c("expSumLog", "direct"), ...)
 product(x, na.rm=FALSE, ...)
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
  If \code{method="expSumLog"}, then then \code{\link{product}}() function
  is used, which calculates the produce via the logarithmic transform
  (treating negative values specially).  This improves the precision
  and lowers the risk for numeric overflow.
  If \code{method="direct"}, the direct product is calculated via
  the \code{\link[base]{prod}}() function.
}

\section{Missing values}{
  Note, if \code{method="expSumLog"} and \code{na.rm=FALSE}, then
  results returns \code{\link[base]{NA}} regardless of whether there were only \code{\link[base:is.finite]{NaN}}
  but no \code{\link[base]{NA}} in the first place, e.g. \code{product(NaN)} returns \code{\link[base]{NA}}
  and \code{product(c(NA, NaN))} returns \code{\link[base]{NA}}.
  This is contrary to \code{\link[base]{prod}}(), which can distinguish between
  the two, e.g. \code{prod(NaN)} returns \code{\link[base:is.finite]{NaN}} and
  \code{prod(c(NA, NaN))} returns \code{\link[base]{NA}}.
  The reason for this discrepancy is that it is not possible for
  \code{product()} to be consistent with \code{prod()} in this sense
  without major performance penalities.
}

\author{Henrik Bengtsson}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
