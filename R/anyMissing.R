#' Checks if there are any missing values in an object or not
#'
#' Checks if there are any missing values in an object or not.
#' \emph{Please use \code{base::anyNA()} instead of \code{anyMissing()},
#' \code{colAnyNAs()} instead of \code{colAnyMissings()}, and
#' \code{rowAnyNAs()} instead of \code{rowAnyMissings()}.}
#'
#' The implementation of this method is optimized for both speed and memory.
#' The method will return \code{\link[base:logical]{TRUE}} as soon as a missing
#' value is detected.
#'
#' @inheritParams rowAlls
#'
#' @param x A \code{\link[base]{vector}}, a \code{\link[base]{list}}, a
#' \code{\link[base]{matrix}}, a \code{\link[base]{data.frame}}, or
#' \code{\link[base]{NULL}}.
#'
#' @return Returns \code{\link[base:logical]{TRUE}} if a missing value was
#' detected, otherwise \code{\link[base:logical]{FALSE}}.
#'
#' @examples
#'  x <- rnorm(n = 1000)
#'  x[seq(300, length(x), by = 100)] <- NA
#'  stopifnot(anyMissing(x) == any(is.na(x)))
#'
#' @author Henrik Bengtsson
#'
#' @seealso Starting with R v3.1.0, there is \code{anyNA()} in the \pkg{base},
#' which provides the same functionality as \code{anyMissing()}.
#'
#' @keywords iteration logic
#' @export
anyMissing <- function(x, idxs = NULL, ...) {
  ## All list or a data.frame?
  if (is.list(x)) {
    for (kk in seq_along(x)) {
      if (.Call(C_anyMissing, x[[kk]], idxs))
        return(TRUE)
    }
    return(FALSE)
  } else {
    ## All other data types
    .Call(C_anyMissing, x, idxs)
  }
}

#' @rdname anyMissing
#' @export
colAnyMissings <- function(x, rows = NULL, cols = NULL, ..., useNames = NA) {
  colAnys(x, rows, cols, value = NA, ..., useNames = useNames)
}

#' @rdname anyMissing
#' @export
rowAnyMissings <- function(x, rows = NULL, cols = NULL, ..., useNames = NA) {
  rowAnys(x, rows, cols, value = NA, ..., useNames = useNames)
}

#' @rdname anyMissing
#' @export
colAnyNAs <- function(x, rows = NULL, cols = NULL, ..., useNames = NA) {
  colAnys(x, rows, cols, value = NA, ..., useNames = useNames)
}

#' @rdname anyMissing
#' @export
rowAnyNAs <- function(x, rows = NULL, cols = NULL, ..., useNames = NA) {
  rowAnys(x, rows, cols, value = NA, ..., useNames = useNames)
}
