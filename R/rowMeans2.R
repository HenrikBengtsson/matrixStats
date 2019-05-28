#' Calculates the mean for each row (column) in a matrix
#'
#' Calculates the mean for each row (column) in a matrix.
#'
#' The implementation of \code{rowMeans2()} and \code{colMeans2()} is
#' optimized for both speed and memory.
#'
#' @param x A \code{\link[base]{numeric}} or a \code{\link[base]{logical}}
#' NxK \code{\link[base]{matrix}}.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param trim A scalar fraction (0 to 0.5) of observations to be trimmed 
#' from each end of x before the mean is computed. Values of trim outside that 
#' range are taken as the nearest endpoint.
#' 
#' @param na.rm If \code{\link[base:logical]{TRUE}}, \code{\link[base]{NA}}s
#' are excluded first, otherwise not.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
#'
#' @return Returns a \code{\link[base]{numeric}} \code{\link[base]{vector}} of
#' length N (K).
#'
#' @author Henrik Bengtsson
#'
#' @keywords array iteration robust univar
#' @export
rowMeans2 <- function(x, rows = NULL, cols = NULL, trim = 0, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)
  
  if (!is.numeric(trim) || length(trim) != 1L) 
    stop("'trim' must be numeric of length one")
  if (trim > 0) {
    if (trim >= 0.5) {
      if (storage.mode(x) == 'logical') {
        storage.mode(x) <- 'integer'
        med <- rowMedians(x, rows, cols, na.rm, dim., ...)
        if (!anyNA(x) && ncol(x) %% 2 != 0) {
          storage.mode(med) <- 'logical'
        } else {
          storage.mode(med) <- 'numeric'
        }
      } else {
        med <- rowMedians(x, rows, cols, na.rm, dim., ...)
      }
      return(med)
    } else {
      has_nas <- TRUE
      return(.Call(C_rowTrimmedMeans, x, dim., rows, cols, trim, na.rm, has_nas, TRUE))
    }
  }

  has_nas <- TRUE
  .Call(C_rowMeans2, x, dim., rows, cols, na.rm, has_nas, TRUE)
}

#' @rdname rowMeans2
#' @export
colMeans2 <- function(x, rows = NULL, cols = NULL, trim = 0, na.rm = FALSE,
                       dim. = dim(x), ...) {
  dim. <- as.integer(dim.)
  na.rm <- as.logical(na.rm)

  if (!is.numeric(trim) || length(trim) != 1L) 
    stop("'trim' must be numeric of length one")
  if (trim > 0) {
    if (trim >= 0.5) {
      if (storage.mode(x) == 'logical') {
        storage.mode(x) <- 'integer'
        med <- colMedians(x, rows, cols, na.rm, dim., ...)
        if (!anyNA(x) && nrow(x) %% 2 != 0) {
          storage.mode(med) <- 'logical'
        } else {
          storage.mode(med) <- 'numeric'
        }
      } else {
        med <- colMedians(x, rows, cols, na.rm, dim., ...)
      }
      return(med)
    } else {
      has_nas <- TRUE
      return(.Call(C_rowTrimmedMeans, x, dim., rows, cols, trim, na.rm, has_nas, FALSE))
    }
  }
  has_nas <- TRUE
  .Call(C_rowMeans2, x, dim., rows, cols, na.rm, has_nas, FALSE)
}
