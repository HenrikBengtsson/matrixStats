%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  binMeans.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{binMeans}
\alias{binMeans.default}
\alias{binMeans}

\title{Fast mean calculations in non-overlapping bins}

\usage{\method{binMeans}{default}(y, x, bx, na.rm=TRUE, count=TRUE, ...)}

\description{
  Computes the sample means in non-overlapping bins
}

\arguments{
  \item{y}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K values to calculate means on.}
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K positions for to be binned.}
  \item{bx}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of B+1 ordered positions specifying
     the B bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
     \code{[bx[B],bx[B+1])}.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values in \code{y} are dropped
     before calculating the mean, otherwise not.}
  \item{count}{If \code{\link[base:logical]{TRUE}}, the number of data points in each bins is
     returned as attribute \code{count}, which is an \code{\link[base]{integer}} \code{\link[base]{vector}}
     of length B.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length B.
}

\section{Missing and non-finite values}{
  Data points where either of \code{y} and {x} is missing are dropped.
  Non-finite values in code{y} are not allowed and gives an error.
  Missing values in \code{bx} are not allowed and gives an error.
}

\examples{
x <- 1:200
mu <- double(length(x))
mu[1:50] <- 5
mu[101:150] <- -5
y <- mu + rnorm(length(x))

# Binning
bx <- c(0,50,100,150,200)+0.5
yS <- binMeans(y, x=x, bx=bx)

plot(x,y)
for (kk in seq(along=yS)) {
  lines(bx[c(kk,kk+1)], yS[c(kk,kk)], col="blue", lwd=2)
}
}

\seealso{
  \code{\link{binCounts}}().
  \code{\link[stats]{aggregate}} and \code{\link[base]{mean}}().
}

\references{
  [1] R-devel thread \emph{Fastest non-overlapping binning mean function
      out there?} on Oct 3, 2012\cr
}

\author{
  Henrik Bengtsson with initial code contributions by Martin Morgan [1].
}


\keyword{univar}
