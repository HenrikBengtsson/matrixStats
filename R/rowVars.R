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
#' @param center (optional) The center, defaults to the row means.
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

  # Apply subset on 'x'
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  dim. <- dim(x)

  # Apply subset on 'center'
  if (!is.null(rows)) center <- center[rows]

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

  # Spread
  x <- x * x
  x <- rowMeans(x, na.rm = na.rm)

  # Variance
  x <- (x - center^2)
  x * (n / (n - 1))
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

  # Apply subset on 'x'
  if (is.vector(x)) dim(x) <- dim.
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
  dim. <- dim(x)

  # Apply subset on 'center'
  if (!is.null(cols)) center <- center[cols]

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

  # Spread
  x <- x * x
  x <- colMeans(x, na.rm = na.rm)

  # Variance
  x <- (x - center^2)
  x * (n / (n - 1))
}
