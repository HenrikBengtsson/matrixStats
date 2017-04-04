#' Accurately computes the logarithm of the sum of exponentials
#'
#' Accurately computes the logarithm of the sum of exponentials, that is,
#' \eqn{log(sum(exp(lx)))}.  If \eqn{lx = log(x)}, then this is equivalently to
#' calculating \eqn{log(sum(x))}.
#'
#' This function, which avoid numerical underflow, is often used when computing
#' the logarithm of the sum of small numbers (\eqn{|x| << 1}) such as
#' probabilities.
#'
#' This is function is more accurate than \code{log(sum(exp(lx)))} when the
#' values of \eqn{x = exp(lx)} are \eqn{|x| << 1}.  The implementation of this
#' function is based on the observation that \deqn{ log(a + b) = [ la = log(a),
#' lb = log(b) ] = log( exp(la) + exp(lb) ) = la + log ( 1 + exp(lb - la) ) }
#' Assuming \eqn{la > lb}, then \eqn{|lb - la| < |lb|}, and it is less likely
#' that the computation of \eqn{1 + exp(lb - la)} will not underflow/overflow
#' numerically.  Because of this, the overall result from this function should
#' be more accurate.  Analogously to this, the implementation of this function
#' finds the maximum value of \code{lx} and subtracts it from the remaining
#' values in \code{lx}.
#'
#' @param lx A \code{\link[base]{numeric}} \code{\link[base]{vector}}.
#' Typically \code{lx} are \eqn{log(x)} values.
#'
#' @param idxs A \code{\link[base]{vector}} indicating subset of elements to
#' operate over. If \code{\link[base]{NULL}}, no subsetting is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, any missing values are
#' ignored, otherwise not.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} scalar.
#'
#' @section Benchmarking: This method is optimized for correctness, that
#' avoiding underflowing.  It is implemented in native code that is optimized
#' for speed and memory.
#'
#' @example incl/logSumExp.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso To compute this function on rows or columns of a matrix, see
#' \code{\link{rowLogSumExps}}().
#'
#' For adding \emph{two} double values in native code, R provides the C
#' function \code{logspace_add()} [1].  For properties of the
#' log-sum-exponential function, see [2].
#'
#' @references
#' [1] R Core Team, \emph{Writing R Extensions}, v3.0.0, April 2013. \cr
#' [2] Laurent El Ghaoui, \emph{Hyper-Textbook: Optimization Models
#' and Applications}, University of California at Berkeley, August 2012.
#' (Chapter 'Log-Sum-Exp (LSE) Function and Properties') \cr
#' [3] R-help thread \emph{logsumexp function in R}, 2011-02-17.
#' \url{https://stat.ethz.ch/pipermail/r-help/2011-February/269205.html}\cr
#'
#' @export
logSumExp <- function(lx, idxs = NULL, na.rm = FALSE, ...) {
  has_na <- TRUE
  .Call(C_logSumExp, as.numeric(lx), idxs, as.logical(na.rm), has_na)
}
