%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowIQRs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowIQRs}
\alias{rowIQRs}

\alias{colIQRs}

\title{Estimates of the interquartile range for each row (column) in a matrix}

\description{
  Estimates of the interquartile range for each row (column) in a matrix.
}

\usage{
 rowIQRs(x, ...)
 colIQRs(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{...}{Additional arguments passed to \code{\link{rowQuantiles}}()
    (\code{colQuantiles()}).}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\examples{
set.seed(1)

x <- matrix(rnorm(50*40), nrow=50, ncol=40)
str(x)

# Row IQRs
q <- rowIQRs(x)
print(q)
q0 <- apply(x, MARGIN=1, FUN=IQR)
stopifnot(all.equal(q0, q))

# Column IQRs
q <- colIQRs(x)
print(q)
q0 <- apply(x, MARGIN=2, FUN=IQR)
stopifnot(all.equal(q0, q))
}

\author{Henrik Bengtsson}

\seealso{
  See \code{\link[stats]{IQR}}.
  See \code{\link{rowSds}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
