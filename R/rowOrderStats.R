#' Gets an order statistic for each row (column) in a matrix
#'
#' Gets an order statistic for each row (column) in a matrix.
#'
#' The implementation of \code{rowOrderStats()} is optimized for both speed and
#' memory.  To avoid coercing to \code{\link[base]{double}}s (and hence memory
#' allocation), there is a unique implementation for
#' \code{\link[base]{integer}} matrices.
#'
#' @inheritParams rowAlls
#' @inheritParams rowDiffs
#'
#' @param which An \code{\link[base]{integer}} index in [1,K] ([1,N])
#' indicating which order statistic to be returned.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @section Missing values: This method does \emph{not} handle missing values,
#' that is, the result corresponds to having \code{na.rm = FALSE} (if such an
#' argument would be available).
#'
#' @author The native implementation of \code{rowOrderStats()} was adopted by
#' Henrik Bengtsson from Robert Gentleman's \code{rowQ()} in the \pkg{Biobase}
#' package.
#'
#' @seealso See \code{rowMeans()} in \code{\link[base]{colSums}}().
#'
#' @keywords array iteration robust univar
#' @export
rowOrderStats <- function(x, rows = NULL, cols = NULL, which,
                          dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)

  # Check missing values
  if (anyMissing(x)) {
    stop(sprintf("Argument '%s' must not contain missing values", "x"))
  }

  which <- as.integer(which)
  res <- .Call(C_rowOrderStats, x, dim., rows, cols, which)
  
  # Update names attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      names <- rownames(x)
      if (!is.null(names)) {
        if (!is.null(rows)) {
          names <- names[rows]
          # Zero-length attribute? Keep behavior same as base R function
          if (length(names) == 0L) names <- NULL
        }
        names(res) <- names
      }
    } else {
      names(res) <- NULL
    }
  }
  
  res
}


#' @rdname rowOrderStats
#' @export
colOrderStats <- function(x, rows = NULL, cols = NULL, which,
                          dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)

  # Check missing values
  if (anyMissing(x)) {
    stop(sprintf("Argument '%s' must not contain missing values", "x"))
  }

  which <- as.integer(which)
  res <- .Call(C_colOrderStats, x, dim., rows, cols, which)
  
  # Update names attribute?
  if (!is.na(useNames)) {
    if (useNames) {
      names <- colnames(x)
      if (!is.null(names)) {
        if (!is.null(cols)) {
          names <- names[cols]
          # Zero-length attribute? Keep behavior same as base R function
          if (length(names) == 0L) names <- NULL         
        }
        names(res) <- names
      }
    } else {
      names(res) <- NULL
    }
  }
  
  res
}
