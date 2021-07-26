library("matrixStats")

rowDiffs_R <- function(x, lag = 1L, differences = 1L, ..., useNames = NA) {
  ncol2 <- ncol(x) - lag * differences
  if (ncol2 <= 0) {
    y <- matrix(x[integer(0L)], nrow = nrow(x), ncol = 0L)
    # Preserve names attribute
    if (isTRUE(useNames) && !is.null(rownames(x))) rownames(y) <- rownames(x)
    return(y)
  }
  suppressWarnings({
    y <- apply(x, MARGIN = 1L, FUN = diff, lag = lag, differences = differences)
  })
  y <- t(y)
  
  # Preserve dimnames attribute
  dim(y) <- c(nrow(x), ncol2)
  if (isTRUE(useNames) && !is.null(dimnames(x))) {
    colnames <- colnames(x)
    if (!is.null(colnames)) {
      len <- length(colnames)
      colnames <- colnames[(len - ncol2 + 1):len]
    }
    dimnames(y) <- list(rownames(x), colnames)      
  }
  else dimnames(y) <- NULL
  
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

    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      # Check dimnames attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        for (lag in 1:4) {
          for (differences in 1:3) {
            cat(sprintf("mode: %s, lag = %d, differences = %d\n",
                        mode, lag, differences))
            # Row/column ranges
            r0 <- rowDiffs_R(x, lag = lag, differences = differences, useNames = useNames)
            r1 <- rowDiffs(x, lag = lag, differences = differences, useNames = useNames)
            r2 <- t(colDiffs(t(x), lag = lag, differences = differences, useNames = useNames))
            stopifnot(all.equal(r1, r0))
            stopifnot(all.equal(r2, r0))
            stopifnot(all.equal(r1, r2))
          }
        }
      } # for (useNames ...)
    } # for (setDimnames ...)
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
  
  dimnames <- list(letters[1:20], LETTERS[1:5])
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    # Check dimnames attribute
    for (useNames in c(NA, TRUE, FALSE)) {
      r0 <- rowDiffs_R(x, useNames = useNames)
      r1 <- rowDiffs(x, useNames = useNames)
      r2 <- t(colDiffs(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      stopifnot(all.equal(r1, r2))
    } # for (useNames ...)
  } # for (setDimnames ...)
} # for (mode ...)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
dimnames <- list("a", "A")
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check dimnames attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    r0 <- rowDiffs_R(x, useNames = useNames)
    r1 <- rowDiffs(x, useNames = useNames)
    r2 <- t(colDiffs(t(x), useNames = useNames))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r1, r2))
  } # for (useNames ...)
} # for (setDimnames ...)
