###########################################################################/**
# @RdocFunction logSumExp
#
# @title "Accurately computes the logarithm of the sum of exponentials"
#
# \description{
#  @get "title", that is, \eqn{log(sum(exp(lx)))}.
#  If \eqn{lx = log(x)}, then this is equivalently to calculating
#  \eqn{log(sum(x))}.
#
#  This function, which avoid numerical underflow, is often used when
#  computing the logarithm of the sum of small numbers (\eqn{|x| << 1})
#  such as probabilities.
# }
#
# @synopsis
#
# \arguments{
#  \item{lx}{A @numeric @vector.
#    Typically \code{lx} are \eqn{log(x)} values.}
#  \item{idxs}{A @vector indicating subset of elements
#    to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, any missing values are ignored, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric scalar.
# }
#
# \details{
#  This is function is more accurate than \code{log(sum(exp(lx)))}
#  when the values of \eqn{x = exp(lx)} are \eqn{|x| << 1}.
#  The implementation of this function is based on the observation that
#   \deqn{
#      log(a + b)
#        = [ la = log(a), lb = log(b) ]
#        = log( exp(la) + exp(lb) )
#        = la + log ( 1 + exp(lb - la) )
#   }
#  Assuming \eqn{la > lb}, then \eqn{|lb - la| < |lb|}, and it is
#  less likely that the computation of \eqn{1 + exp(lb - la)} will
#  not underflow/overflow numerically.  Because of this, the overall
#  result from this function should be more accurate.
#  Analogously to this, the implementation of this function finds the
#  maximum value of \code{lx} and subtracts it from the remaining values
#  in \code{lx}.
# }
#
# \section{Benchmarking}{
#   This method is optimized for correctness, that avoiding underflowing.
#   It is implemented in native code that is optimized for speed and memory.
# }
#
# @examples "../incl/logSumExp.Rex"
#
# @author "HB"
#
# \seealso{
#   To compute this function on rows or columns of a matrix,
#   see @see "rowLogSumExps".
#
#   For adding \emph{two} double values in native code, R provides
#   the C function \code{logspace_add()} [1].
#   For properties of the log-sum-exponential function, see [2].
# }
#
# \references{
# [1] R Core Team, \emph{Writing R Extensions}, v3.0.0, April 2013. \cr
# [2] Laurent El Ghaoui,
#     \emph{Hyper-Textbook: Optimization Models and Applications},
#     University of California at Berkeley, August 2012.
#     (Chapter 'Log-Sum-Exp (LSE) Function and Properties',
#     \url{http://inst.eecs.berkeley.edu/~ee127a/book/login/def_lse_fcn.html})
#     \cr
# [3] R-help thread \emph{logsumexp function in R}, 2011-02-17.
#     \url{https://stat.ethz.ch/pipermail/r-help/2011-February/269205.html}\cr
# }
#
#*/###########################################################################
logSumExp <- function(lx, idxs=NULL, na.rm=FALSE, ...) {
  hasNA <- TRUE;
  .Call("logSumExp", as.numeric(lx), idxs, as.logical(na.rm), as.logical(hasNA),
                                                     PACKAGE="matrixStats");
} # logSumExp()


##############################################################################
# HISTORY:
# 2015-05-28 [DJ]
# o Supported subsetted computation.
# 2013-04-30 [HB]
# o Added native implementation.
# o Renamed to logSumExp(), because that seems to be the naming convention
#   elsewhere, e.g. Python.
# 2013-04-29 [HB]
# o Added sumInLogspace().
# o Created.
##############################################################################
