%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowQuantiles.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowQuantiles}
\alias{rowQuantiles}

\alias{colQuantiles}
\alias{rowIQRs}
\alias{colIQRs}

\title{Estimates quantiles for each row (column) in a matrix}

\description{
  Estimates quantiles for each row (column) in a matrix.
}

\usage{
 rowQuantiles(x, probs=seq(from=0, to=1, by=0.25), ..., drop=TRUE)
 colQuantiles(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{probs}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of J probabilities in [0,1].}
 \item{...}{Additional arguments passed to \code{\link[stats]{quantile}}.}
 \item{drop}{If TRUE, singleton dimensions in the result are dropped,
   otherwise not.}
}

\value{
  Returns a \code{\link[base]{numeric}} NxJ (JxK) \code{\link[base]{matrix}}.
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[stats]{quantile}}.
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
