###########################################################################/**
# @RdocFunction varDiff
# @alias sdDiff
# @alias madDiff
# @alias iqrDiff
# @alias colVarDiffs
# @alias rowVarDiffs
# @alias colSdDiffs
# @alias rowSdDiffs
# @alias colMadDiffs
# @alias rowMadDiffs
# @alias colIQRDiffs
# @alias rowIQRDiffs
#
# @title "Estimation of scale based on sequential-order differences"
#
# \description{
#   @get "title", corresponding to the scale estimates provided by
#   @see "stats::var", @see "stats::sd", @see "stats::mad" and
#   @see "stats::IQR".
# }
#
# \usage{
#  @usage varDiff
#  @usage colVarDiffs
#  @usage rowVarDiffs
#
#  @usage sdDiff
#  @usage colSdDiffs
#  @usage rowSdDiffs
#
#  @usage madDiff
#  @usage colMadDiffs
#  @usage rowMadDiffs
#
#  @usage iqrDiff
#  @usage colIQRDiffs
#  @usage rowIQRDiffs
# }
#
# \arguments{
#  \item{x}{A @numeric @vector of length N or a @numeric NxK @matrix.}
#  \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
#  \item{na.rm}{If @TRUE, @NAs are excluded, otherwise not.}
#  \item{diff}{The positional distance of elements for which the
#     difference should be calculated.}
#  \item{trim}{A @double in [0,1/2] specifying the fraction of
#     observations to be trimmed from each end of (sorted) \code{x}
#     before estimation.}
#  \item{constant}{A scale factor adjusting for asymptotically
#     normal consistency.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length 1, length N, or length K.
# }
#
# @author "HB"
#
# \seealso{
#   For the corresponding non-differentiated estimates, see
#   @see "stats::var", @see "stats::sd", @see "stats::mad" and
#   @see "stats::IQR".
#   Internally, @see "diff2" is used which is a faster version
#   of @see "base::diff".
# }
#
# \details{
#   Note that n-order difference MAD estimates, just like the ordinary
#   MAD estimate by @see "stats::mad", apply a correction factor such
#   that the estimates are consistent with the standard deviation
#   under Gaussian distributions.
#
#   The interquartile range (IQR) estimates does \emph{not} apply such
#   a correction factor.  If asymptotically normal consistency is wanted,
#   the correction factor for IQR estimate is \code{1 / (2 * qnorm(3/4))},
#   which is half of that used for MAD estimates, which is
#   \code{1 / qnorm(3/4)}.  This correction factor needs to be applied
#   manually, i.e. there is no \code{constant} argument for the IQR
#   functions.
# }
#
# \references{
#  [1] J. von Neumann et al., \emph{The mean square successive difference}.
#      Annals of Mathematical Statistics, 1941, 12, 153-162.\cr
# }
#
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
varDiff <- function(x, idxs=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if (na.rm)
    x <- x[!is.na(x)]

  # Nothing to do?
  n <- length(x)
  if (n <= 1L)
    return(NA_real_)


  # Calculate differences?
  if (diff > 0L) {
    x <- diff2(x, differences=diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n*trim)+1
    hi <- (n+1)-lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial)
    x <- x[lo:hi]
  }

  # Estimate
  var <- var(x, na.rm=FALSE)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  var / (2^diff)
} # varDiff()


sdDiff <- function(x, idxs=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if (na.rm)
    x <- x[!is.na(x)]

  # Nothing to do?
  n <- length(x)
  if (n <= 1L)
    return(NA_real_)

  # Calculate differences?
  if (diff > 0L) {
    x <- diff2(x, differences=diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n*trim)+1
    hi <- (n+1)-lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial)
    x <- x[lo:hi]
  }

  # Estimate
  sd <- sd(x, na.rm=FALSE)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  sd / (sqrt(2)^diff)
} # sdDiff()


madDiff <- function(x, idxs=NULL, na.rm=FALSE, diff=1L, trim=0, constant=1.4826, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if (na.rm)
    x <- x[!is.na(x)]

  # Nothing to do?
  n <- length(x)
  if (n <= 0L)
    return(NA_real_)

  # Calculate differences?
  if (diff > 0L) {
    x <- diff2(x, differences=diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n*trim)+1
    hi <- (n+1)-lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial)
    x <- x[lo:hi]
  }

  # Estimate
  sd <- mad(x, na.rm=FALSE, constant=constant, ...)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  sd / (sqrt(2)^diff)
} # madDiff()


iqrDiff <- function(x, idxs=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if(na.rm) {
    x <- x[!is.na(x)]
  } else if (anyMissing(x)) {
    return(NA_real_)
  }

  # At this point, there should be no missing values

  # Nothing to do?
  n <- length(x)
  if (n == 0L) {
    return(NA_real_)
  } else if (n == 1L) {
    return(0)
  }

  # Calculate differences?
  if (diff > 0L) {
    x <- diff2(x, differences=diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(0)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    lo <- floor(n*trim)+1
    hi <- (n+1)-lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial)
    x <- x[lo:hi]
  }

  # Estimate
  qs <- quantile(x, probs=c(0.25, 0.75), na.rm=FALSE, names=FALSE, ...)
  x <- NULL # Not needed anymore
  iqr <- (qs[2L] - qs[1L])

  # Correction for the differentiation
  iqr / (sqrt(2)^diff)
} # iqrDiff()


rowVarDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=1L, FUN=varDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}

colVarDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=2L, FUN=varDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}


rowSdDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=1L, FUN=sdDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}

colSdDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=2L, FUN=sdDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}


rowMadDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=1L, FUN=madDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}

colMadDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=2L, FUN=madDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}


rowIQRDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=1L, FUN=iqrDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}

colIQRDiffs <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, diff=1L, trim=0, ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  apply(x, MARGIN=2L, FUN=iqrDiff, na.rm=na.rm, diff=diff, trim=trim, ...)
}


############################################################################
# HISTORY:
# 2015-06-03 [DJ]
# o Supported subsetted computation.
# 2015-01-16
# o Added iqrDiff() and (col|row)IQRDiffs().
# 2014-14-19
# o Added (col|row)(Var|Sd|Mad)Diffs() for completeness.
# 2014-11-10
# o Turned *Diff() into a function.
# 2014-05-24
# o Turned *Diff() into an S3 method (was S4).
# 2014-04-26
# o Added argument 'trim' to madDiff(), sdDiff() and varDiff().
# 2013-11-23
# o MEMORY: Now *Diff() cleans out allocated objects sooner.
# 2012-07-17
# o Added the reference to von Neumann et al. (1941).
# 2009-02-02
# o Added Rdoc comments.
# 2008-04-13
# o Added varDiff(), sdDiff() and madDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
