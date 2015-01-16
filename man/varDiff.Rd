%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  varDiff.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{varDiff}
\alias{varDiff}

\alias{sdDiff}
\alias{madDiff}
\alias{iqrDiff}
\alias{colVarDiffs}
\alias{rowVarDiffs}
\alias{colSdDiffs}
\alias{rowSdDiffs}
\alias{colMadDiffs}
\alias{rowMadDiffs}
\alias{colIQRDiffs}
\alias{rowIQRDiffs}

\title{Estimation of discrepancies based on sequential order differences in a vector}

\description{
  Estimation of discrepancies based on sequential order differences in a vector.
}

\usage{
 varDiff(x, na.rm=FALSE, diff=1L, trim=0, ...)
 colVarDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)
 rowVarDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)

 sdDiff(x, na.rm=FALSE, diff=1L, trim=0, ...)
 colSdDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)
 rowSdDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)

 madDiff(x, na.rm=FALSE, diff=1L, trim=0, ...)
 colMadDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)
 rowMadDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)

 iqrDiff(x, na.rm=FALSE, diff=1L, trim=0, ...)
 colIQRDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)
 rowIQRDiffs(x, na.rm=FALSE, diff=1L, trim=0, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N or a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s are excluded, otherwise not.}
 \item{diff}{The positional distance of elements for which the
    difference should be calculated.}
 \item{trim}{A \code{\link[base]{double}} in [0,1/2] specifying the fraction of
    observations to be trimmed from each end of (sorted) \code{x}
    before estimation.  If \code{trim=1}, then all data points
    are trimmed.}
 \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length 1, length N, or length K.
}

\author{Henrik Bengtsson}

\seealso{
  See \code{\link{diff2}}().
}

\references{
 [1] J. von Neumann et al., \emph{The mean square successive difference}.
     Annals of Mathematical Statistics, 1941, 12, 153-162.\cr
}




\keyword{iteration}
\keyword{robust}
\keyword{univar}
