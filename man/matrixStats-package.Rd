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
  This packages provides methods operating on rows and columns of matrices, e.g. col/rowMedians() and col/rowRanks().  There are also some vector-based methods, e.g. anyMissing(), weightedMedians(), and binMeans().  The objective is to have all methods being optimized for speed and memory..
  This package went public (on CRAN) in June 2009.
  It is currently in a beta version where new methods are added.
}

\section{Installation}{
  To install this package, please do:
  \preformatted{
    install.packages("matrixStats")
  }
}

\section{Dependancies and other requirements}{
  See DESCRIPTION file for now.
}

\section{To get started}{
 \bold{Counts and logicals}:
 \itemize{
   \item rowCounts()
   \item rowAlls()
   \item rowAnys()
 }
 \bold{Sums and products}:
 \itemize{
   \item rowSums()
   \item rowProds()
   \item rowLogSumExps(), logSumExp()
 }
 \bold{Estimates of the mean}:
 \itemize{
   \item rowMeans()
   \item rowMedians()
   \item rowWeightedMeans()
   \item rowWeightedMedians(), weightedMedian()
 }
 \bold{Estimates of the standard deviation, variance and more}:
 \itemize{
   \item rowSds()
   \item rowMads()
   \item rowVars()
   \item rowIQRs()
   \item rowQuantiles()
   \item rowOrderStats()
   \item rowRanks()
   \item rowRanges()
   \item rowMins()
   \item rowMaxs()
   \item madDiff(), sdDiff(), varDiff()
   \item weightedMad()
 }
 \bold{Binning}:
 \itemize{
   \item binCounts()
   \item binMeans()
 }
 \bold{Miscellaneous}:
 \itemize{
   \item rowDiffs()
   \item anyMissing()
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
  There are also dependancies on other packages.  The plan
  is to remove all such dependancies as soon as the API settles, but
  until then, we keep the dependancies for conveniency and in order to
  avoid reduncancy of available implementations of identical methods.
}

\section{How to cite this package}{
  Henrik Bengtsson (2013). matrixStats: Methods that apply to rows and columns of a matrix. R package version 0.8.12.
}

\author{Henrik Bengtsson, Hector Corrada Bravo, Robert Gentleman, Ola Hossjer, Harris Jaffee, Peter Langfelder}
\keyword{package}
