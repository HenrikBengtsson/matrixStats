#' Accurately computes the logarithm of the sum of exponentials across rows or
#' columns
#'
#' Accurately computes the logarithm of the sum of exponentials across rows or
#' columns.
#'
#' @inheritParams rowAlls
#' @inheritParams logSumExp
#'
#' @param lx A \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}.
#' Typically \code{lx} are \eqn{log(x)} values.
#'
#' @param rows,cols A \code{\link[base]{vector}} indicating subset of rows
#' (and/or columns) to operate over. If \code{\link[base]{NULL}}, no subsetting
#' is done.
#'
#' @param na.rm If \code{\link[base:logical]{TRUE}}, any missing values are
#' ignored, otherwise not.
#'
#' @param dim. An \code{\link[base]{integer}} \code{\link[base]{vector}} of
#' length two specifying the dimension of \code{x}, also when not a
#' \code{\link[base]{matrix}}.
#'
#' @param ... Not used.
#'
#' @return A \code{\link[base]{numeric}} \code{\link[base]{vector}} of length N
#' (K).
#'
#' @section Benchmarking:
#' These methods are implemented in native code and have been optimized for
#' speed and memory.
#'
#' @author Native implementation by Henrik Bengtsson.  Original R code by
#' Nakayama ??? (Japan).
#'
#' @seealso To calculate the same on vectors, \code{\link{logSumExp}}().
#'
#' @keywords array
#' @export
rowLogSumExps <- function(lx, rows = NULL, cols = NULL, na.rm = FALSE,
                          dim. = dim(lx), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  has_na <- TRUE
  res <- .Call(C_rowLogSumExps,
               as.numeric(lx),
               dim., rows, cols, as.logical(na.rm), has_na, TRUE)

  # Preserve names attribute?
  if (is.na(useNames) || useNames) {
    names <- rownames(lx)
    if (!is.null(names)){
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

  res
}


#' @rdname rowLogSumExps
#' @export
colLogSumExps <- function(lx, rows = NULL, cols = NULL, na.rm = FALSE,
                          dim. = dim(lx), ..., useNames = NA) {
  dim. <- as.integer(dim.)
  has_na <- TRUE
  
  res <- .Call(C_rowLogSumExps,
               as.numeric(lx),
               dim., rows, cols, as.logical(na.rm), has_na, FALSE)

  # Preserve names attribute?
  if (is.na(useNames) || useNames) {
    names <- colnames(lx)
    if (!is.null(names)){
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

  res
}
