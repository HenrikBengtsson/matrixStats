library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
}

colVars_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm)
  rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm)
  colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}

rowVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE) {
  x <- sweep(x, MARGIN = 1, STATS = as.array(center), FUN = "-")
  rowVars(x, rows = rows, cols = cols, center = 0, na.rm = na.rm)
}

colVars_center_naive <- function(x, rows = NULL, cols = NULL, center = NULL, na.rm = FALSE) {
  x <- sweep(x, MARGIN = 2, STATS = as.array(center), FUN = "-")
  colVars(x, rows = rows, cols = cols, center = 0, na.rm = na.rm)
}

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

    # Row/column variance
    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm = ", na.rm, "\n", sep = "")
      center <- rowMeans(x, na.rm = na.rm)

      r0 <- rowVars_R(x, na.rm = na.rm)
      r1 <- rowVars(x, na.rm = na.rm)
      r1b <- rowVars_center(x, na.rm = na.rm)
      r1c <- rowVars(x, center = center, na.rm = na.rm)

      tx <- t(x)
      r2 <- colVars(tx, na.rm = na.rm)
      r2b <- colVars_center(tx, na.rm = na.rm)
      r2c <- colVars(tx, center = center, na.rm = na.rm)
      tx <- NULL
      
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r1b, r1))
      stopifnot(all.equal(r1c, r1))
      stopifnot(all.equal(r2, r0))
      stopifnot(all.equal(r2b, r2))
      stopifnot(all.equal(r2c, r2))

      r3 <- colVars(x, center = x[1, ], na.rm = na.rm)
      r3b <- colVars_center_naive(x, center = x[1, ], na.rm = na.rm)
      r3c <- rowVars(t(x), center = x[1, ], na.rm = na.rm)
      r3d <- rowVars_center_naive(t(x), center = x[1, ], na.rm = na.rm)
      stopifnot(all.equal(r3b, r3))
      stopifnot(all.equal(r3c, r3))
      stopifnot(all.equal(r3d, r3))
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
    r0 <- rowVars_R(x, na.rm = na.rm)
    r1 <- rowVars(x, na.rm = na.rm)
    r1b <- rowVars_center(x, na.rm = na.rm)
    r2 <- colVars(t(x), na.rm = na.rm)
    r2b <- colVars_center(t(x), na.rm = na.rm)
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r1b, r1))
    stopifnot(all.equal(r2b, r2))
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")
  r0 <- rowVars_R(x, na.rm = na.rm)
  r1 <- rowVars(x, na.rm = na.rm)
  r1b <- rowVars_center(x, na.rm = na.rm)
  r2 <- colVars(t(x), na.rm = na.rm)
  r2b <- colVars_center(t(x), na.rm = na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r2b, r2))
}
