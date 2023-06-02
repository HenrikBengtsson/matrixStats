#' Variance estimates for each row (column) in a matrix
#'
#' Variance estimates for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param refine If \code{\link[base:logical]{TRUE}}, `center` is NULL, and
#' \code{x} is \code{\link[base]{numeric}}, then extra effort is used to
#' calculate the average with greater numerical precision, otherwise not.
#'
#' @param center (optional; a vector or length N (K)) If the row (column)
#' means are already estimated, they can be pre-specified using this argument.
#' This avoid re-estimating them again.
#' _Warning: It is important that a non-biased sample mean estimate is passed.
#' If not, then the variance estimate of the spread will also be biased._
#' If NULL (default), the row/column means are estimated internally.
#'
#' @param ... Additional arguments passed to \code{rowMeans()} and
#' \code{rowSums()}.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @section Providing center estimates:
#' The sample variance is estimated as
#'
#'   \eqn{n/(n-1) * mean((x - center)^2)},
#'
#' where \eqn{center} is estimated as the sample mean, by default.
#' In matrixStats (< 0.58.0),
#'
#'   \eqn{n/(n-1) * (mean(x^2) - center^2)}
#'
#' was used.  Both formulas give the same result _when_ `center` is the
#' sample mean estimate.
#'
#' Argument `center` can be used to provide an already existing estimate.
#' It is important that the sample mean estimate is passed.
#' If not, then the variance estimate of the spread will be biased.
#'
#' For the time being, in order to lower the risk for such mistakes,
#' argument `center` is occasionally validated against the sample-mean
#' estimate.  If a discrepancy is detected, an informative error is
#' provided to prevent incorrect variance estimates from being used.
#' For performance reasons, this check is only performed once every 50 times.
#' The frequency can be controlled by R option `matrixStats.vars.formula.freq`,
#' whose default can be set by environment variable
#' `R_MATRIXSTATS_VARS_FORMULA_FREQ`.
#'
#' @example incl/rowMethods.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See \code{rowMeans()} and \code{rowSums()} in
#' \code{\link[base]{colSums}}().
#' @keywords array iteration robust univar
#' @export
rowVars <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, refine = TRUE, center = NULL,
                    dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  if (is.null(center)) {
    has_nas <- TRUE
    sigma2 <- .Call(C_rowVars, x, dim., rows, cols, na.rm, refine, has_nas, TRUE, useNames)
    return(sigma2)
  }

  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  centerOnUse("rowVars")
  
  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names <- rownames(x)

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.
  
  # Apply subset on 'center'
  if (length(center) != nrow(x)) {
    ## Scalar 'center'?
    if (length(center) == 1L && is.null(rows)) {
      validateScalarCenter(center, nrow(x), "rows")
      center <- rep(center, times = nrow(x))
    } else {
      stop(sprintf("Argument '%s' should be of the same length as number of %s of '%s': %d != %d", "center", "rows", "x", length(center), nrow(x)))
    }
  }
  if (!is.null(rows)) center <- center[rows]

  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  dim. <- dim(x)

  ncol <- ncol(x)

  # Nothing to do?
  if (ncol <= 1L) {

    x <- rep(NA_real_, times = nrow(x))
    
    # Update names attribute?
    if (!is.na(useNames)) {
      if (useNames) {
        if (!is.null(names)) {
          if (!is.null(rows)) {
            names <- names[rows]
            # Zero-length attribute? Keep behavior same as base R function
            if (length(names) == 0L) names <- NULL
          }
          names(x) <- names
        }
      } else {
        names(x) <- NULL
      }
    }
    return(x)
  }

  if (na.rm) {
    # Count number of missing values in each row
    na_counts <- rowCounts(x, value = NA_real_, na.rm = FALSE)

    # Number of non-missing values
    n <- ncol - na_counts

    has_na <- any(na_counts > 0L)
    if (has_na) {
      # Set NA estimates for rows with less than two observations
      n[n <= 1L] <- NA_integer_
    } else {
      # No need to check for missing values below
      na.rm <- FALSE
    }
  } else {
    # Assuming no missing values
    n <- ncol
  }

  validate <- validateVarsCenterFormula()
  if (!validate) {
    ## The primary formula for estimating the sample variance
    x <- (x - center)^2
    ## SPECIAL: The variance estimate when the mean estimate is infinite should be NaN
    ## just like for stats::var() - not Inf, e.g. var(c(0,Inf)) == NaN
    x[is.infinite(center)] <- NaN
    x <- rowMeans(x, na.rm = na.rm)
  } else {
    ## The alternative formula for estimating the sample variance
    x2 <- x * x
    x2 <- rowMeans(x2, na.rm = na.rm)
    x2 <- (x2 - center^2)
    
    ## The primary formula for estimating the sample variance
    x <- (x - center)^2
    x <- rowMeans(x, na.rm = na.rm)
    
    ## SPECIAL: The variance estimate when the mean estimate is infinite should be NaN
    ## just like for stats::var() - not Inf, e.g. var(c(0,Inf)) == NaN
    x[is.infinite(center)] <- NaN
    
    equal <- all.equal(x, x2, check.attribute = FALSE)
    x2 <- NULL
    if (!isTRUE(equal)) {
      fcn <- getOption("matrixStats.vars.formula.onMistake", "deprecated")
      fcn <- switch(fcn, deprecated = .Deprecated, .Defunct)
      when <- attr(validate, "when", exact = TRUE)
      fcn(msg = sprintf("Detected incorrect use of argument 'center' for rowVars() or rowSds(). The value of 'center' does not meet the assumption that estimating the variance using the 'primary' or the 'alternative' formula does not matter as they should give the same results, which suggests a misunderstanding on what argument 'center' should be. Please see help(\"rowVars\", package = \"%s\"). The reason was: %s (this validation is performed %s per R option 'matrixStats.vars.formula.freq')", .packageName, equal, when))
    }
  }
  x <- x * (n / (n - 1))
  
  # Preserve names attribute?
  if (is.na(useNames) || useNames) {
    if (!is.null(names)) {
      if (!is.null(rows)) {
        names <- names[rows]
        # Zero-length attribute? Keep behavior same as base R function
        if (length(names) == 0L) names <- NULL
      }
      names(x) <- names
    }
  } else {
    names(x) <- NULL
  }

  x  
}


