#########################################################################/**
# @RdocPackage matrixStats
#
# \description{
#   @eval "packageDescription('matrixStats')$Description".
#   This package went public (on CRAN) in June 2009.
#   It is currently in a beta version where new methods are added.
# }
#
# \section{Installation}{
#   To install this package, please do:
#   \preformatted{
#     install.packages("matrixStats")
#   }
# }
#
# \section{Dependancies and other requirements}{
#   See DESCRIPTION file for now.
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
#    \item rowRanks()
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
# \section{How to contribute}{
#   This is an open-source project which embraces collaborations.
#   If you have improvements on code and/or documentation, or
#   new function, please consider contributing them to this package.
# }
#
# \section{For developers}{
#   It is currently not decided whether the methods should be S4 or S3
#   methods.
#   This is the reason why some methods are based on S4 and some on S3.
#   The ones using S3 rely on the \pkg{R.methodsS3} package to define the
#   methods.
#   There are also dependancies on other packages.  The plan
#   is to remove all such dependancies as soon as the API settles, but
#   until then, we keep the dependancies for conveniency and in order to
#   avoid reduncancy of available implementations of identical methods.
# }
#
# \section{How to cite this package}{
#   @eval "x <- citation('matrixStats'); format(x, 'textVersion')"
# }
#
# @author "*"
#*/#########################################################################
