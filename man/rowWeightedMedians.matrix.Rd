%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowWeightedMedians.matrix.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\name{rowWeightedMedians.matrix}
\alias{rowWeightedMedians.matrix}
\alias{rowWeightedMedians}
\alias{colWeightedMedians}
\alias{colWeightedMedians.matrix}

\title{Calculates the weighted medians for each row (column) in a matrix}

\description{
  Calculates the weighted medians for each row (column) in a matrix.
}

\usage{
 \method{rowWeightedMedians}{matrix}(x, w=NULL, na.rm=FALSE, ...)
 \method{colWeightedMedians}{matrix}(x, w=NULL, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{w}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length K (N).}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are excluded from the calculation,
   otherwise not.}
 \item{...}{Additional arguments passed to \code{\link{weightedMedian}}().}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\details{
  The implementations of these methods are optimized for both speed
  and memory.
  If no weights are given, the corresponding
  \code{\link{rowMedians}}()/\code{colMedians()} is used.
}

\examples{
 x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Non-weighted row averages
xM0 <- rowMedians(x)
xM <- rowWeightedMedians(x)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (uniform weights)
w <- rep(2.5, ncol(x))
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted averages by rows and columns
w <- 1:4
xM1 <- rowWeightedMedians(x, w=w)
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM1))

}

\author{Henrik Bengtsson}

\seealso{
  See \code{\link{rowMedians}}() and \code{colMedians()} for non-weighted medians.
  Internally, \code{\link{weightedMedian}}() is used.
}





\keyword{methods}
\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
