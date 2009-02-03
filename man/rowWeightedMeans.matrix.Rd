%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowWeightedMeans.matrix.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{rowWeightedMeans.matrix}
\alias{rowWeightedMeans.matrix}
\alias{rowWeightedMeans.matrix}

\alias{rowWeightedMeans}
\alias{colWeightedMeans}
\alias{colWeightedMeans.matrix}

\title{Calculates the weighted means for each row (column) in a matrix}

\description{
  Calculates the weighted means for each row (column) in a matrix.
}

\usage{
 \method{rowWeightedMeans}{matrix}(x, w=NULL, na.rm=FALSE, ...)
 \method{colWeightedMeans}{matrix}(x, w=NULL, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{w}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length K (N).}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are excluded from the calculation,
   otherwise not.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\details{
  The implementations of these methods are optimized for both speed
  and memory.
  If no weights are given, the corresponding
  \code{rowMeans()}/\code{colMeans()} are used, respectively.
}

\examples{
x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Non-weighted row averages
xM0 <- rowMeans(x)
xM <- rowWeightedMeans(x)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (uniform weights)
w <- rep(2.5, ncol(x))
xM <- rowWeightedMeans(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMeans(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMeans(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowMeans(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMeans(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted averages by rows and columns
w <- 1:4
xM1 <- rowWeightedMeans(x, w=w)
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM1))
}

\author{Henrik Bengtsson (\url{http://www.braju.com/R/})}

\seealso{
  See \code{rowSums()} and \code{colSums()} in \code{\link[base]{colSums}}().
}





\keyword{methods}
\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
