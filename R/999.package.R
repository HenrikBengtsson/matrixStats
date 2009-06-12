#########################################################################/**
# @RdocPackage matrixStats
#
# \description{
#   @eval "packageDescription('matrixStats')$Description".
#   Please consider this package to be in a beta phase.
# }
#
# \section{Installation}{
#   To install this package, please do:
#   \preformatted{
#     install.packages("matrixStats", repos="http://www.rforge.net/")
#   }
# }
#
# \section{Dependancies and other requirements}{
#   See DESCRIPTION file for now.
# }
#
# \section{Roadmap}{
#   The plan is to publish this package on CRAN when the API is 
#   settled/stable.  Currently, we are in a stage of adding new methods
#   to the package.  It is currently not decided whether the methods
#   should be S4 or S3 methods.  What is sure is that we will use
#   either dispatching mechanisms.
#   This is the reason why some methods are based on S4 and some on S3.
#   The ones using S3 rely on the \pkg{R.methodsS3} package to define the
#   methods.  There are also dependancies on other packages.  The plan
#   is to remove all such dependancies as soon as the API settles, but
#   until then, we keep the dependancies for conveniency and in order to
#   avoid reduncancy of available implementations of identical methods.
# }
#
# \section{To get started}{
#  \bold{Counts and logicals}:
#  \itemize{
#    \item rowCounts()
#    \item rowAlls()
#    \item rowAnys()
#  }
#  \bold{Sums and products}:
#  \itemize{
#    \item rowSums()
#    \item rowProds()
#  }
#  \bold{Estimates of the mean}:
#  \itemize{
#    \item rowMeans()
#    \item rowMedians()
#    \item rowWeightedMeans()
#    \item rowWeightedMedians()
#  }
#  \bold{Estimates of the standard deviation, variance and more}:
#  \itemize{
#    \item rowSds()
#    \item rowMads()
#    \item rowVars()
#    \item rowIQRs()
#    \item rowQuantiles()
#    \item rowOrderStats()
#    \item rowRanges()
#    \item rowMins()
#    \item rowMaxs()
#  }
#  \bold{Miscellaneous}:
#  \itemize{
#    \item rowDiffs()
#    \item anyMissing()
#  }
# }
#
# \section{How to cite this package}{
#  \preformatted{
#   @eval "x <- citation('matrixStats'); attr(x, 'textVersion')"
#  }
# }
#
# \author{
#   @get "author"
#   The native implementation of \code{rowOrderStats()} was adopted from
#   Robert Gentleman's @see "Biobase::rowQ" in the \pkg{Biobase} package.
# }
#*/#########################################################################  

