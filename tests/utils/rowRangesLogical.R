# Shared by rowRanges.R and rowRanges_subset.R.  Coercion belongs only to the
# independent test controls; the implementation must not copy the input matrix.
logicalRangeCases <- function() {
  cases <- list(matrix(TRUE, 3L, 4L), matrix(FALSE, 3L, 4L),
                matrix(c(TRUE, FALSE, NA, NA, FALSE, TRUE, FALSE, NA,
                         NA, NA, NA, NA, TRUE, FALSE, TRUE, NA), 4L, 4L),
                matrix(NA, 3L, 4L), matrix(logical(0L), 0L, 0L),
                matrix(logical(0L), 0L, 3L),
                matrix(logical(0L), 3L, 0L),
                matrix(TRUE, 1L, 1L), matrix(FALSE, 1L, 1L),
                matrix(NA, 1L, 1L))
  lapply(cases, function(x) {
    dimnames(x) <- list(letters[seq_len(nrow(x))],
                       LETTERS[seq_len(ncol(x))])
    x
  })
}

logicalRangeIndices <- function(n) {
  list(NULL, integer(0L), rev(seq_len(n)), c(n, 1L, n),
       c(NA_integer_, 1L), c(rep(TRUE, n - 1L), NA), -1L)
}

# Unlike apply(), this also specifies the storage type of a zero-length result.
# Each reduction is base R on a separately coerced integer/double matrix.
logicalRangeReference <- function(x, margin, what, na.rm) {
  if (margin == 2L) x <- t(x)
  fun <- switch(what, Mins = min, Maxs = max, Ranges = range)
  values <- lapply(seq_len(nrow(x)), function(i) {
    suppressWarnings(fun(x[i, ], na.rm = na.rm))
  })
  ans <- if (length(values)) {
    unlist(values, use.names = FALSE)
  } else if (is.double(x)) {
    double(0L)
  } else {
    integer(0L)
  }
  if (what == "Ranges") ans <- matrix(ans, ncol = 2L, byrow = TRUE)
  ans
}

checkLogicalRanges <- function(x, rows = NULL, cols = NULL) {
  stopifnot(is.logical(x), is.matrix(x))
  xi <- x
  storage.mode(xi) <- "integer"
  xd <- x
  storage.mode(xd) <- "double"
  ri <- if (is.null(rows)) seq_len(nrow(x)) else rows
  ci <- if (is.null(cols)) seq_len(ncol(x)) else cols
  zi <- xi[ri, ci, drop = FALSE]
  zd <- xd[ri, ci, drop = FALSE]

  for (margin in 1:2) {
    for (what in c("Mins", "Maxs", "Ranges")) {
      fun <- get(paste0(c("row", "col")[margin], what))
      for (na.rm in c(FALSE, TRUE)) {
        ref <- logicalRangeReference(zi, margin, what, na.rm)
        refd <- logicalRangeReference(zd, margin, what, na.rm)
        for (useNames in c(FALSE, TRUE)) {
          for (vectorInput in c(FALSE, TRUE)) {
            args <- list(rows = rows, cols = cols, dim. = dim(x),
                         na.rm = na.rm, useNames = useNames)
            inputs <- if (vectorInput) {
              lapply(list(x, xi, xd), as.vector)
            } else {
              list(x, xi, xd)
            }
            ans <- lapply(inputs, function(input) {
              do.call(fun, c(list(x = input), args))
            })
            # Includes exact type, shape, order and all name attributes.
            stopifnot(identical(ans[[1L]], ans[[2L]]),
                      identical(as.vector(ans[[1L]]), as.vector(ref)),
                      identical(as.vector(ans[[3L]]), as.vector(refd)))
            if (what == "Ranges") {
              stopifnot(identical(dim(ans[[1L]]), dim(ref)),
                        identical(dim(ans[[3L]]), dim(refd)))
            }
          }
        }
      }
    }
  }
  invisible(NULL)
}
