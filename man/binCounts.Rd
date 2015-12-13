%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  binCounts.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{binCounts}
\alias{binCounts}


\title{Fast element counting in non-overlapping bins}

\usage{
binCounts(x, idxs=NULL, bx, right=FALSE, ...)
}

\description{
  Counts the number of elements in non-overlapping bins
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of K positions for to be binned and counted.}
  \item{idxs}{A \code{\link[base]{vector}} indicating subset of elements
     to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
  \item{bx}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of B+1 ordered positions specifying
     the B > 0 bins \code{[bx[1],bx[2])}, \code{[bx[2],bx[3])}, ...,
     \code{[bx[B],bx[B+1])}.}
  \item{right}{If \code{\link[base:logical]{TRUE}}, the bins are right-closed (left open),
     otherwise left-closed (right open).}
  \item{...}{Not used.}
}

\value{
  Returns an \code{\link[base]{integer}} \code{\link[base]{vector}} of length B with non-negative integers.
}

\details{
  \code{binCounts(x, bx, right=TRUE)} gives equivalent results as
  \code{rev(binCounts(-x, bx=rev(-bx), right=FALSE))}, but is
  faster and more memory efficient.
}

\section{Missing and non-finite values}{
  Missing values in \code{x} are ignored/dropped.
  Missing values in \code{bx} are not allowed and gives an error.
}

\seealso{
  An alternative for counting occurrences within bins is
  \code{\link[graphics]{hist}}, e.g. \code{hist(x, breaks=bx, plot=FALSE)$counts}.
  That approach is ~30-60\% slower than \code{binCounts(..., right=TRUE)}.

  To count occurrences of indices \code{x} (positive \code{\link[base]{integer}}s) in
  \code{[1,B]}, use \code{tabulate(x, nbins=B)}, where \code{x} does
  \emph{not} have to be sorted first.
  For details, see \code{\link[base]{tabulate}}().

  To average values within bins, see \code{\link{binMeans}}().
}

\author{Henrik Bengtsson}


\keyword{univar}
