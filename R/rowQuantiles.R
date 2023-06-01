#' Estimates quantiles for each row (column) in a matrix
#'
#' Estimates quantiles for each row (column) in a matrix.
#'
#' @inheritParams rowAlls
#'
#' @param x An \code{\link[base]{integer}}, \code{\link[base]{numeric}} or
#' \code{\link[base]{logical}} NxK \code{\link[base]{matrix}} with N >= 0.
#'
#' @param probs A \code{\link[base]{numeric}} \code{\link[base]{vector}} of J
#' probabilities in [0, 1].
#'
#' @param type An \code{\link[base]{integer}} specifying the type of estimator.
#' See \code{\link[stats]{quantile}} for more details.
#'
#' @param digits An \code{\link[base]{integer}} specifying the precision of
#' the formatted percentages. Not used when `useNames = FALSE`.
#' In **matrixStats** (< 0.63.0), the default used to be
#' `max(2L, getOption("digits"))` inline with R (< 4.1.0).
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
                         na.rm = FALSE, type = 7L, digits = 7L,
                         ..., useNames = TRUE, drop = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)
  if (!is.numeric(x) && !is.integer(x) && !is.logical(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of type %s. Only 'integer', 'numeric', and 'logical' is supported.", sQuote(storage.mode(x))))  #nolint
  }

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop(sprintf("Argument '%s' must not contain missing values", "probs"))
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop(sprintf("Argument '%s' is out of range [0-eps, 1+eps]: %g", "probs", probs))
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
        q[kk, ] <- quantile(xkk, probs = probs, na.rm = FALSE, type = type, names = FALSE, ...)
      }
    } # if (type ...)
  }

  # Preserve names attribute?
  if (is.na(useNames)) {
    deprecatedUseNamesNA()
    rownames(q) <- rownames(x)
    # Add percentage names
    if (length(probs) > 0) {
      colnames(q) <- quantile_probs_names(probs, digits = digits)
    }
  } else if (useNames) {
    rownames(q) <- rownames(x)
    # Add percentage names
    if (length(probs) > 0) {
      colnames(q) <- quantile_probs_names(probs, digits = digits)
    }
  } else {
    rownames(q) <- NULL
  }
  
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
                         na.rm = FALSE, type = 7L, digits = 7L,
                         ..., useNames = TRUE, drop = TRUE) {
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)
  if (!is.numeric(x) && !is.integer(x) && !is.logical(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of type %s. Only 'integer', 'numeric', and 'logical' is supported.", sQuote(storage.mode(x))))  #nolint
  }

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop(sprintf("Argument '%s' must not contain missing values", "probs"))
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop(sprintf("Argument '%s' is out of range [0-eps, 1+eps]: %g", "probs", probs))
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
        q[kk, ] <- quantile(xkk, probs = probs, na.rm = FALSE, type = type, names = FALSE, ...)
      }
    } # if (type ...)    
  }

  # Preserve names attribute?
  if (is.na(useNames)) {
    deprecatedUseNamesNA()
    rownames(q) <- colnames(x)
    # Add percentage names
    if (length(probs) > 0) {
      colnames(q) <- quantile_probs_names(probs, digits = digits)
    }
  } else if (useNames) {
    rownames(q) <- colnames(x)
    # Add percentage names
    if (length(probs) > 0) {
      colnames(q) <- quantile_probs_names(probs, digits = digits)
    }
  } else {
    rownames(q) <- NULL
  }

  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
}


quantile_probs_names <- function(probs, digits = 7L) {
  if (!is.numeric(digits) || is.na(digits) || digits < 1L) {
    stop("Argument 'digits' is not a single positive numeric")
  }
  ## Adopted from stats:::format_perc()
  probs <- 100 * probs
  if (length(probs) < 100) {
    names <- formatC(probs, format = "fg", width = 1L, digits = digits)
  } else {
    names <- format(probs, trim = TRUE, digits = digits)
  }
  names <- paste(names, "%", sep = "")
  names[is.na(probs)] <- ""
  names
}
