%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowVars.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowVars}
\alias{rowVars}

\alias{rowVars}
\alias{colVars}
\alias{rowVars,matrix-method}
\alias{colVars,matrix-method}

\title{Variance estimates for each row (column) in a matrix}

\description{
  Variance estimates for each row (column) in a matrix.
}

\usage{
 rowVars(x, na.rm=TRUE, center=NULL, dim.=dim(x), ...)
 colVars(x, na.rm=TRUE, center=NULL, dim.=dim(x), ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{center}{(optional) The center, defaults to the row means.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded first, otherwise not.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{...}{Additional arguments passed to \code{rowMeans()} and
    \code{rowSums()}.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\examples{
set.seed(1)

x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Row averages
print(rowMeans(x))
print(rowMedians(x))

# Column averages
print(colMeans(x))
print(colMedians(x))


# Row variabilities
print(rowVars(x))
print(rowSds(x))
print(rowMads(x))
print(rowIQRs(x))

# Column variabilities
print(rowVars(x))
print(colSds(x))
print(colMads(x))
print(colIQRs(x))


# Row ranges
print(rowRanges(x))
print(cbind(rowMins(x), rowMaxs(x)))
print(cbind(rowOrderStats(x, 1), rowOrderStats(x, ncol(x))))

# Column ranges
print(colRanges(x))
print(cbind(colMins(x), colMaxs(x)))
print(cbind(colOrderStats(x, 1), colOrderStats(x, nrow(x))))


x <- matrix(rnorm(2400), nrow=50, ncol=40)

# Row standard deviations
d <- rowDiffs(x)
s1 <- rowSds(d)/sqrt(2)
s2 <- rowSds(x)
print(summary(s1-s2))

# Column standard deviations
d <- colDiffs(x)
s1 <- colSds(d)/sqrt(2)
s2 <- colSds(x)
print(summary(s1-s2))
}

\author{Henrik Bengtsson}

\seealso{
  See \code{rowMeans()} and \code{rowSums()} in \code{\link[base]{colSums}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
