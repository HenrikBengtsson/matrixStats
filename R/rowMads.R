#' @param constant A scale factor.  See \code{\link[stats]{mad}} for details.
#' 
#' @rdname rowSds
#' @export
rowMads <- function(x, rows = NULL, cols = NULL, center = NULL,
                    constant = 1.4826, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = TRUE) {
  if (is.null(center)) {
    if (is.na(useNames)) deprecatedUseNamesNA()
    constant <- as.numeric(constant)
    has_nas <- TRUE
    
    x <- .Call(C_rowMads, x, dim., rows, cols, constant, na.rm, has_nas, TRUE, useNames)
  } else {
    ## https://github.com/HenrikBengtsson/matrixStats/issues/187
    centerOnUse("rowMads")
    
    # Preserve names
    names <- rownames(x)
    
    # Apply new dimensions
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    
    # Apply subset on 'center'
    if (length(center) != nrow(x)) {
      if (length(center) == 1L && is.null(rows)) {
        validateScalarCenter(center, nrow(x), "rows")
      } else {
        stop(sprintf("Argument '%s' should be of the same length as number of %s of '%s': %d != %d", "center", "rows", "x", length(center), nrow(x)))
      }
    }
    if (!is.null(rows)) center <- center[rows]

    # Apply subset on 'x'
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    x <- x - center
    if (is.null(dim(x))) {
      dim(x) <- dim. # prevent from dim dropping
      # Preserve names attribute?
      if (!is.na(useNames) && useNames) {
        if (!is.null(names)) {
          if (!is.null(rows)) {
            names <- names[rows]
          }
          rownames(x) <- names
        }
      }
    }
    x <- abs(x)
    x <- rowMedians(x, na.rm = na.rm, ..., useNames = useNames)
    x <- constant * x
  }

  x
}


#' @rdname rowSds
#' @export
colMads <- function(x, rows = NULL, cols = NULL, center = NULL,
                    constant = 1.4826, na.rm = FALSE,
                    dim. = dim(x), ..., useNames = TRUE) {
  if (is.null(center)) {
    if (is.na(useNames)) deprecatedUseNamesNA()
    constant <- as.numeric(constant)
    has_nas <- TRUE
    
    x <- .Call(C_rowMads, x, dim., rows, cols, constant, na.rm, has_nas, FALSE, useNames)
  } else {
    ## https://github.com/HenrikBengtsson/matrixStats/issues/187
    centerOnUse("colMads")
    
    # Preserve names
    names <- colnames(x)
    
    # Apply new dimensions
    if (!identical(dim(x), dim.)) dim(x) <- dim.
    
    # Apply subset on 'center'
    if (length(center) != ncol(x)) {
      if (length(center) == 1L && is.null(cols)) {
        validateScalarCenter(center, ncol(x), "columns")
      } else {
        stop(sprintf("Argument '%s' should be of the same length as number of %s of '%s': %d != %d", "center", "columns", "x", length(center), ncol(x)))
      }
    }
    if (!is.null(cols)) center <- center[cols]

    # Apply subset on 'x'
    if (!is.null(rows) && !is.null(cols)) x <- x[rows, cols, drop = FALSE]
    else if (!is.null(rows)) x <- x[rows, , drop = FALSE]
    else if (!is.null(cols)) x <- x[, cols, drop = FALSE]
    dim. <- dim(x)

    ## SLOW:
    # for (cc in seq_len(ncol(x))) {
    #   x[, cc] <- x[, cc] - center[cc]
    # }
    ## FAST:
    x <- t_tx_OP_y(x, center, OP = "-", na.rm = FALSE)
    # Preserve names attribute?
    if (!is.na(useNames)) {
      if (useNames) {
        if (!is.null(names)) {
          if (!is.null(cols)) {
            names <- names[cols]
            # Zero-length attribute? Keep behavior same as base R function
            if (length(names) == 0L) names <- NULL         
          }
          colnames(x) <- names
        }
      } else {
        colnames(x) <- NULL
      }
    }
    x <- abs(x)
    x <- colMedians(x, na.rm = na.rm, ..., useNames = useNames)
    x <- constant * x
  }

  x
}
