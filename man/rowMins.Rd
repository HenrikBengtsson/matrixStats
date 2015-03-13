%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowMins.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowMins}
\alias{rowMins}

\alias{colMins}

\title{Find the min elements for each row (column) in a matrix}

\description{
  Find the min elements for each row (column) in a matrix.
}

\usage{
 rowMins_R(x, cols=1:dim(x)[2], ...)
 colMins_R(x, rows=1:dim(x)[1], ...)
}

\arguments{
 \item{x}{A NxK \code{\link[base]{matrix}}.}
 \item{cols}{An \code{\link[base]{integer}} \code{\link[base]{vector}} specifying the columns considered}
 \item{rows}{An \code{\link[base]{integer}} \code{\link[base]{vector}} specifying the rows considered}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of length N.
}

\author{Dongcan Jiang}

\seealso{
  \code{\link{rowMins}}() and \code{\link{colMins}}()
}


\keyword{array}
