#' Estimation of scale based on sequential-order differences
#'
#' Estimation of scale based on sequential-order differences, corresponding to
#' the scale estimates provided by \code{\link[stats]{var}},
#' \code{\link[stats]{sd}}, \code{\link[stats]{mad}} and
#' \code{\link[stats]{IQR}}.
#'
#' Note that n-order difference MAD estimates, just like the ordinary MAD
#' estimate by \code{\link[stats]{mad}}, apply a correction factor such that
#' the estimates are consistent with the standard deviation under Gaussian
#' distributions.
#'
#' The interquartile range (IQR) estimates does \emph{not} apply such a
#' correction factor.  If asymptotically normal consistency is wanted, the
#' correction factor for IQR estimate is \code{1 / (2 * qnorm(3/4))}, which is
#' half of that used for MAD estimates, which is \code{1 / qnorm(3/4)}.  This
#' correction factor needs to be applied manually, i.e. there is no
#' \code{constant} argument for the IQR functions.
#'
#' @inheritParams rowAlls
#'
#' @param x A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' N or a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param diff The positional distance of elements for which the difference
#' should be calculated.
#'
#' @param trim A \code{\link[base]{double}} in [0,1/2] specifying the fraction
#' of observations to be trimmed from each end of (sorted) \code{x} before
#' estimation.
#'
#' @param constant A scale factor adjusting for asymptotically normal
#' consistency.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length 1, length N, or length K.
#'
#' @author Henrik Bengtsson
#'
#' @seealso For the corresponding non-differentiated estimates, see
#' \code{\link[stats]{var}}, \code{\link[stats]{sd}}, \code{\link[stats]{mad}}
#' and \code{\link[stats]{IQR}}.  Internally, \code{\link{diff2}}() is used
#' which is a faster version of \code{\link[base]{diff}}().
#'
#' @references [1] J. von Neumann et al., \emph{The mean square successive
#' difference}.  Annals of Mathematical Statistics, 1941, 12, 153-162.\cr
#'
#' @keywords iteration robust univar
#' @export
varDiff <- function(x, idxs = NULL, na.rm = FALSE, diff = 1L, trim = 0, ...) {
  if (length(diff) != 1L) stop(sprintf("Argument '%s' is not scalar: %d", "diff", length(diff)))
  if (diff < 0L) stop(sprintf("Argument '%s' must not be negative: %d", "diff", diff))
  
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
    x <- diff2(x, differences = diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n * trim) + 1
    hi <- (n + 1) - lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial = partial)
    x <- x[lo:hi]
  }

  # Estimate
  var <- var(x, na.rm = FALSE)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  var / (2^diff)
}


#' @rdname varDiff
#' @export
sdDiff <- function(x, idxs = NULL, na.rm = FALSE, diff = 1L, trim = 0, ...) {
  if (length(diff) != 1L) stop(sprintf("Argument '%s' is not scalar: %d", "diff", length(diff)))
  if (diff < 0L) stop(sprintf("Argument '%s' must not be negative: %d", "diff", diff))
  
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
    x <- diff2(x, differences = diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n * trim) + 1
    hi <- (n + 1) - lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial = partial)
    x <- x[lo:hi]
  }

  # Estimate
  sd <- sd(x, na.rm = FALSE)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  sd / (sqrt(2) ^ diff)
}


#' @importFrom stats mad
#' @rdname varDiff
#' @export
madDiff <- function(x, idxs = NULL, na.rm = FALSE, diff = 1L, trim = 0,
                    constant = 1.4826, ...) {
  if (length(diff) != 1L) stop(sprintf("Argument '%s' is not scalar: %d", "diff", length(diff)))
  if (diff < 0L) stop(sprintf("Argument '%s' must not be negative: %d", "diff", diff))
  
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
    x <- diff2(x, differences = diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(NA_real_)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_)
    lo <- floor(n * trim) + 1
    hi <- (n + 1) - lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial = partial)
    x <- x[lo:hi]
  }

  # Estimate
  sd <- mad(x, na.rm = FALSE, constant = constant, ...)
  x <- NULL # Not needed anymore
  # Correction for the differentiation
  sd / (sqrt(2) ^ diff)
}


#' @importFrom stats quantile
#' @rdname varDiff
#' @export
iqrDiff <- function(x, idxs = NULL, na.rm = FALSE, diff = 1L, trim = 0, ...) {
  if (length(diff) != 1L) stop(sprintf("Argument '%s' is not scalar: %d", "diff", length(diff)))
  if (diff < 0L) stop(sprintf("Argument '%s' must not be negative: %d", "diff", diff))
  
  # Apply subset
  if (!is.null(idxs)) x <- x[idxs]

  if (na.rm) {
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
    x <- diff2(x, differences = diff)

    # Nothing to do?
    n <- length(x)
    if (n == 1L)
      return(0)
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    lo <- floor(n * trim) + 1
    hi <- (n + 1) - lo
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial = partial)
    x <- x[lo:hi]
  }

  # Estimate
  qs <- quantile(x, probs = c(0.25, 0.75), na.rm = FALSE, names = FALSE, ...)
  x <- NULL # Not needed anymore
  iqr <- (qs[2L] - qs[1L])

  # Correction for the differentiation
  iqr / (sqrt(2) ^ diff)
}


#' @rdname varDiff
#' @export
rowVarDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
      rownames(x) <- NULL
  }

  apply(x, MARGIN = 1L, FUN = varDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
colVarDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    colnames(x) <- NULL
  }

  apply(x, MARGIN = 2L, FUN = varDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
rowSdDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                       trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    rownames(x) <- NULL
  }

  apply(x, MARGIN = 1L, FUN = sdDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
colSdDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                       trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    colnames(x) <- NULL
  }

  apply(x, MARGIN = 2L, FUN = sdDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
rowMadDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    rownames(x) <- NULL
  }

  apply(x, MARGIN = 1L, FUN = madDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
colMadDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    colnames(x) <- NULL
  }

  apply(x, MARGIN = 2L, FUN = madDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
rowIQRDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    rownames(x) <- NULL
  }

  apply(x, MARGIN = 1L, FUN = iqrDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}


#' @rdname varDiff
#' @export
colIQRDiffs <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, diff = 1L,
                        trim = 0, ..., useNames = NA) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    colnames(x) <- NULL
  }

  apply(x, MARGIN = 2L, FUN = iqrDiff,
        na.rm = na.rm, diff = diff, trim = trim, ...)
}
