%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowCollapse.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowCollapse}
\alias{rowCollapse}

\alias{colCollapse}

\title{Extracts one cell per row (column) from a matrix}

\description{
 Extracts one cell per row (column) from a matrix.
 The implementation is optimized for memory and speed.
}

\usage{
  rowCollapse(x, idxs, rows=NULL, dim.=dim(x), ...)
  colCollapse(x, idxs, cols=NULL, dim.=dim(x), ...)
}

\arguments{
  \item{x}{An NxK \code{\link[base]{matrix}}.}
  \item{idxs}{An index \code{\link[base]{vector}} of (maximum) length N (K) specifying the
   columns (rows) to be extracted.}
  \item{rows, cols}{A \code{\link[base]{vector}} indicating subset of rows (and/or columns)
   to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
  \item{dim.}{An \code{\link[base]{integer}} \code{\link[base]{vector}} of length two specifying the
             dimension of \code{x}, also when not a \code{\link[base]{matrix}}.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{vector}} of length N (K).
}

\examples{
x <- matrix(1:27, ncol=3)

y <- rowCollapse(x, 1)
stopifnot(identical(y, x[,1]))

y <- rowCollapse(x, 2)
stopifnot(identical(y, x[,2]))

y <- rowCollapse(x, c(1,1,1,1,1,3,3,3,3))
stopifnot(identical(y, c(x[1:5,1], x[6:9,3])))

y <- rowCollapse(x, 1:3)
print(y)
yT <- c(x[1,1],x[2,2],x[3,3],x[4,1],x[5,2],x[6,3],x[7,1],x[8,2],x[9,3])
stopifnot(identical(y, yT))
}

\author{Henrik Bengtsson}

\seealso{
  \emph{Matrix indexing} to index elements in matrices and arrays,
  cf. \code{\link[base]{[}}().
}


\keyword{utilities}
