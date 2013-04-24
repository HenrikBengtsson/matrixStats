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
\alias{rowRanges,matrix-method}
\alias{colRanges,matrix-method}
\alias{rowMins}
\alias{rowMins,matrix-method}
\alias{rowMaxs}
\alias{rowMaxs,matrix-method}
\alias{colMins}
\alias{colMins,matrix-method}
\alias{colMaxs}
\alias{colMaxs,matrix-method}

\title{Gets the range of values in each row (column) of a matrix}

\description{
  Gets the range of values in each row (column) of a matrix.
}

\usage{
  rowRanges(x, na.rm=FALSE, ...)
  colRanges(x, na.rm=FALSE, ...)
  rowMins(x, na.rm=FALSE, ...)
  colMins(x, na.rm=FALSE, ...)
  rowMaxs(x, na.rm=FALSE, ...)
  colMaxs(x, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded first, otherwise not.}
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

\details{
  The \code{rowRanges()} function uses the much faster \code{\link{rowOrderStats}}()
  if there are no missing values.
}

\author{Henrik Bengtsson}

\seealso{
  \code{\link{rowOrderStats}}() and \code{\link{rowRanges}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
