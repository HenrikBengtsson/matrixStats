#' Cumulative sums, products, minima and maxima for each row (column) in a
#' matrix
#'
#' Cumulative sums, products, minima and maxima for each row (column) in a
#' matrix.
#'
#' @inheritParams rowAlls
#'
#' @return Returns a \code{\link[base]{numeric}} NxK \code{\link[base]{matrix}}
#' of the same mode as \code{x}, except when \code{x} is of mode
#' \code{\link[base]{logical}}, then the return type is
#' \code{\link[base]{integer}}.
#'
#' @example incl/rowCumsums.R
#'
#' @author Henrik Bengtsson
#'
#' @seealso See \code{\link[base]{cumsum}}(), \code{\link[base]{cumprod}}(),
#' \code{\link[base]{cummin}}(), and \code{\link[base]{cummax}}().
#'
#' @keywords array iteration univar
#' @export
rowCumsums <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCumsums, x, dim., rows, cols, TRUE, useNames)
}


#' @rdname rowCumsums
#' @export
colCumsums <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCumsums, x, dim., rows, cols, FALSE, useNames)
}


#' @rdname rowCumsums
#' @export
rowCumprods <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCumprods, x, dim., rows, cols, TRUE, useNames)
}


#' @rdname rowCumsums
#' @export
colCumprods <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCumprods, x, dim., rows, cols, FALSE, useNames)
}


#' @rdname rowCumsums
#' @export
rowCummins <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCummins, x, dim., rows, cols, TRUE, useNames)
}


#' @rdname rowCumsums
#' @export
colCummins <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCummins, x, dim., rows, cols, FALSE, useNames)
}


#' @rdname rowCumsums
#' @export
rowCummaxs <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCummaxs, x, dim., rows, cols, TRUE, useNames)
}


#' @rdname rowCumsums
#' @export
colCummaxs <- function(x, rows = NULL, cols = NULL, dim. = dim(x), ..., useNames = TRUE) {
  if (is.na(useNames)) deprecatedUseNamesNA()
  .Call(C_rowCummaxs, x, dim., rows, cols, FALSE, useNames)
}
