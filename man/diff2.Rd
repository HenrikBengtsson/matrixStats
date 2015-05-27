%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  diff2.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{diff2}
\alias{diff2}


\title{Fast lagged differences}

\usage{
diff2(x, idxs=NULL, lag=1L, differences=1L, ...)
}

\description{
  Computes the lagged and iterated differences.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N.}
  \item{idxs}{A \code{\link[base]{vector}} indicating subset of elements
     to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
  \item{lag}{An \code{\link[base]{integer}} specifying the lag.}
  \item{differences}{An \code{\link[base]{integer}} specifying the order of difference.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N - \code{differences}.
}

\examples{
diff2(1:10)

}

\seealso{
  \code{\link[base]{diff}}().
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{internal}
