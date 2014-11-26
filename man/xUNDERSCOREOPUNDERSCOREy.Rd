%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  x_OP_y.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{xUNDERSCOREOPUNDERSCOREy}
\alias{xUNDERSCOREOPUNDERSCOREy}

\alias{x_OP_y}
\alias{t_tx_OP_y}

\title{Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y)'}

\usage{
 x_OP_y(x, y, OP, commute=FALSE, na.rm=FALSE)
 t_tx_OP_y(x, y, OP, commute=FALSE, na.rm=FALSE)
}

\description{
  Fast calculation of 'z <- x OP y' and 'z <- t(t(x) OP y)', where OP can be +, -, *, and /.
  For + and *, na.rm=TRUE will drop missing values first.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
  \item{y}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length L.}
  \item{OP}{A \code{\link[base]{character}} specifying which operator to use.}
  \item{commute}{If \code{\link[base:logical]{TRUE}}, 'y OP x' ('t(y OP t(x))') is calculated,
      otherwise 'x OP y' ('t(t(x) OP y)').}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are ignored, otherwise not.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
}

\section{Missing values}{
  If \code{na.rm=TRUE}, then missing values are "dropped" before applying
  the operator to each pair of values.  For instance, if \code{x[1,1]} is
  a missing value, then the result of \code{x[1,1] + y[1]} equals
  \code{y[1]}.  If also \code{y[1]} is a missing value, then the result
  is a missing value.  This only applies to additions and multiplications.
  For subtractions and divisions, argument \code{na.rm} is ignored.
}

\examples{
x <- matrix(c(1,2,3,NA,5,6), nrow=3, ncol=2)

# Add 'y' to each column
y <- 1:2
z0 <- x + y
z1 <- x_OP_y(x, y, OP="+")
print(z1)
stopifnot(all.equal(z1, z0))


# Add 'y' to each row
y <- 1:3
z0 <- t(t(x) + y)
z1 <- t_tx_OP_y(x, y, OP="+")
print(z1)
stopifnot(all.equal(z1, z0))





}

\author{Henrik Bengtsson}


\keyword{internal}
