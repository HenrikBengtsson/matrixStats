#' Estimates quantiles for each row (column) in a matrix
#'
#' Estimates quantiles for each row (column) in a matrix.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}} with
#' N >= 0.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param probs A \code{\link[base]{numeric}} \code{\link[base]{vector}} of J
#' probabilities in [0, 1].
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are excluded first, otherwise not.
#'
#' @param type An \code{\link[base]{integer}} specify the type of estimator.
#' See \code{\link[stats]{quantile}} for more details.
#'
#' @param ... Additional arguments passed to \code{\link[stats]{quantile}}.
#'
#' @param drop If TRUE, singleton dimensions in the result are dropped,
#' otherwise not.
#'
#' @return Returns a \code{\link[base]{numeric}} NxJ (KxJ)
#' \code{\link[base]{matrix}}, where N (K) is the number of rows (columns) for
#' which the J quantiles are calculated.
#'
#' @example incl/rowQuantiles.R
#'
#' @author Henrik Bengtsson
#' @seealso \code{\link[stats]{quantile}}.
#' @keywords array iteration robust univar
#'
#' @importFrom stats quantile
#' @export
rowQuantiles <- function(x, rows = NULL, cols = NULL,
                         probs = seq(from = 0, to = 1, by = 0.25),
                         na.rm = FALSE, type = 7L, ..., drop = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps, 1+eps]")
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  if (nrow > 0L && ncol > 0L) {
    na_rows <- rowAnyMissings(x)
    has_na <- any(na_rows)
    if (!has_na) na.rm <- FALSE

    if (!has_na && type == 7L) {
      n <- ncol
      idxs <- 1 + (n - 1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN = 1L, FUN = sort, partial = partial)
      if (is.null(dim(xp))) dim(xp) <- c(1L, length(xp))

      q <- apply(xp, MARGIN = 2L, FUN = .subset, idxs_lo)
      if (is.null(dim(q))) dim(q) <- c(1L, length(q))

      # Adjust
      idxs_adj <- which(idxs > idxs_lo)
      if (length(idxs_adj) > 0L) {
        q_lo <- q[idxs_adj, , drop = FALSE]
        idxs_hi <- idxs_hi[idxs_adj]
        q_hi <- apply(xp, MARGIN = 2L, FUN = .subset, idxs_hi)
        w <- (idxs - idxs_lo)[idxs_adj]
        q[idxs_adj, ] <- (1 - w) * q_lo + w * q_hi
        # Not needed anymore
        xp <- q_lo <- q_hi <- NULL
      }

      # Backward compatibility
      q <- t(q)
    } else {
      # Allocate result
      na_value <- NA_real_
      storage.mode(na_value) <- storage.mode(x)
      q <- matrix(na_value, nrow = nrow, ncol = length(probs))

      # For each row...
      rows <- seq_len(nrow)

      # Rows with NAs should return all NAs (so skip those)
      if (has_na && !na.rm) rows <- rows[!na_rows]

      for (kk in rows) {
        xkk <- x[kk, ]
        if (na.rm) xkk <- xkk[!is.na(xkk)]
        q[kk, ] <- quantile(xkk, probs = probs, na.rm = FALSE, type = type, ...)
      }
    } # if (type ...)
  } else {
    na_value <- NA_real_
    storage.mode(na_value) <- storage.mode(x)
    q <- matrix(na_value, nrow = nrow, ncol = length(probs))
  }

  # Add names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100 * probs)
  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
}

#' @importFrom stats quantile
#' @rdname rowQuantiles
#' @export
colQuantiles <- function(x, rows = NULL, cols = NULL,
                         probs = seq(from = 0, to = 1, by = 0.25),
                         na.rm = FALSE, type = 7L, ..., drop = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) {
    .Deprecated(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed, and will be defunct (produce an error) in a future version of matrixStats. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps, 1+eps]")
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  if (nrow > 0L && ncol > 0L) {
    na_cols <- colAnyMissings(x)
    has_na <- any(na_cols)
    if (!has_na) na.rm <- FALSE

    if (!has_na && type == 7L) {
      n <- nrow
      idxs <- 1 + (n - 1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN = 2L, FUN = sort, partial = partial)
      if (is.null(dim(xp))) dim(xp) <- c(1L, length(xp))

      q <- apply(xp, MARGIN = 2L, FUN = .subset, idxs_lo)
      if (is.null(dim(q))) dim(q) <- c(1L, length(q))

      # Adjust
      idxs_adj <- which(idxs > idxs_lo)
      if (length(idxs_adj) > 0L) {
        q_lo <- q[idxs_adj, , drop = FALSE]
        idxs_hi <- idxs_hi[idxs_adj]
        q_hi <- apply(xp, MARGIN = 2L, FUN = .subset, idxs_hi)
        w <- (idxs - idxs_lo)[idxs_adj]
        q[idxs_adj, ] <- (1 - w) * q_lo + w * q_hi
        # Not needed anymore
        xp <- q_lo <- q_hi <- NULL
      }

      # Backward compatibility
      q <- t(q)
    } else {
      # Allocate result
      na_value <- NA_real_
      storage.mode(na_value) <- storage.mode(x)
      q <- matrix(na_value, nrow = ncol, ncol = length(probs))

      # For each column...
      cols <- seq_len(ncol)

      # Columns with NAs should return all NAs (so skip those)
      if (has_na && !na.rm) cols <- cols[!na_cols]

      for (kk in cols) {
        xkk <- x[, kk]
        if (na.rm) xkk <- xkk[!is.na(xkk)]
        q[kk, ] <- quantile(xkk, probs = probs, na.rm = FALSE, type = type, ...)
      }
    } # if (type ...)
  } else {
    na_value <- NA_real_
    storage.mode(na_value) <- storage.mode(x)
    q <- matrix(na_value, nrow = ncol, ncol = length(probs))
  }

  # Add names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100 * probs)

  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
}
