%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowRanges.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowRanges}
\alias{rowRanges}

\alias{colRanges}
\alias{rowMins}
\alias{rowMaxs}
\alias{colMins}
\alias{colMaxs}

\title{Gets the range of values in each row (column) of a matrix}

\description{
  Gets the range of values in each row (column) of a matrix.
}

\usage{
  rowRanges(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
  colRanges(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
  rowMins(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
  colMins(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
  rowMaxs(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
  colMaxs(x, rows=NULL, cols=NULL, na.rm=FALSE, dim.=dim(x), ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{rows, cols}{A \code{\link[base]{vector}} indicating subset of rows (and/or columns)
    to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded first, otherwise not.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{...}{Not used.}
}

\value{
  \code{rowRanges()} (\code{colRanges()}) returns a
  \code{\link[base]{numeric}} Nx2 (Kx2) \code{\link[base]{matrix}}, where
  N (K) is the number of rows (columns) for which the ranges are
  calculated.

  \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a
  \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{rowOrderStats}}() and \code{\link[base]{pmin.int}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
