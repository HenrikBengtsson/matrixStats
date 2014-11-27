%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowCumsums.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowCumsums}
\alias{rowCumsums}

\alias{rowCumsums}
\alias{colCumsums}
\alias{rowCumprods}
\alias{colCumprods}
\alias{rowCummins}
\alias{colCummins}
\alias{rowCummaxs}
\alias{colCummaxs}

\title{Cumulative sums, products, minima and maxima for each row (column) in a matrix}

\description{
  Cumulative sums, products, minima and maxima for each row (column) in a matrix.
}

\usage{
 rowCumsums(x, dim.=dim(x), ...)
 colCumsums(x, dim.=dim(x), ...)
 rowCumprods(x, dim.=dim(x), ...)
 colCumprods(x, dim.=dim(x), ...)
 rowCummins(x, dim.=dim(x), ...)
 colCummins(x, dim.=dim(x), ...)
 rowCummaxs(x, dim.=dim(x), ...)
 colCummaxs(x, dim.=dim(x), ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}} of the same mode as \code{x}.
}

\examples{
x <- matrix(1:12, nrow=4, ncol=3)
print(x)

yr <- rowCumsums(x)
print(yr)

yc <- colCumsums(x)
print(yc)

yr <- rowCumprods(x)
print(yr)

yc <- colCumprods(x)
print(yc)

yr <- rowCummaxs(x)
print(yr)

yc <- colCummaxs(x)
print(yc)

yr <- rowCummins(x)
print(yr)

yc <- colCummins(x)
print(yc)
}

\author{Henrik Bengtsson}

\seealso{
  See \code{\link[base]{cumsum}}(), \code{\link[base]{cumprod}}(),
      \code{\link[base]{cummin}}(), and \code{\link[base]{cummax}}().
}




\keyword{array}
\keyword{iteration}
\keyword{univar}
