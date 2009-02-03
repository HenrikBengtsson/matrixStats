%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowSds.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowSds}
\alias{rowSds}

\alias{rowSds}
\alias{colSds}
\alias{rowMads}
\alias{colMads}
\alias{rowSds,matrix-method}
\alias{colSds,matrix-method}

\title{Standard deviation estimates for each row (column) in a matrix}

\description{
  Standard deviation estimates for each row (column) in a matrix.
}

\usage{
 rowSds(x, ...)
 colSds(x, ...)
 rowMads(x, centers=NULL, constant=1.4826, ...)
 colMads(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{centers}{A optional \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K) with centers.
    If \code{\link[base]{NULL}}, they are calculated using \code{\link{rowMedians}}().}
 \item{constant}{A scale factor.  See \code{\link[stats]{mad}} for details.}
 \item{...}{Additional arguments passed to \code{\link{rowVars}}() and
    \code{\link{rowMedians}}(), respectively.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  \code{\link[stats]{sd}}, \code{\link[stats]{mad}} and \code{\link[stats:cor]{var}}.
  \code{\link{rowQuantiles}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
