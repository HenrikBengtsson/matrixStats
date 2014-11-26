%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  x_OP_y.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{xUNDERSCOREOPUNDERSCOREy}
\alias{xUNDERSCOREOPUNDERSCOREy}

\alias{t_tx_OP_y}

\title{Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y'}

\usage{
x_OP_y(x, y, FUN, na.rm=FALSE)
}

\description{
  Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y', where OP can be +, -, *, and /.
  For + and *, na.rm=TRUE will drop missing values first.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
  \item{y}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length L.}
  \item{FUN}{A \code{\link[base]{character}} specifying which operator to use.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are skipped, otherwise not.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
}

\examples{
x <- matrix(c(1,2,3,NA,5,6), nrow=3, ncol=2)

# Add 'y' to each column
y <- 1:2
z0 <- x + y
z1 <- x_OP_y(x, y, FUN="+")
print(z1)
stopifnot(all.equal(z1, z0))


# Add 'y' to each row
y <- 1:3
z0 <- t(t(x) + y)
z1 <- t_tx_OP_y(x, y, FUN="+")
print(z1)
stopifnot(all.equal(z1, z0))





}

\author{Henrik Bengtsson}


\keyword{internal}
