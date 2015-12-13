%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowIQRs.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowIQRs}
\alias{rowIQRs}

\alias{colIQRs}
\alias{iqr}

\title{Estimates of the interquartile range for each row (column) in a matrix}

\description{
  Estimates of the interquartile range for each row (column) in a matrix.
}

\usage{
 rowIQRs(x, rows=NULL, cols=NULL, na.rm=FALSE, ...)
 colIQRs(x, rows=NULL, cols=NULL, na.rm=FALSE, ...)
 iqr(x, idxs=NULL, na.rm=FALSE, ...)
}

\arguments{
 \item{x}{A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.}
 \item{idxs, rows, cols}{A \code{\link[base]{vector}} indicating subset of elements (or rows and/or columns)
    to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
 \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are dropped first, otherwise not.}
 \item{...}{Additional arguments passed to \code{\link{rowQuantiles}}()
    (\code{colQuantiles()}).}
}

\value{
  Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (K).
}

\section{Missing values}{
 Contrary to \code{\link[stats]{IQR}}, which gives an error if there are missing
 values and \code{na.rm=FALSE}, \code{iqr()} and its corresponding row and
 column-specific functions return \code{\link[base]{NA}}_real_.
}

\examples{
set.seed(1)

x <- matrix(rnorm(50*40), nrow=50, ncol=40)
str(x)

# Row IQRs
q <- rowIQRs(x)
print(q)
q0 <- apply(x, MARGIN=1, FUN=IQR)
stopifnot(all.equal(q0, q))

# Column IQRs
q <- colIQRs(x)
print(q)
q0 <- apply(x, MARGIN=2, FUN=IQR)
stopifnot(all.equal(q0, q))
}

\author{Henrik Bengtsson}

\seealso{
  See \code{\link[stats]{IQR}}.
  See \code{\link{rowSds}}().
}





\keyword{array}
\keyword{iteration}
\keyword{robust}
\keyword{univar}
