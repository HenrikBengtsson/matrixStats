%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowSumsInLogspace.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowSumsInLogspace}
\alias{rowSumsInLogspace}

\alias{colSumsInLogspace}
\alias{rowSumsInLogspace,matrix-method}
\alias{colSumsInLogspace,matrix-method}

\title{Accurately computes log(sum(x)) of rows or columns}

\description{
  Accurately computes log(sum(x)) of rows or columns.
}

\usage{
 rowSumsInLogspace(lx, ...)
 colSumsInLogspace(lx, ...)
}

\arguments{
 \item{lx}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}} of \eqn{log(x)} values.}
 \item{...}{Additional arguments passed to \code{\link{sumInLogspace}}().}
}

\value{
 A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\author{Henrik Bengtsson, Nakayama X}

\seealso{
  Internally, \code{\link{sumInLogspace}}().
}




\keyword{array}
\keyword{iteration}
\keyword{univar}
