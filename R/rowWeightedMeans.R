#' Calculates the weighted means for each row (column) in a matrix
#'
#' Calculates the weighted means for each row (column) in a matrix.
#'
#' The implementations of these methods are optimized for both speed and
#' memory.  If no weights are given, the corresponding
#' \code{rowMeans()}/\code{colMeans()} is used.
#'
#' @param x A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#'
#' @param w A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length
#' K (N).
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, missing values are
#' excluded from the calculation, otherwise not.
#'
#' @param ... Not used.
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
                             na.rm = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- ncol(x)
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of column in 'x': ", length(w), " != ", n)  #nolint
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w))
    }
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.")
    }
  }

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
      return(rep(NaN, times = m))
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

      # Standarized weights summing to one w/out missing values
      W[nas] <- 0
      W <- W / wS

      x[nas] <- 0
      nas <- NULL  # Not needed anymore

      x <- W * x
      W <- NULL  # Not needed anymore
    } else {
      wS <- sum(w)
      # Standardize weights summing to one.
      w <- w / wS

      # Weighted values
      ## SLOW: for (rr in 1:m) x[rr, ] <- w * x[rr, , drop = TRUE]
      ## FAST:
      x <- t_tx_OP_y(x, w, OP = "*", na.rm = FALSE)

      w <- NULL  # Not needed anymore
    }

    # Here we know there are no missing value in the new 'x'
    res <- rowSums(x, na.rm = FALSE)
  } else {
    res <- rowMeans(x, na.rm = na.rm)
  }

  res
}


#' @rdname rowWeightedMeans
#' @export
colWeightedMeans <- function(x, w = NULL,  rows = NULL, cols = NULL,
                             na.rm = FALSE, ...) {
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Validate arguments
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Argument 'x':
  if (!is.matrix(x)) {
    .Defunct(msg = sprintf("Argument 'x' is of class %s, but should be a matrix. The use of a %s is not supported, the correctness of the result is not guaranteed. Please update your code accordingly.", sQuote(class(x)[1]), sQuote(class(x)[1])))  #nolint
  }

  # Argument 'w':
  has_weights <- !is.null(w)
  if (has_weights) {
    n <- nrow(x)
    if (length(w) != n) {
      stop("The length of argument 'w' is does not match the number of rows in 'x': ", length(w), " != ", n)  #nolint
    }
    if (!is.numeric(w)) {
      stop("Argument 'w' is not numeric: ", mode(w))
    }
    if (any(!is.na(w) & w < 0)) {
      stop("Argument 'w' has negative weights.")
    }
  }

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
      return(rep(NaN, times = m))
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

      # Standarized weights summing to one w/out missing values
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

  res
}
