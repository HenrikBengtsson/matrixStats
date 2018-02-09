#' @param constant A scale factor.  See \code{\link[stats]{mad}} for details.
#' 
#' @rdname rowSds
#' @export
rowMads <- function(x, rows = NULL, cols = NULL, center = NULL,
                    constant = 1.4826, na.rm = FALSE,
                    dim. = dim(x), ...) {
  if (is.null(center)) {
    dim. <- as.integer(dim.)
    na.rm <- as.logical(na.rm)
    constant <- as.numeric(constant)
    has_nas <- TRUE
    x <- .Call(C_rowMads, x, dim., rows, cols, constant, na.rm, has_nas, TRUE)
  } else {
    # Apply subset on 'x'
    if (is.vector(x)) dim(x) <- dim.
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    # Apply subset on 'center'
    if (!is.null(rows)) center <- center[rows]

    x <- x - center
    if (is.null(dim(x))) dim(x) <- dim. # prevent from dim dropping
    x <- abs(x)
    x <- rowMedians(x, na.rm = na.rm, ...)
    x <- constant * x
  }
  x
}


#' @rdname rowSds
#' @export
colMads <- function(x, rows = NULL, cols = NULL, center = NULL,
                    constant = 1.4826, na.rm = FALSE,
                    dim. = dim(x), ...) {
  if (is.null(center)) {
    dim. <- as.integer(dim.)
    na.rm <- as.logical(na.rm)
    constant <- as.numeric(constant)
    has_nas <- TRUE
    x <- .Call(C_rowMads, x, dim., rows, cols, constant, na.rm, has_nas, FALSE)
  } else {
    # Apply subset on 'x'
    if (is.vector(x)) dim(x) <- dim.
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    # Apply subset on 'center'
    if (!is.null(cols)) center <- center[cols]

    ## SLOW:
    # for (cc in seq_len(ncol(x))) {
    #   x[, cc] <- x[, cc] - center[cc]
    # }
    ## FAST:
    x <- t_tx_OP_y(x, center, OP = "-", na.rm = FALSE)
    x <- abs(x)
    x <- colMedians(x, na.rm = na.rm, ...)
    x <- constant * x
  }
  x
}
