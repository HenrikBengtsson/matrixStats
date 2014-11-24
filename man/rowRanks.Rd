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
 rowRanks(x, ties.method=c("max", "average", "min"), dim.=dim(x), ...)
 colRanks(x, ties.method=c("max", "average", "min"), dim.=dim(x), preserveShape=FALSE,
  ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} or \code{\link[base]{integer}} NxK \code{\link[base]{matrix}}.}
 \item{ties.method}{A \code{\link[base]{character}} string specifying how ties are treated.
    For details, see below.}
 \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
 \item{preserveShape}{A \code{\link[base]{logical}} specifying whether the \code{\link[base]{matrix}}
    returned should preserve the input shape of \code{x}, or not.}
 \item{...}{Not used.}
}

\value{
 An \code{\link[base]{integer}} \code{\link[base]{matrix}} is returned.
 The \code{rowRanks()} function always returns an NxK \code{\link[base]{matrix}},
 where N (K) is the number of rows (columns) whose ranks are calculated.

 The \code{colRanks()} function returns an NxK \code{\link[base]{matrix}},
 if \code{preserveShape = TRUE}, otherwise a KxN \code{\link[base]{matrix}}.

%%  The mode of the returned matrix is \code{\link[base]{integer}}, except for
%%  \code{ties.method == "average"} when it is \code{\link[base]{double}}.
}

\details{
  The row ranks of \code{x} are collected as \emph{rows}
  of the result matrix.

  The column ranks of \code{x} are collected as \emph{rows}
  if \code{preserveShape = FALSE}, otherwise as \emph{columns}.

  The implementation is optimized for both speed and memory.
  To avoid coercing to \code{\link[base]{double}}s (and hence memory allocation), there
  is a unique implementation for \code{\link[base]{integer}} matrices.
  It is more memory efficient to do
  \code{colRanks(x, preserveShape=TRUE)} than
  \code{t(colRanks(x, preserveShape=FALSE))}.

  Any \code{\link[base]{names}} of \code{x} are ignored and absent in the result.
}

\section{Missing and non- values}{
  These are ranked as \code{NA}, as with \code{na.last="keep"}
  in the \code{\link[base]{rank}}() function.
}

\section{Ties}{
  When some values are equal ("ties"), argument \code{ties.method}
  specifies what their ranks should be.
  If \code{ties.method} is \code{"max"}, ties
  are ranked as the maximum value.
  If \code{ties.method} is \code{"average"}, ties are ranked
  by their average.
  If \code{ties.method} is \code{"max"} (\code{"min"}), ties
  are ranked as the maximum (minimum) value.
  If \code{ties.method} is \code{"average"}, ties are ranked
  by their average.
  For further details, see \code{\link[base]{rank}}().
}

\author{
  Hector Corrada Bravo and Harris Jaffee.
  Peter Langfelder for adding 'ties.method' support.
  Henrik Bengtsson adapted the original native implementation
  of \code{rowRanks()} from Robert Gentleman's \code{rowQ()}
  in the \pkg{Biobase} package.
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
