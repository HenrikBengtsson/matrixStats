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
 rowMads(x, center=NULL, constant=1.4826, na.rm=FALSE, dim.=dim(x), centers=NULL, ...)
 colMads(x, center=NULL, constant=1.4826, na.rm=FALSE, dim.=dim(x), centers=NULL, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{center}{A optional \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K) with centers.
    By default, they are calculated using \code{\link{rowMedians}}().}
 \item{constant}{A scale factor.  See \code{\link[stats]{mad}} for details.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are removed first, otherwise not.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{...}{Additional arguments passed to \code{\link{rowVars}}() and
    \code{\link{rowMedians}}(), respectively.}
 \item{centers}{(deprectated) use \code{center} instead.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[stats]{sd}}, \code{\link[stats]{mad}} and \code{\link[stats:cor]{var}}.
  \code{\link{rowIQRs}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
