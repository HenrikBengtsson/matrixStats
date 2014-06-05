%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowCounts.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowCounts}
\alias{rowCounts}

\alias{rowCounts.matrix}
\alias{colCounts}
\alias{colCounts.matrix}
\alias{rowAnys}
\alias{rowAnys.matrix}
\alias{colAnys}
\alias{colAnys.matrix}
\alias{rowAlls}
\alias{rowAlls.matrix}
\alias{colAlls}
\alias{colAlls.matrix}

\title{Counts the number of TRUE values in each row (column) of a matrix}

\description{
  Counts the number of TRUE values in each row (column) of a matrix.
}

\usage{
  \method{rowCounts}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
  \method{colCounts}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
  \method{rowAlls}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
  \method{colAlls}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
  \method{rowAnys}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
  \method{colAnys}{matrix}(x, value=TRUE, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{An NxK \code{\link[base]{matrix}}.}
 \item{value}{A value to search for.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded first, otherwise not.}
 \item{...}{Not used.}
}

\value{
  \code{rowCounts()} (\code{colCounts()}) returns an \code{\link[base]{integer}} \code{\link[base]{vector}}
  of length N (K).
  The other methods returns a \code{\link[base]{logical}} \code{\link[base]{vector}} of length N (K).
}

\examples{
x <- matrix(FALSE, nrow=10, ncol=5)
x[3:7,c(2,4)] <- TRUE
x[2:4,] <- TRUE
x[,1] <- TRUE
x[5,] <- FALSE
x[,5] <- FALSE

print(x)

print(rowCounts(x))       # 1 4 4 4 0 3 3 1 1 1
print(colCounts(x))       # 9 5 3 5 0

print(rowAnys(x))
print(which(rowAnys(x)))  # 1  2  3  4  6  7  8  9 10
print(colAnys(x))
print(which(colAnys(x)))  # 1 2 3 4
}

\author{Henrik Bengtsson}





\keyword{array}
\keyword{logic}
\keyword{iteration}
\keyword{univar}
