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
 rowProds(x, rows=NULL, cols=NULL, na.rm=FALSE, method=c("direct", "expSumLog"), ...)
 colProds(x, rows=NULL, cols=NULL, na.rm=FALSE, method=c("direct", "expSumLog"), ...)
 product(x, idxs=NULL, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{idxs, rows, cols}{A \code{\link[base]{vector}} indicating subset of elements (or rows and/or columns)
    to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
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
  Note, if \code{method="expSumLog"}, \code{na.rm=FALSE}, and \code{x}
  contains missing values (\code{\link[base]{NA}} or \code{\link[base:is.finite]{NaN}}), then the calculated value
  is also missing value.
  Note that it depends on platform whether \code{\link[base:is.finite]{NaN}} or \code{\link[base]{NA}} is returned
  when an \code{\link[base:is.finite]{NaN}} exists, cf. \code{\link[base]{is.nan}}().
}

\author{Henrik Bengtsson}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
