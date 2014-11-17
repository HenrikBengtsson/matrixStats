%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  meanOver.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{meanOver}
\alias{meanOver}


\title{Fast averaging over subset of vector elements}

\usage{
meanOver(x, idxs=NULL, na.rm=FALSE, refine=TRUE, ...)
}

\description{
  Computes the  sample mean of all or a subset of values.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N.}
  \item{idxs}{A \code{\link[base]{numeric}} index \code{\link[base]{vector}} in [1,N] of elements to mean over.
     If \code{\link[base]{NULL}}, all elements are considered.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are skipped, otherwise not.}
  \item{refine}{If \code{\link[base:logical]{TRUE}} and \code{x} is \code{\link[base]{numeric}}, then extra effort is
     used to calculate the average with greater numerical precision,
     otherwise not.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\details{
  \code{meanOver(x, idxs)} gives equivalent results as
  \code{mean(x[idxs])}, but is faster and more memory efficient
  since it avoids the actual subsetting which requires copying
  of elements and garbage collection thereof.

  If \code{x} is \code{\link[base]{numeric}} and \code{refine=TRUE}, then a two-pass scan
  is used to calculate the average.  The first scan calculates the total
  sum and divides by the number of (non-missing) values.  In the second
  scan, this average is refined by adding the residuals towards the first
  average.  The \code{\link[base]{mean}}() uses this approach.
  \code{meanOver(..., refine=FALSE)} is almost twice as fast as
  \code{meanOver(..., refine=TRUE)}.
}

\examples{
x <- 1:10
n <- length(x)

idxs <- seq(from=1, to=n, by=2)
s1 <- mean(x[idxs])                        # 25
s2 <- meanOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

idxs <- seq(from=n, to=1, by=-2)
s1 <- mean(x[idxs])                        # 25
s2 <- meanOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

s1 <- mean(x)                              # 55
s2 <- meanOver(x)                          # 55
stopifnot(identical(s1, s2))
}

\seealso{
  \code{\link[base]{mean}}().
  To efficiently sum over a subset, see \code{\link{sumOver}}().
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{internal}
