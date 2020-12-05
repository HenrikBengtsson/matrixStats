#' Estimates quantiles for each row (column) in a matrix
#'
#' Estimates quantiles for each row (column) in a matrix.
#'
#' @param x An \code{\link[base]{integer}}, \code{\link[base]{numeric}} or
#' \code{\link[base]{logical}} NxK \code{\link[base]{matrix}} with N >= 0.
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
#' @return Returns a NxJ (KxJ) \code{\link[base]{matrix}}, where N (K) is the
#' number of rows (columns) for which the J quantiles are calculated.
#' The return type is either integer or numeric depending on \code{type}.
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
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }
  if (!is.numeric(x) && !is.integer(x) && !is.logical(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of type %s. Only 'integer', 'numeric', and 'logical' is supported.", sQuote(storage.mode(x))))  #nolint
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

  # Coerce?
#  if (is.logical(x)) {
#    storage.mode(x) <- "integer"
#  }

  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  # Allocate result
  na_value <- NA_real_
  if (type != 7L) storage.mode(na_value) <- storage.mode(x)
  q <- matrix(na_value, nrow = nrow, ncol = length(probs))

  if (nrow > 0L && ncol > 0L) {
    na_rows <- rowAnyMissings(x)
    has_na <- any(na_rows)
    if (!has_na) na.rm <- FALSE

    if (!has_na && type == 7L) {
      n <- ncol
      idxs <- 1 + (n - 1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort.int(unique(c(idxs_lo, idxs_hi)))

      # Adjust?
      idxs_adj <- which(idxs > idxs_lo)
      adj <- (length(idxs_adj) > 0L)
      # Adjust
      if (adj) {
        idxs_hi <- idxs_hi[idxs_adj]
        w <- (idxs - idxs_lo)[idxs_adj]
        q_lo <- matrix(na_value, nrow = length(idxs_adj), ncol = nrow)
        q_hi <- matrix(na_value, nrow = length(idxs_adj), ncol = nrow)
        cols <- seq_len(ncol)
        for (rr in seq_len(nrow)) {
          x_rr <- .subset(x, rr, cols, drop = TRUE)
          xp_rr <- sort.int(x_rr, partial = partial)
	  q_rr <- .subset(xp_rr, idxs_lo)
          q[rr,] <- q_rr
          q_hi[,rr] <- .subset(xp_rr, idxs_hi)
          q_lo[,rr] <- .subset(q_rr, idxs_adj)
          # Not needed anymore
          x_rr <- xp_rr <- NULL
        }
	q_adj <- (1 - w) * q_lo + w * q_hi
	for (cc in seq_along(idxs_adj)) {
	  q[, idxs_adj[cc]] <- q_adj[cc, , drop = TRUE]
	}
        # Not needed anymore
        q_adj <- q_lo <- q_hi <- NULL
      } else {
        cols <- seq_len(ncol)
        for (rr in seq_len(nrow)) {
          x_rr <- .subset(x, rr, cols, drop = TRUE)
          xp_rr <- sort.int(x_rr, partial = partial)
          q[rr,] <- .subset(xp_rr, idxs_lo)
          # Not needed anymore
          x_rr <- xp_rr <- NULL
        }
      }

      storage.mode(q) <- "numeric"
    } else {
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
  }

  # Add dim names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100 * probs)
  rownames(q) <- rownames(x)
  
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
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }
  if (!is.numeric(x) && !is.integer(x) && !is.logical(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of type %s. Only 'integer', 'numeric', and 'logical' is supported.", sQuote(storage.mode(x))))  #nolint
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

  # Coerce?
#  if (is.logical(x)) {
#    storage.mode(x) <- "integer"
#  }
  
  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  # Allocate result
  na_value <- NA_real_
  if (type != 7L) storage.mode(na_value) <- storage.mode(x)
  q <- matrix(na_value, nrow = ncol, ncol = length(probs))

  if (nrow > 0L && ncol > 0L) {
    na_cols <- colAnyMissings(x)
    has_na <- any(na_cols)
    if (!has_na) na.rm <- FALSE

    if (!has_na && type == 7L) {
      n <- nrow
      idxs <- 1 + (n - 1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort.int(unique(c(idxs_lo, idxs_hi)))

      # Adjust?
      idxs_adj <- which(idxs > idxs_lo)
      adj <- (length(idxs_adj) > 0L)
      if (adj) {
        idxs_hi <- idxs_hi[idxs_adj]
        w <- (idxs - idxs_lo)[idxs_adj]
        q_lo <- matrix(na_value, nrow = length(idxs_adj), ncol = ncol)
        q_hi <- matrix(na_value, nrow = length(idxs_adj), ncol = ncol)
        rows <- seq_len(nrow)
        for (cc in seq_len(ncol)) {
          x_cc <- .subset(x, rows, cc, drop = TRUE)
          xp_cc <- sort.int(x_cc, partial = partial)
	  q_cc <- .subset(xp_cc, idxs_lo)
          q[cc,] <- q_cc
          q_hi[,cc] <- .subset(xp_cc, idxs_hi)
          q_lo[,cc] <- .subset(q_cc, idxs_adj)
          # Not needed anymore
          x_cc <- xp_cc <- NULL
        }
	q_adj <- (1 - w) * q_lo + w * q_hi
	for (cc in seq_along(idxs_adj)) {
	  q[, idxs_adj[cc]] <- q_adj[cc, , drop = TRUE]
	}
        # Not needed anymore
        q_adj <- q_lo <- q_hi <- NULL
      } else {
        rows <- seq_len(nrow)
        for (cc in seq_len(ncol)) {
          x_cc <- .subset(x, rows, cc, drop = TRUE)
          xp_cc <- sort.int(x_cc, partial = partial)
          q[cc,] <- .subset(xp_cc, idxs_lo)
          # Not needed anymore
          x_cc <- xp_cc <- NULL
        }
      }
      
    } else {
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
  }

  # Add dim names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100 * probs)
  rownames(q) <- colnames(x)

  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
}
