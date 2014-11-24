%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowMedians.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowMedians}
\alias{rowMedians}

\alias{colMedians}
\alias{rowMedians,matrix-method}
\alias{colMedians,matrix-method}

\title{Calculates the median for each row (column) in a matrix}

\description{
  Calculates the median for each row (column) in a matrix.
}

\usage{
 rowMedians(x, na.rm=FALSE, dim.=dim(x), ...)
 colMedians(x, na.rm=FALSE, dim.=dim(x), ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded first, otherwise not.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\details{
  The implementation of \code{rowMedians()} and \code{colMedians()}
  is optimized for both speed and memory.
  To avoid coercing to \code{\link[base]{double}}s (and hence memory allocation), there
  is a special implementation for \code{\link[base]{integer}} matrices.
  That is, if \code{x} is an \code{\link[base]{integer}} \code{\link[base]{matrix}}, then
  \code{rowMedians(as.double(x))} (\code{rowMedians(as.double(x))})
  would require three times the memory of \code{rowMedians(x)}
  (\code{colMedians(x)}), but all this is avoided.
}

\author{Henrik Bengtsson, Harris Jaffee}

\seealso{
  See \code{\link{rowMedians}}() and \code{colMedians()} for weighted medians.
  For mean estimates, see \code{rowMeans()} in \code{\link[base]{colSums}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
