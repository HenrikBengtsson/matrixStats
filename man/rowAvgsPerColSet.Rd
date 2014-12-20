%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  rowAvgsPerColSet.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{rowAvgsPerColSet}
\alias{rowAvgsPerColSet}

\alias{colAvgsPerRowSet}

\title{Applies a row-by-row (column-by-column) averaging function to equally-sized subsets of matrix columns (rows)}

\description{
 Applies a row-by-row (column-by-column) averaging function to equally-sized subsets of matrix columns (rows).
 Each subset is averaged independently of the others.
}

\usage{
rowAvgsPerColSet(X, W=NULL, S, FUN=rowMeans, ..., tFUN=FALSE)
}

\arguments{
  \item{X}{A \code{\link[base]{numeric}} NxM \code{\link[base]{matrix}}.}
  \item{W}{An optional \code{\link[base]{numeric}} NxM \code{\link[base]{matrix}} of weights.}
  \item{S}{An \code{\link[base]{integer}} KxJ \code{\link[base]{matrix}} specifying the J subsets.  Each
    column holds K column (row) indices for the corresponding subset.}
  \item{FUN}{The row-by-row (column-by-column) \code{\link[base]{function}} used to average
    over each subset of \code{X}.  This function must accept a \code{\link[base]{numeric}}
    NxK (KxM) \code{\link[base]{matrix}} and the \code{\link[base]{logical}} argument \code{na.rm} (which is
    automatically set), and return a \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N (M).}
  \item{...}{Additional arguments passed to then \code{FUN} \code{\link[base]{function}}.}
  \item{tFUN}{If \code{\link[base:logical]{TRUE}}, the NxK (KxM) \code{\link[base]{matrix}} passed to \code{FUN()}
    is transposed first.}
}

\value{
  Returns a \code{\link[base]{numeric}} JxN (MxJ) \code{\link[base]{matrix}},
  where row names equal \code{rownames(X)} (\code{colnames(S)})
  and column names \code{colnames(S)} (\code{colnames(X)}).
}

\details{
  If argument \code{S} is a single column vector with indices
  \code{1:N}, then \code{rowAvgsPerColSet(X, S=S, FUN=rowMeans)}
  gives the same result as \code{rowMeans(X)}.
  Analogously, for \code{rowAvgsPerColSet()}.
}

\examples{
X <- matrix(rnorm(20*6), nrow=20, ncol=6)
rownames(X) <- LETTERS[1:nrow(X)]
colnames(X) <- letters[1:ncol(X)]
print(X)


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply rowMeans() for 3 sets of 2 columns
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 3
S <- matrix(1:ncol(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s\%d", 1:nbrOfSets)
print(S)

Z <- rowAvgsPerColSet(X, S=S)
print(Z)

# Validation
Z0 <- cbind(s1=rowMeans(X[,1:2]), s2=rowMeans(X[,3:4]),
            s3=rowMeans(X[,5:6]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply colMeans() for 5 sets of 4 rows
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 5
S <- matrix(1:nrow(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s\%d", 1:nbrOfSets)
print(S)

Z <- colAvgsPerRowSet(X, S=S)
print(Z)

# Validation
Z0 <- rbind(s1=colMeans(X[1:4,]), s2=colMeans(X[5:8,]),
            s3=colMeans(X[9:12,]), s4=colMeans(X[13:16,]),
            s5=colMeans(X[17:20,]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# When there is only one "complete" set
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 1
S <- matrix(1:ncol(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s\%d", 1:nbrOfSets)
print(S)

Z <- rowAvgsPerColSet(X, S=S, FUN=rowMeans)
print(Z)

Z0 <- rowMeans(X)
stopifnot(identical(drop(Z), Z0))


nbrOfSets <- 1
S <- matrix(1:nrow(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s\%d", 1:nbrOfSets)
print(S)

Z <- colAvgsPerRowSet(X, S=S, FUN=colMeans)
print(Z)

Z0 <- colMeans(X)
stopifnot(identical(drop(Z), Z0))
}

\author{Henrik Bengtsson}



\keyword{internal}
\keyword{utilities}
