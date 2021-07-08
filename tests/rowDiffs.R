library("matrixStats")

rowDiffs_R <- function(x, lag = 1L, differences = 1L, ...) {
  ncol2 <- ncol(x) - lag * differences
  if (ncol2 <= 0) {
    y <- matrix(x[integer(0L)], nrow = nrow(x), ncol = 0L)
    # Preserve names attribute
    if (!is.null(rownames(x))) rownames(y) <- rownames(x)
    return(y)
  }
  suppressWarnings({
    y <- apply(x, MARGIN = 1L, FUN = diff, lag = lag, differences = differences)
  })
  y <- t(y)
  
  # Preserve dimnames attribute
  dim <- c(nrow(x), ncol2)
  if (!isTRUE(all.equal(dim(y), dim))) {
    dim(y) <- dim
  
    colnames <- colnames(x)
    if (!is.null(colnames)) {
      len <- length(colnames)
      colnames <- colnames[(len - ncol2 + 1):len]
    }
    dimnames(y) <- list(rownames(x), colnames)
  }
  
  y
}


set.seed(0x42)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(sample(20 * 8) + 0.1, nrow = 20, ncol = 8)
    if (add_na) {
      x[13:17, c(2, 4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)
    
    dimnames <- list(letters[1:20], LETTERS[1:8])

    for (lag in 1:4) {
      for (differences in 1:3) {
        cat(sprintf("mode: %s, lag = %d, differences = %d\n",
                    mode, lag, differences))
        # Row/column ranges
        r0 <- rowDiffs_R(x, lag = lag, differences = differences)
        r1 <- rowDiffs(x, lag = lag, differences = differences)
        r2 <- t(colDiffs(t(x), lag = lag, differences = differences))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1, r2))
        # Check dimnames attribute
        dimnames(x) <- dimnames
        r1 <- rowDiffs(x, lag = lag, differences = differences, useNames = FALSE)
        r2 <- t(colDiffs(t(x), lag = lag, differences = differences, useNames = FALSE))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        r0 <- rowDiffs_R(x, lag = lag, differences = differences)
        r1 <- rowDiffs(x, lag = lag, differences = differences, useNames = TRUE)
        r2 <- t(colDiffs(t(x), lag = lag, differences = differences, useNames = TRUE))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1, r2))        
        dimnames(x) <- NULL
      }
    }
  } # for (add_na ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(NA_real_, nrow = 20, ncol = 5)
  storage.mode(x) <- mode
  str(x)

  r0 <- rowDiffs_R(x)
  r1 <- rowDiffs(x)
  r2 <- t(colDiffs(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  # Check dimnames attribute
  dimnames(x) <- list(letters[1:20], LETTERS[1:5])
  r1 <- rowDiffs(x, useNames = FALSE)
  r2 <- t(colDiffs(t(x), useNames = FALSE))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  r0 <- rowDiffs_R(x)
  r1 <- rowDiffs(x, useNames = TRUE)
  r2 <- t(colDiffs(t(x), useNames = TRUE))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  dimnames(x) <- NULL
} # for (mode ...)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
r0 <- rowDiffs_R(x)
r1 <- rowDiffs(x)
r2 <- t(colDiffs(t(x)))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))
# Check dimnames attribute
dimnames(x) <- list("a", "A")
r1 <- rowDiffs(x, useNames = FALSE)
r2 <- t(colDiffs(t(x), useNames = FALSE))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))
r0 <- rowDiffs_R(x)
r1 <- rowDiffs(x, useNames = TRUE)
r2 <- t(colDiffs(t(x), useNames = TRUE))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))
