#' Calculates the sum for each row (column) in a matrix
#'
#' Calculates the sum for each row (column) in a matrix.
#'
#' The implementation of \code{rowSums2()} and \code{colSums2()} is
#' optimized for both speed and memory.
#'
#' @inheritParams rowAlls
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @keywords array iteration robust univar
#' @export
rowSums2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)

  has_nas <- TRUE
  res <- .Call(C_rowSums2, x, dim., rows, cols, na.rm, has_nas, TRUE)
  
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

#' @rdname rowSums2
#' @export
colSums2 <- function(x, rows = NULL, cols = NULL, na.rm = FALSE,
                       dim. = dim(x), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)

  has_nas <- TRUE
  res <- .Call(C_rowSums2, x, dim., rows, cols, na.rm, has_nas, FALSE)
  
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
