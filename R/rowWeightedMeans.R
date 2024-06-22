#' Calculates the weighted means for each row (column) in a matrix
#'
#' Calculates the weighted means for each row (column) in a matrix.
#'
#' The implementations of these methods are optimized for both speed and
#' memory.  If no weights are given, the corresponding
#' \code{rowMeans()}/\code{colMeans()} is used.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param w A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' K (N).
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @example incl/rowWeightedMeans.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See \code{rowMeans()} and \code{colMeans()} in
#' \code{\link[base]{colSums}}() for non-weighted means.  See also
#' \code{\link[stats]{weighted.mean}}.
#'
#' @keywords array iteration robust univar
#' @export
rowWeightedMeans <- function(x, w = NULL, rows = NULL, cols = NULL,
                             na.rm = FALSE, ..., useNames = TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- ncol(x)
    if (length(w) != n) {
      stop(sprintf("The length of argument '%s' does not match the number of %s in '%s': %d != %d", "w", "columns", "x", length(w), n))  #nolint
    }
    if (!is.numeric(w)) {
      stop(sprintf("Argument '%s' is not numeric: %s", "w", mode(w)))
    }
    if (any(!is.na(w) & w < 0)) {
      stop(sprintf("Argument '%s' must not contain negative values", "w"))
    }
  }

  if (is.na(useNames)) deprecatedUseNamesNA()

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(cols)) w <- w[cols]

  if (has_weights) {
    # Allocate results
    m <- nrow(x)
    if (m == 0L)
      return(double(0L))

    # Drop entries with zero weight? ...but keep NAs
    idxs <- which(is.na(w) | w != 0)
    nw <- length(idxs)
    if (nw == 0L) {
      res <- rep(NaN, times = m)
      
      # Update names attribute?
      if (!is.na(useNames)) {
        if (useNames) {
          names <- rownames(x)
          if (!is.null(names)) {
            names(res) <- names
          }
        } else {
          names(res) <- NULL
        }
      }
      
      return(res)
    } else if (nw < n) {
      w <- w[idxs]
      x <- x[, idxs, drop = FALSE]
    }
    idxs <- NULL  # Not needed anymore

    # Has missing values?
    if (na.rm) {
      # Really?
      na.rm <- anyMissing(x)
    }

    if (na.rm) {
      # Indices of missing values
      nas <- which(is.na(x))

      # Weight matrix
      W <- matrix(w, nrow = nrow(x), ncol = ncol(x), byrow = TRUE)
      w <- NULL  # Not needed anymore
      W[nas] <- NA
      wS <- rowSums(W, na.rm = TRUE)

      # Standardized weights summing to one w/out missing values
      W[nas] <- 0
      W <- W / wS

      x[nas] <- 0
      nas <- NULL  # Not needed anymore

      x <- W * x
      
      # Preserve dimnames attribute?
      if (!(is.na(useNames) || useNames)) {
        dimnames(x) <- NULL
      }
      
      W <- NULL  # Not needed anymore
    } else {
      wS <- sum(w)
      # Standardize weights summing to one.
      w <- w / wS
      
      # Preserve dimnames attribute
      dimnames <- dimnames(x)

      # Weighted values
      ## SLOW: for (rr in 1:m) x[rr, ] <- w * x[rr, , drop = TRUE]
      ## FAST:
      x <- t_tx_OP_y(x, w, OP = "*", na.rm = FALSE)
      
      # Update dimnames attribute?
      if (!is.na(useNames)) {
        if (useNames) {
          if (!is.null(dimnames)) {
            dimnames(x) <- dimnames
          }
        } else {
          dimnames(x) <- NULL
        }
      }

      w <- NULL  # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- rowSums(x, na.rm = FALSE)
  } else {
    res <- rowMeans(x, na.rm = na.rm)
    
    # Preserve names attribute?
    if (!(is.na(useNames) || useNames)) {
      names(res) <- NULL
    }
  }

  res
}


#' @rdname rowWeightedMeans
#' @export
colWeightedMeans <- function(x, w = NULL,  rows = NULL, cols = NULL,
                             na.rm = FALSE, ..., useNames = TRUE) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) defunctShouldBeMatrix(x)

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- nrow(x)
    if (length(w) != n) {
      stop(sprintf("The length of argument '%s' does not match the number of %s in '%s': %d != %d", "w", "rows", "x", length(w), n))  #nolint
    }
    if (!is.numeric(w)) {
      stop(sprintf("Argument '%s' is not numeric: %s", "w", mode(w)))
    }
    if (any(!is.na(w) & w < 0)) {
      stop(sprintf("Argument '%s' must not contain negative values", "w"))
    }
  }

  if (is.na(useNames)) deprecatedUseNamesNA()

  # Apply subset on x
  if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
  else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
  else if (!is.null(cols)) x <- x[, cols, drop = FALSE]

  # Apply subset on w
  if (!is.null(w) && !is.null(rows)) w <- w[rows]

  if (has_weights) {
    # Allocate results
    m <- ncol(x)
    if (m == 0L)
      return(double(0L))

    # Drop entries with zero weight? ...but keep NAs
    idxs <- which(is.na(w) | w != 0)
    nw <- length(idxs)
    if (nw == 0L) {
      res <- rep(NaN, times = m)
      
      # Update names attribute?
      if (!is.na(useNames)) {
        if (useNames) {
          names <- colnames(x)
          if (!is.null(names)) {
            names(res) <- names
          }
        } else {
          names(res) <- NULL
        }
      }      
      
      return(res)
    } else if (nw < n) {
      w <- w[idxs]
      x <- x[idxs, , drop = FALSE]
    }
    idxs <- NULL  # Not needed anymore

    # Has missing values?
    if (na.rm) {
      # Really?
      na.rm <- anyMissing(x)
    }

    if (na.rm) {
      # Indices of missing values
      nas <- which(is.na(x))

      # Weight matrix
      W <- matrix(w, nrow = nrow(x), ncol = ncol(x), byrow = FALSE)
      w <- NULL  # Not needed anymore
      W[nas] <- NA
      wS <- colSums(W, na.rm = TRUE)

      # Standardized weights summing to one w/out missing values
      W[nas] <- 0
      for (cc in 1:m) {
        W[, cc] <- W[, cc, drop = TRUE] / wS[cc]
      }

      x[nas] <- 0
      nas <- NULL  # Not needed anymore

      x <- W * x

      W <- NULL  # Not needed anymore
    } else {
      wS <- sum(w)
      # Standardize weights summing to one.
      w <- w / wS

      # Weighted values
      x <- w * x
      ## SLIGHTLY SLOWER: x <- x_OP_y(x, w, OP = "*")

      w <- NULL  # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- colSums(x, na.rm = FALSE)
  } else {
    res <- colMeans(x, na.rm = na.rm)
  }
  
  # Preserve names attribute?
  if (!(is.na(useNames) || useNames)) {
    names(res) <- NULL
  }

  res
}
