%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  weightedVar.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{weightedVar}
\alias{weightedVar}

\alias{weightedSd}

\title{Weighted variance}

\usage{
weightedVar(x, w, na.rm=FALSE, center=NULL, ...)
}

\description{
  Computes a weighted variance of a numeric vector.
}

\arguments{
  \item{x}{a \code{\link[base]{numeric}} \code{\link[base]{vector}} containing the values whose
           weighted variance is to be computed.}
  \item{w}{a vector of weights the same length as \code{x} giving the weights
           to use for each element of \code{x}. Negative weights are treated
           as zero weights. Default value is equal weight to all values.}
  \item{na.rm}{a logical value indicating whether \code{\link[base]{NA}} values in
           \code{x} should be stripped before the computation proceeds,
           or not.  If \code{\link[base]{NA}}, no check at all for \code{\link[base]{NA}}s is done.
           Default value is \code{\link[base]{NA}} (for efficiency).}
  \item{center}{Optional \code{\link[base]{numeric}} scalar specifying the center
           location of the data.  If \code{\link[base]{NULL}}, it is estimated from data.}
  \item{...}{Not used.}
}

\value{
  Returns a \code{\link[base]{numeric}} scalar.
}

\section{Missing values}{
  Missing values are dropped at the very beginning, if argument
  \code{na.rm} is \code{\link[base:logical]{TRUE}}, otherwise not.
}

\seealso{
  For the non-weighted variance, see \code{\link[stats]{var}}.
}

\author{Henrik Bengtsson}



\keyword{univar}
\keyword{robust}
