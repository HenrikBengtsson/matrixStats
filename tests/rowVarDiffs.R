library("matrixStats")

fcns <- list(
  rowVarDiffs = list(rowVarDiffs, colVarDiffs),
  rowSdDiffs  = list(rowSdDiffs, colSdDiffs),
  rowMadDiffs = list(rowMadDiffs, colMadDiffs),
  rowIQRDiffs = list(rowIQRDiffs, colIQRDiffs)
)

for (fcn in names(fcns)) {
  cat(sprintf("%s()...\n", fcn))
  row_fcn <- fcns[[fcn]][[1L]]
  col_fcn <- fcns[[fcn]][[2L]]

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # With and without some NAs
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (mode in c("integer", "double")) {
    for (add_na in c(FALSE, TRUE)) {
      cat("add_na = ", add_na, "\n", sep = "")

      x <- matrix(1:50 + 0.1, nrow = 10L, ncol = 5L)
      if (add_na) {
        x[3:7, c(2, 4)] <- NA_real_
      }
      cat("mode: ", mode, "\n", sep = "")
      storage.mode(x) <- mode
      str(x)
      
      # To check names attribute
      dimnames <- list(letters[1:10], LETTERS[1:5])

      # Test with and without dimnames on x
      for (setDimnames in c(TRUE, FALSE)) {
        if (setDimnames) dimnames(x) <- dimnames
        else dimnames(x) <- NULL
        # Row/column ranges
        for (na.rm in c(FALSE, TRUE)) {
          # Check names attribute
          for (useNames in c(TRUE, FALSE)) {
            cat("na.rm = ", na.rm, "\n", sep = "")
            r1 <- row_fcn(x, na.rm = na.rm, useNames = useNames)
            r2 <- col_fcn(t(x), na.rm = na.rm, useNames = useNames)
            stopifnot(all.equal(r1, r2))
          }
        }
      }
    } # for (add_na ...)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # All NAs
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (mode in c("integer", "double")) {
    x <- matrix(NA_real_, nrow = 10L, ncol = 5L)
    cat("mode: ", mode, "\n", sep = "")
    storage.mode(x) <- mode
    str(x)

    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      # Row/column ranges
      for (na.rm in c(FALSE, TRUE)) {
        # Check names attribute
        for (useNames in c(TRUE, FALSE)) {
          cat("na.rm = ", na.rm, "\n", sep = "")
          r1 <- row_fcn(x, na.rm = na.rm, useNames = useNames)
          r2 <- col_fcn(t(x), na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(r1, r2))
        }
      }
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # A 1x1 matrix
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- matrix(0, nrow = 1L, ncol = 1L)
  dimnames <- list("a", "A")
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    # Row/column ranges
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(TRUE, FALSE)) {
        cat("na.rm = ", na.rm, "\n", sep = "")
        r1 <- row_fcn(x, na.rm = na.rm, useNames = useNames)
        r2 <- col_fcn(t(x), na.rm = na.rm, useNames = useNames)
        stopifnot(all.equal(r1, r2))
      }
    }
  }

  cat(sprintf("%s()...DONE\n", fcn))
} # for (fcn ...)
