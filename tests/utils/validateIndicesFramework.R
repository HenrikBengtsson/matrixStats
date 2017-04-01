library("matrixStats")

validateIndicesTestVector <- function(x, idxs, ftest, fsure,
                                      debug = FALSE, ...) {
  if (debug) cat(sprintf("idxs=%s, type=%s\n",
                         toString(idxs), toString(typeof(idxs))))

  suppressWarnings({
    actual <- tryCatch(ftest(x, idxs = idxs, ...), error = function(c) "error")
    expect <- tryCatch({
      if (!is.null(idxs)) x <- x[idxs]
      fsure(x, ...)
    }, error = function(c) "error")
  })
  if (debug) cat(sprintf("actual=%s\nexpect=%s\n",
                         toString(actual), toString(expect)))

  stopifnot(all.equal(actual, expect))
}

validateIndicesTestVector_w <- function(x, w, idxs, ftest, fsure,
                                        debug = FALSE, ...) {
  if (debug) cat(sprintf("idxs=%s, type=%s\n",
                         toString(idxs), toString(typeof(idxs))))

  suppressWarnings({
    actual <- tryCatch(ftest(x, w, idxs = idxs, ...),
                       error = function(c) "error")
    expect <- tryCatch({
      if (!is.null(idxs)) {
        x <- x[idxs]
        w <- w[idxs]
      }
      fsure(x, w, ...)
    }, error = function(c) "error")
  })
  if (debug) cat(sprintf("actual=%s\nexpect=%s\n",
                         toString(actual), toString(expect)))

  stopifnot(all.equal(actual, expect))
}

validateIndicesTestMatrix <- function(x, rows, cols, ftest, fcoltest, fsure,
                                      debug = FALSE, ...) {
  if (debug) {
    cat(sprintf("rows=%s; type=%s\n", toString(rows), toString(typeof(rows))))
    cat(sprintf("cols=%s; type=%s\n", toString(cols), toString(typeof(cols))))
  }

  suppressWarnings({
    if (missing(fcoltest)) {
      actual <- tryCatch(ftest(x, rows = rows, cols = cols, ...),
                         error = function(c) "error")
    } else {
      actual <- tryCatch(fcoltest(t(x), rows = cols, cols = rows, ...),
                         error = function(c) "error")
    }

    expect <- tryCatch({
      if (!is.null(rows) && !is.null(cols)) {
        x <- x[rows, cols, drop = FALSE]
      } else if (!is.null(rows)) {
        x <- x[rows, , drop = FALSE]
      } else if (!is.null(cols)) {
        x <- x[, cols, drop = FALSE]
      }
      fsure(x, ...)
    }, error = function(c) "error")
  })
  if (debug) cat(sprintf("actual=%s\nexpect=%s\n",
                         toString(actual), toString(expect)))

  stopifnot(all.equal(actual, expect))
}

validateIndicesTestMatrix_w <- function(x, w, rows, cols, ftest,
                                        fcoltest, fsure, debug = FALSE, ...) {
  if (debug) {
    cat(sprintf("rows=%s; type=%s\n", toString(rows), toString(typeof(rows))))
    cat(sprintf("cols=%s; type=%s\n", toString(cols), toString(typeof(cols))))
  }

  suppressWarnings({
    if (missing(fcoltest)) {
      actual <- tryCatch(ftest(x, w, rows = rows, cols = cols, ...),
                         error = function(c) "error")
    } else {
      actual <- tryCatch(fcoltest(t(x), w, rows = cols, cols = rows, ...),
                         error = function(c) "error")
    }

    expect <- tryCatch({
      if (!is.null(rows) && !is.null(cols)) {
        x <- x[rows, cols, drop = FALSE]
        w <- w[cols]
      } else if (!is.null(rows)) {
        x <- x[rows, , drop = FALSE]
      } else if (!is.null(cols)) {
        x <- x[, cols, drop = FALSE]
        w <- w[cols]
      }
      fsure(x, w, ...)
    }, error = function(c) "error")
  })
  if (debug) cat(sprintf("actual=%s\nexpect=%s\n",
                         toString(actual), toString(expect)))

  stopifnot(all.equal(actual, expect))
}

index_cases <- list()
# negative indices with duplicates
index_cases[[length(index_cases) + 1]] <- c(-4, 0, 0, -3, -1, -3, -1)

# positive indices
index_cases[[length(index_cases) + 1]] <- c(3, 5, 1)

# positive indices with duplicates
index_cases[[length(index_cases) + 1]] <- c(3, 0, 0, 5, 1, 5, 5)

# positive indices out of ranges
index_cases[[length(index_cases) + 1]] <- 4:9

# negative out of ranges: just ignore
index_cases[[length(index_cases) + 1]] <- c(-5, 0, -3, -1, -9)

# negative indices exclude all
index_cases[[length(index_cases) + 1]] <- -1:-6

# idxs is single number
index_cases[[length(index_cases) + 1]] <- 4
index_cases[[length(index_cases) + 1]] <- -4
index_cases[[length(index_cases) + 1]] <- 0

# idxs is empty
index_cases[[length(index_cases) + 1]] <- integer()

# NA in idxs
index_cases[[length(index_cases) + 1]] <- c(NA_real_, 0, 2)

# Inf in idxs
index_cases[[length(index_cases) + 1]] <- c(-Inf, -1)
index_cases[[length(index_cases) + 1]] <- c(NA_real_, 0, 2, Inf)

# single logical
index_cases[[length(index_cases) + 1]] <- NA
index_cases[[length(index_cases) + 1]] <- TRUE
index_cases[[length(index_cases) + 1]] <- FALSE

# full logical idxs
index_cases[[length(index_cases) + 1]] <- c(FALSE, TRUE, FALSE, TRUE,
                                           TRUE, FALSE)

# too many logical idxs
index_cases[[length(index_cases) + 1]] <- c(FALSE, TRUE, FALSE, TRUE,
                                        TRUE, TRUE, FALSE, TRUE)

# insufficient idxs
index_cases[[length(index_cases) + 1]] <- c(FALSE, TRUE)
index_cases[[length(index_cases) + 1]] <- c(FALSE, TRUE, NA)
index_cases[[length(index_cases) + 1]] <- c(FALSE, TRUE, NA, FALSE)

# NULL
index_cases[length(index_cases) + 1] <- list(NULL)


index_error_cases <- list()
# mixed positive and negative indices
index_error_cases[[length(index_cases) + 1]] <- 1:-1

# mixed positive, negative and zero indices
index_error_cases[[length(index_cases) + 1]] <- c(-4, 0, 0, 1)

# NA in idxs
index_error_cases[[length(index_cases) + 1]] <- c(NA_real_, -2)
