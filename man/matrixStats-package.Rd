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
  This packages provides methods operating on rows and columns of matrices.  The methods are optimized for speed and memory.  This package is currently in a beta phase.  Make sure to read the 'Roadmap' section in the package help..
  Please consider this package to be in a beta phase.
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

\section{Roadmap}{
  The plan is to publish this package on CRAN when the API is
  settled/stable.  Currently, we are in a stage of adding new methods
  to the package.  It is currently not decided whether the methods
  should be S4 or S3 methods.  What is sure is that we will use
  either dispatching mechanisms.
  This is the reason why some methods are based on S4 and some on S3.
  The ones using S3 rely on the \pkg{R.methodsS3} package to define the
  methods.  There are also dependancies on other packages.  The plan
  is to remove all such dependancies as soon as the API settles, but
  until then, we keep the dependancies for conveniency and in order to
  avoid reduncancy of available implementations of identical methods.
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
 }
 \bold{Estimates of the mean}:
 \itemize{
   \item rowMeans()
   \item rowMedians()
   \item rowWeightedMeans()
   \item rowWeightedMedians()
 }
 \bold{Estimates of the standard deviation, variance and more}:
 \itemize{
   \item rowSds()
   \item rowMads()
   \item rowVars()
   \item rowIQRs()
   \item rowQuantiles()
   \item rowOrderStats()
   \item rowRanges()
   \item rowMins()
   \item rowMaxs()
 }
 \bold{Miscellaneous}:
 \itemize{
   \item rowDiffs()
   \item anyMissing()
 }
}

\section{How to cite this package}{
 \preformatted{
  Henrik Bengtsson (partly by Robert Gentleman) (2009). matrixStats: Methods that apply to rows and columns of a matrix. R package version 0.1.5.
 }
}

\author{
  Henrik Bengtsson (\url{http://www.braju.com/R/})
  The native implementation of \code{rowOrderStats()} was adopted from
  Robert Gentleman's \code{\link[Biobase]{rowQ}} in the \pkg{Biobase} package.
}
\keyword{package}
