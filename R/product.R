#' @rdname rowProds
#' @export
product <- function(x, idxs = NULL, na.rm = FALSE, ...) {
  .Call(C_productExpSumLog, x, idxs, as.logical(na.rm), TRUE)
}
