%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowCounts.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowCounts}
\alias{rowCounts}

\alias{colCounts}
\alias{rowCounts,matrix-method}
\alias{colCounts,matrix-method}
\alias{rowAnys}
\alias{rowAnys,matrix-method}
\alias{colAnys}
\alias{colAnys,matrix-method}
\alias{rowAlls}
\alias{rowAlls,matrix-method}
\alias{colAlls}
\alias{colAlls,matrix-method}

\title{Counts the number of TRUE values in each row (column) of a matrix}

\description{
  Counts the number of TRUE values in each row (column) of a matrix.
}

\usage{
  rowCounts(x, na.rm=FALSE, ...)
  colCounts(x, na.rm=FALSE, ...)
  rowAlls(x, na.rm=FALSE, ...)
  colAlls(x, na.rm=FALSE, ...)
  rowAnys(x, na.rm=FALSE, ...)
  colAnys(x, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{logical}} NxK \code{\link[base]{matrix}}.}
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

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}





\keyword{array}
\keyword{logic}
\keyword{iteration}
\keyword{univar}
