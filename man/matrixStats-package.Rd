%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do not modify this file since it was automatically generated from:
% 
%  999.package.R
% 
% by the Rdoc compiler part of the R.oo package.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\name{matrixStats-package}
\alias{matrixStats-package}
\alias{matrixStats}
\docType{package}

\title{Package matrixStats}


\description{
  Methods operating on rows and columns of matrices, e.g. col/rowMedians(), col/rowRanks() and col/rowSds().  There are also some vector-based methods, e.g. binMeans(), madDiff() and weightedMedians().  All methods have been optimized for speed and memory usage.
}

\section{Installation}{
  To install this package, please do:
  \preformatted{
    install.packages("matrixStats")
  }
}

\section{How to contribute}{
  This is an open-source project which embraces collaborations.
  If you have improvements on code and/or documentation, or
  new function, please consider contributing them to this package.
}

\section{For developers}{
  It is currently not decided whether the methods should be S4 or S3
  methods.
  This is the reason why some methods are based on S4 and some on S3.
  The ones using S3 rely on the \pkg{R.methodsS3} package to define the
  methods.
  There are also dependencies on other packages.  The plan
  is to remove all such dependencies  as soon as the API settles, but
  until then, we keep the dependencies for convenience and in order to
  avoid redundancy of available implementations of identical methods.
}

\section{How to cite this package}{
  Henrik Bengtsson (2014). matrixStats: Methods that Apply to Rows and Columns of a Matrix. R package version 0.12.2. https://github.com/HenrikBengtsson/matrixStats
}

\author{Henrik Bengtsson, Hector Corrada Bravo, Robert Gentleman, Ola Hossjer, Harris Jaffee, Peter Langfelder}
\keyword{package}