#' @rdname rowVars
#' @export
colVars <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, refine = TRUE, center = NULL,
                    dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  if (is.null(center)) {
    has_nas <- TRUE
    sigma2 <- .Call(C_rowVars, x, dim., rows, cols, na.rm, refine, has_nas, FALSE, useNames)
    return(sigma2)
  }

  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  centerOnUse("colVars")
  
  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names <- colnames(x)

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.
  
  # Apply subset on 'center'
  if (length(center) != ncol(x)) {
    ## Scalar 'center'?
    if (length(center) == 1L && is.null(cols)) {
      validateScalarCenter(center, ncol(x), "columns")
      center <- rep(center, times = ncol(x))
    } else {
      stop(sprintf("Argument '%s' should be of the same length as number of %s of '%s': %d != %d", "center", "columns", "x", length(center), ncol(x)))
    }
  }
  if (!is.null(cols)) center <- center[cols]
  
  # Apply subset on 'x'
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  dim. <- dim(x)

  nrow <- nrow(x)

  # Nothing to do?
  if (nrow <= 1L) {

    x <- rep(NA_real_, times = ncol(x))
    
    # Update names attribute?
    if (!is.na(useNames)) {
      if (useNames) {
        if (!is.null(names)) {
          if (!is.null(cols)) {
            names <- names[cols]
            # Zero-length attribute? Keep behavior same as base R function
            if (length(names) == 0L) names <- NULL         
          }
          names(x) <- names
        }
      } else {
        names(x) <- NULL
      }      
    } else {
      deprecatedUseNamesNA()
    }
    return(x)
  }

  if (na.rm) {
    # Count number of missing values in each column
    na_counts <- colCounts(x, value = NA_real_, na.rm = FALSE)

    # Number of non-missing values
    n <- nrow - na_counts

    has_na <- any(na_counts > 0L)
    if (has_na) {
      # Set NA estimates for rows with less than two observations
      n[n <= 1L] <- NA_integer_
    } else {
      # No need to check for missing values below
      na.rm <- FALSE
    }
  } else {
    # Assuming no missing values
    n <- nrow
  }
  
  validate <- validateVarsCenterFormula()
  if (!validate) {
    ## The primary formula for estimating the sample variance
    for (cc in seq_len(ncol(x))) {
      x[, cc] <- (x[, cc] - center[cc])^2
    }
    x <- colMeans(x, na.rm = na.rm)
    ## SPECIAL: The variance estimate when the mean estimate is infinite should be NaN
    ## just like for stats::var() - not Inf, e.g. var(c(0,Inf)) == NaN
    x[is.infinite(center)] <- NaN
  } else {
    ## The alternative formula for estimating the sample variance
    x2 <- x * x
    x2 <- colMeans(x2, na.rm = na.rm)
    x2 <- (x2 - center^2)
    
    ## The primary formula for estimating the sample variance
    for (cc in seq_len(ncol(x))) {
      x[, cc] <- (x[, cc] - center[cc])^2
    }
    x <- colMeans(x, na.rm = na.rm)
    
    ## SPECIAL: The variance estimate when the mean estimate is infinite should be NaN
    ## just like for stats::var() - not Inf, e.g. var(c(0,Inf)) == NaN
    x[is.infinite(center)] <- NaN
    
    equal <- all.equal(x, x2)
    x2 <- NULL
    if (!isTRUE(equal)) {
      fcn <- getOption("matrixStats.vars.formula.onMistake", "deprecated")
      fcn <- switch(fcn, deprecated = .Deprecated, .Defunct)
      when <- attr(validate, "when", exact = TRUE)
      fcn(msg = sprintf("Detected incorrect use of argument 'center' for colVars() or colSds(). The value of 'center' does not meet the assumption that estimating the variance using the 'primary' or the 'alternative' formula does not matter as they should give the same results, which suggests a misunderstanding on what argument 'center' should be. Please see help(\"rowVars\", package = \"%s\"). The reason was: %s (this validation is performed %s per R option 'matrixStats.vars.formula.freq')", .packageName, equal, when))
    }
  }
  x <- x * (n / (n - 1))  
  
  # Preserve names attribute?
  if (is.na(useNames) || useNames) {
    if (!is.null(names)) {
      if (!is.null(cols)) {
        names <- names[cols]
        # Zero-length attribute? Keep behavior same as base R function
        if (length(names) == 0L) names <- NULL         
      }
      names(x) <- names
    }
  } else {
    names(x) <- NULL
  }

  x  
}
