%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowQuantiles.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowQuantiles}
\alias{rowQuantiles}

\alias{colQuantiles}

\title{Estimates quantiles for each row (column) in a matrix}

\description{
  Estimates quantiles for each row (column) in a matrix.
}

\usage{
 rowQuantiles(x, probs=seq(from=0, to=1, by=0.25), ..., drop=TRUE)
 colQuantiles(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}} with N >= 0.}
 \item{probs}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of J probabilities in [0,1].}
 \item{...}{Additional arguments passed to \code{\link[stats]{quantile}}.}
 \item{drop}{If TRUE, singleton dimensions in the result are dropped,
   otherwise not.}
}

\value{
  Returns a \code{\link[base]{numeric}} JxN (JxK) \code{\link[base]{matrix}}, where
  N (K) is the number of rows (columns) for which the J quantiles are
  calculated.
}

\examples{
set.seed(1)

x <- matrix(rnorm(50*40), nrow=50, ncol=40)
str(x)

probs <- c(0.25,0.5,0.75)

# Row quantiles
q <- rowQuantiles(x, probs=probs)
print(q)
q0 <- apply(x, MARGIN=1, FUN=quantile, probs=probs)
stopifnot(all.equal(q0, t(q)))

# Column IQRs
q <- colQuantiles(x, probs=probs)
print(q)
q0 <- apply(x, MARGIN=2, FUN=quantile, probs=probs)
stopifnot(all.equal(q0, t(q)))
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link[stats]{quantile}}.
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
