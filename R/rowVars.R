#' Variance estimates for each row (column) in a matrix
#'
#' Variance estimates for each row (column) in a matrix.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values
#' are excluded first, otherwise not.
#'
#' @param center (optional; a vector or length N (K)) If the row (column)
#' means are already estimated, they can be pre-specified using this argument.
#' This avoid re-estimating them again. (*Warning: If biased estimated are
#' given, the estimate of the spread will also be biased.*)
#' If NULL (default), the row/column means are estimated internally.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Additional arguments passed to \code{rowMeans()} and
#' \code{rowSums()}.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @example incl/rowMethods.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See \code{rowMeans()} and \code{rowSums()} in
#' \code{\link[base]{colSums}}().
#' @keywords array iteration robust univar
#' @export
rowVars <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, center = NULL,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)

  if (is.null(center)) {
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    sigma2 <- .Call(C_rowVars, x, dim., rows, cols, na.rm, has_nas, TRUE)
    return(sigma2)
  }

  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  centerOnUse("rowVars")

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.
  
  # Apply subset on 'center'
  if (length(center) != nrow(x)) {
    ## Scalar 'center'?
    if (length(center) == 1L && is.null(rows)) {
      validateScalarCenter(center, nrow(x), "rows")
      center <- rep(center, times = nrow(x))
    } else {
      stop("Argument 'center' should be of the same length as number of rows of 'x': ", length(center), " != ", nrow(x))
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

  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names <- rownames(x)

  validate <- validateVarsCenterFormula()
  if (!validate) {
    ## The primary formula for estimating the sample variance
    x <- (x - center)^2
    ## SPECIAL: The variance estimate when the mean estimate is infinite should be NaN
    ## just like for stats::var() - not Inf, e.g. var(c(0,Inf)) == NaN
    x[is.infinite(center)] <- NaN
    x <- rowMeans(x, na.rm = na.rm)
    x <- x * (n / (n - 1))
    names(x) <- names
    return(x)
  }

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

  equal <- all.equal(x, x2, check.attributes = FALSE)
  x2 <- NULL
  if (!isTRUE(equal)) {
    fcn <- getOption("matrixStats.vars.formula.onMistake", "deprecated")
    fcn <- switch(fcn, deprecated = .Deprecated, .Defunct)
    fcn(msg = sprintf("rowVars() was called with a 'center' argument that does not meet the assumption that estimating the variance using the 'primary' or the 'alternative' formula does not matter as they should give the same results. This suggests a misunderstanding on what argument 'center' should be. The reason was: %s", equal))
  }
  
  x <- x * (n / (n - 1))
  names(x) <- names
  x  
}


#' @rdname rowVars
#' @export
colVars <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, center = NULL,
                    dim. = dim(x), ...) {
  dim. <- as.integer(dim.)

  if (is.null(center)) {
    dim. <- as.integer(dim.)
    na.rm <- as.logical(na.rm)
    has_nas <- TRUE
    sigma2 <- .Call(C_rowVars, x, dim., rows, cols, na.rm, has_nas, FALSE)
    return(sigma2)
  }

  ## https://github.com/HenrikBengtsson/matrixStats/issues/187
  centerOnUse("colVars")

  # Apply new dimensions
  if (!identical(dim(x), dim.)) dim(x) <- dim.
  
  # Apply subset on 'center'
  if (length(center) != ncol(x)) {
    ## Scalar 'center'?
    if (length(center) == 1L && is.null(cols)) {
      validateScalarCenter(center, ncol(x), "columns")
      center <- rep(center, times = ncol(x))
    } else {
      stop("Argument 'center' should be of the same length as number of columns of 'x': ", length(center), " != ", ncol(x))
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

  ## BACKWARD COMPATIBILITY: matrixStats (<= 0.57.0) returns names
  ## when !is.null(center), which is tested by DelayedMatrixStats
  ## and sparseMatrixStats
  names <- names(x)
  
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
    x <- x * (n / (n - 1))
    names(x) <- names
    return(x)
  }

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
    fcn(sprintf("colVars() was called with a 'center' argument that does not meet the assumption that estimating the variance using the 'primary' or the 'alternative' formula does not matter as they should give the same results. This suggests a misunderstanding on what argument 'center' should be. The reason was: %s", equal))
  }
  
  x <- x * (n / (n - 1))
  names(x) <- names
  x  
}
