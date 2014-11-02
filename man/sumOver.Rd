%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  sumOver.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{sumOver}
\alias{sumOver}


\title{Fast sum over subset of vector elements}

\usage{
sumOver(x, na.rm=FALSE, idxs=NULL, ...)
}

\description{
  Computes the sum of all or a subset of values.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are skipped, otherwise not.}
  \item{idxs}{A \code{\link[base]{numeric}} index \code{\link[base]{vector}} in [1,N] of elements to sum over.
     If \code{\link[base]{NULL}}, all elements are considered.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar of the same type as argument \code{x}.
  If \code{x} is integer, then integer overflow occurs if the
  \emph{sum} is outside the range of defined integer values.
}

\details{
  \code{sumOver(x, idxs)} gives equivalent results as
  \code{sum(x[idxs])}, but is faster and more memory efficient
  since it avoids the actual subsetting which requires copying
  of elements and garbage collection thereof.
}

\examples{
x <- 1:10
n <- length(x)

idxs <- seq(from=1, to=n, by=2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

idxs <- seq(from=n, to=1, by=-2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

s1 <- sum(x)                              # 55
s2 <- sumOver(x)                          # 55
stopifnot(identical(s1, s2))

}

\seealso{
  \code{\link[base]{sum}}().
}

\author{Henrik Bengtsson}


\keyword{univar}
