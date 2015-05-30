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
 rowDiffs(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...)
 colDiffs(x, rows=NULL, cols=NULL, lag=1L, differences=1L, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{rows, cols}{A \code{\link[base]{vector}} indicating subset of rows (and/or columns)
    to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
 \item{lag}{An \code{\link[base]{integer}} specifying the lag.}
 \item{differences}{An \code{\link[base]{integer}} specifying the order of difference.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} Nx(K-1) or (N-1)xK \code{\link[base]{matrix}}.
}

\examples{
x <- matrix(1:27, ncol=3)

d1 <- rowDiffs(x)
print(d1)

d2 <- t(colDiffs(t(x)))
stopifnot(all.equal(d2, d1))
}

\author{Henrik Bengtsson}

\seealso{
  See also \code{\link{diff2}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
