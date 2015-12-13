%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  sumOver.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{sumOver}
\alias{sumOver}


\title{Fast sum over subset of vector elements}

\usage{
sumOver(x, idxs=NULL, na.rm=FALSE, mode=typeof(x), ...)
}

\description{
  Computes the sum of all or a subset of values.
}

\arguments{
  \item{x}{A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N.}
  \item{idxs}{A \code{\link[base]{vector}} indicating subset of elements
     to operate over. If \code{\link[base]{NULL}}, no subsetting is done.}
  \item{na.rm}{If \code{\link[base:logical]{TRUE}}, missing values are skipped, otherwise not.}
  \item{mode}{A \code{\link[base]{character}} string specifying the data type of the
     return value.  Default is to use the same mode as argument
     \code{x}.}
  \item{...}{Not used.}
}

\value{
  Returns a scalar of the data type specified by argument \code{mode}.
  If \code{mode="integer"}, then integer overflow occurs if the
  \emph{sum} is outside the range of defined integer values.
}

\details{
  \code{sumOver(x, idxs)} gives equivalent results as
  \code{sum(x[idxs])}, but is faster and more memory efficient
  since it avoids the actual subsetting which requires copying
  of elements and garbage collection thereof.

  Furthermore, \code{sumOver(x, mode="double")} is equivalent to
  \code{sum(as.numeric(x))}, but is much more memory efficient when
  \code{x} is an \code{\link[base]{integer}} vector.
}

\examples{
x <- 1:10
n <- length(x)

idxs <- seq(from=1, to=n, by=2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

idxs <- seq(from=n, to=1, by=-2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

s1 <- sum(x)                              # 55
s2 <- sumOver(x)                          # 55
stopifnot(identical(s1, s2))


# Total gives integer overflow
x <- c(.Machine$integer.max, 1L, -.Machine$integer.max)
s1 <- sum(x[1:2])                         # NA_integer_
s2 <- sumOver(x[1:2])                     # NA_integer_
stopifnot(identical(s1, s2))

# Total gives integer overflow (coerce to numeric)
s1 <- sum(as.numeric(x[1:2]))             # 2147483648
s2 <- sumOver(as.numeric(x[1:2]))         # 2147483648
s3 <- sumOver(x[1:2], mode="double")      # 2147483648
stopifnot(identical(s1, s2))
stopifnot(identical(s1, s3))

# Cumulative sum would give integer overflow but not the total
s1 <- sum(x)                              # 1L
s2 <- sumOver(x)                          # 1L
stopifnot(identical(s1, s2))


}

\seealso{
  \code{\link[base]{sum}}().
  To efficiently average over a subset, see \code{\link{meanOver}}().
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{internal}
