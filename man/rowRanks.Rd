%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowRanks.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowRanks}
\alias{rowRanks}

\alias{colRanks}
\alias{rowRanks,matrix-method}
\alias{colRanks,matrix-method}

\title{Gets the rank of each row (column) of a matrix}

\description{
  Gets the rank of each row (column) of a matrix.
}

\usage{
 rowRanks(x, ...)
 colRanks(x, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} or \code{\link[base]{integer}} NxK \code{\link[base]{matrix}}.}
 \item{...}{Not used.}
}

\value{
  \code{rowRanks()} (\code{colRanks()}) returns an \code{\link[base]{integer}} NxK
  (KxN) \code{\link[base]{matrix}}.
}

\details{
  The row- (column-) ranks of \code{x} are collected as \emph{rows}
  of the result matrix.
  The implementation is optimized for both speed and memory.
  To avoid coercing to \code{\link[base]{double}}s (and hence memory allocation), there
  is a unique implementation for \code{\link[base]{integer}} matrices.
  Currently, \code{colRanks(x)} is just \code{rowRanks(t(x))}.
  Any \code{\link[base]{names}} of \code{x} are ignored and absent in the result.
}

\section{Missing and non- values}{
  These are ranked as \code{NA}, as with \code{na.last="keep"}
  in the \code{\link[base]{rank}}() function.
}

\section{Ties}{
  Ties are ranked equally, as with setting \code{ties.method="max"}
  in the \code{\link[base]{rank}}() function.
}

\author{
  Hector Corrada Bravo and Harris Jaffee.
  The native implementation of \code{rowRanks()} was adapted from
  Robert Gentleman's \code{\link[Biobase]{rowQ}} in the \pkg{Biobase} package.
}

\seealso{
  \code{\link[base]{rank}}().
  For developers, see also Section 'Utility functions' in
  'Writing R Extensions manual', particularly the native functions
  \code{R_qsort_I()} and \code{R_qsort_int_I()}.
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
