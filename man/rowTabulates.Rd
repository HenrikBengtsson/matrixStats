%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowTabulates.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowTabulates}
\alias{rowTabulates}

\alias{rowdTabulates}
\alias{colTabulates}
\alias{rowTabulates,matrix-method}
\alias{colTabulates,matrix-method}

\title{Tabulates the values in a matrix by row (column)}

\description{
 Tabulates the values in a matrix by row (column).
}

\usage{
  rowTabulates(x, values=NULL, ...)
  colTabulates(x, values=NULL, ...)
}

\arguments{
  \item{x}{An \code{\link[base]{integer}} or \code{\link[base]{raw}} NxK \code{\link[base]{matrix}}.}
  \item{values}{An \code{\link[base]{vector}} of J values of count. If \code{\link[base]{NULL}}, all (unique)
   values are counted.}
  \item{...}{Not used.}
}

\value{
  Returns a NxJ (KxJ) \code{\link[base]{matrix}} where
  N (K) is the number of row (column) \code{\link[base]{vector}}s tabulated and
  J is the number of values counted.
}

\examples{
x <- matrix(1:5, nrow=10, ncol=5)
print(x)
print(rowTabulates(x))
print(colTabulates(x))
# Count only certain values
print(rowTabulates(x, values=1:3))


y <- as.raw(x)
dim(y) <- dim(x)
print(y)
print(rowTabulates(y))
print(colTabulates(y))
}

\author{Henrik Bengtsson}


\keyword{utilities}
