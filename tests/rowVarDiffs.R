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

      x <- matrix(1:100 + 0.1, nrow = 20, ncol = 5)
      if (add_na) {
        x[13:17, c(2, 4)] <- NA_real_
      }
      cat("mode: ", mode, "\n", sep = "")
      storage.mode(x) <- mode
      str(x)
      
      # To check names attribute
      dimnames <- list(letters[1:20], LETTERS[1:5])

      # Row/column ranges
      for (na.rm in c(FALSE, TRUE)) {
        cat("na.rm = ", na.rm, "\n", sep = "")
        r1 <- row_fcn(x, na.rm = na.rm)
        r2 <- col_fcn(t(x), na.rm = na.rm)
        stopifnot(all.equal(r1, r2))
        # Check names attribute
        dimnames(x) <- dimnames
        r1b <- row_fcn(x, na.rm = na.rm, useNames = FALSE)
        r2b <- col_fcn(t(x), na.rm = na.rm, useNames = FALSE)
        stopifnot(all.equal(r1, r1b))
        stopifnot(all.equal(r2, r2b))
        r1 <- row_fcn(x, na.rm = na.rm, useNames = TRUE)
        r2 <- col_fcn(t(x), na.rm = na.rm, useNames = TRUE)
        stopifnot(all.equal(r1, r2))
        dimnames(x) <- NULL
      }
    } # for (add_na ...)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # All NAs
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (mode in c("integer", "double")) {
    x <- matrix(NA_real_, nrow = 20, ncol = 5)
    cat("mode: ", mode, "\n", sep = "")
    storage.mode(x) <- mode
    str(x)

    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm = ", na.rm, "\n", sep = "")
      r1 <- row_fcn(x, na.rm = na.rm)
      r2 <- col_fcn(t(x), na.rm = na.rm)
      stopifnot(all.equal(r1, r2))
      # Check names attribute
      dimnames(x) <- dimnames
      r1b <- row_fcn(x, na.rm = na.rm, useNames = FALSE)
      r2b <- col_fcn(t(x), na.rm = na.rm, useNames = FALSE)
      stopifnot(all.equal(r1, r1b))
      stopifnot(all.equal(r2, r2b))
      r1 <- row_fcn(x, na.rm = na.rm, useNames = TRUE)
      r2 <- col_fcn(t(x), na.rm = na.rm, useNames = TRUE)
      stopifnot(all.equal(r1, r2))
      dimnames(x) <- NULL
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # A 1x1 matrix
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- matrix(0, nrow = 1, ncol = 1)
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm = ", na.rm, "\n", sep = "")
    r1 <- row_fcn(x, na.rm = na.rm)
    r2 <- col_fcn(t(x), na.rm = na.rm)
    stopifnot(all.equal(r1, r2))
    # Check names attribute
    dimnames(x) <- list("a", "A")
    r1b <- row_fcn(x, na.rm = na.rm, useNames = FALSE)
    r2b <- col_fcn(t(x), na.rm = na.rm, useNames = FALSE)
    stopifnot(all.equal(r1, r1b))
    stopifnot(all.equal(r2, r2b))
    r1 <- row_fcn(x, na.rm = na.rm, useNames = TRUE)
    r2 <- col_fcn(t(x), na.rm = na.rm, useNames = TRUE)
    stopifnot(all.equal(r1, r2))
    dimnames(x) <- NULL
  }

  cat(sprintf("%s()...DONE\n", fcn))
} # for (fcn ...)
