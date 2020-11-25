library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowMads_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 1L, FUN = mad, na.rm = na.rm)
  })
}

colMads_R <- function(x, na.rm = FALSE) {
  suppressWarnings({
    apply(x, MARGIN = 2L, FUN = mad, na.rm = na.rm)
  })
}

rowMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- rowMedians(x, cols = cols, na.rm = na.rm)
  rowMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}

colMads_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE) {
  center <- colMedians(x, rows = rows, na.rm = na.rm)
  colMads(x, rows = rows, cols = cols, center = center, na.rm = na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 3x3 matrix (no ties)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1, 2, 3, 2, 3, 4, 3, 4, 5) + 0.1, nrow = 3, ncol = 3)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)
  tx <- t(x)
  
  cat("rowMads():\n")
  center <- rowMedians(x, na.rm = TRUE)
  r0 <- rowMads_R(x, na.rm = TRUE)
  r1 <- rowMads(x, na.rm = TRUE)
  r1b <- rowMads_center(x, na.rm = TRUE)
  r1c <- rowMads(x, center = center, na.rm = TRUE)
  r2 <- colMads(tx, na.rm = TRUE)
  r2b <- colMads_center(tx, na.rm = TRUE)
  r2c <- colMads(x, center = center, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r1c, r1))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r2b, r2))
  stopifnot(all.equal(r2c, r2))

  cat("colMads():\n")
  center <- colMedians(x, na.rm = TRUE)
  r0 <- colMads_R(x, na.rm = TRUE)
  r1 <- colMads(x, na.rm = TRUE)
  r1b <- colMads_center(x, na.rm = TRUE)
  r1c <- colMads(x, center = center, na.rm = TRUE)
  r2 <- rowMads(tx, na.rm = TRUE)
  r2b <- rowMads_center(tx, na.rm = TRUE)
  r2c <- rowMads(x, center = center, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r1c, r1))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r2b, r2))
  stopifnot(all.equal(r2c, r2))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Ties: a 4x4 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1:4, 2:5, 3:6, 4:7) + 0.1, nrow = 4, ncol = 4)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)
  tx <- t(x)

  cat("rowMads():\n")
  r0 <- rowMads_R(x, na.rm = TRUE)
  r1 <- rowMads(x, na.rm = TRUE)
  r2 <- colMads(tx, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  cat("colMads():\n")
  r0 <- colMads_R(x, na.rm = TRUE)
  r1 <- colMads(x, na.rm = TRUE)
  r2 <- rowMads(tx, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}
tx <- NULL

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# No ties: a 3x3 matrix with an NA value
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1, 2, 3, 2, 3, 4, 3, 4, 5) + 0.1, nrow = 3, ncol = 3)
  x[2, 2] <- NA_real_

  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)
  tx <- t(x)

  cat("rowMads():\n")
  r0 <- rowMads_R(x, na.rm = TRUE)
  r1 <- rowMads(x, na.rm = TRUE)
  r2 <- colMads(tx, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  cat("colMads():\n")
  r0 <- colMads_R(x, na.rm = TRUE)
  r1 <- colMads(x, na.rm = TRUE)
  r2 <- rowMads(tx, na.rm = TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}
tx <- NULL


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (add_na in c(FALSE, TRUE)) {
  cat("add_na = ", add_na, "\n", sep = "")

  x <- matrix(1:100, nrow = 20, ncol = 5)
  if (add_na) {
    x[13:17, c(2, 4)] <- NA_real_
  }

  tx <- t(x)
  
  # Row/column ranges
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm = ", na.rm, "\n", sep = "")

    cat("rowMads():\n")
    center <- rowMedians(x, na.rm = na.rm)
    r0 <- rowMads_R(x, na.rm = na.rm)
    r1 <- rowMads(x, na.rm = na.rm)
    r2 <- rowMads(x, center = center, na.rm = na.rm)
    r3 <- colMads(tx, na.rm = na.rm)
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r2, r1))
    stopifnot(all.equal(r3, r0))
    stopifnot(all.equal(r3, r1))
    stopifnot(all.equal(r3, r2))

    cat("colMads():\n")
    center <- colMedians(x, na.rm = na.rm)
    r0 <- colMads_R(x, na.rm = na.rm)
    r1 <- colMads(x, na.rm = na.rm)
    r2 <- colMads(x, center = center, na.rm = na.rm)
    r3 <- rowMads(tx, na.rm = na.rm)
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r2, r1))
    stopifnot(all.equal(r3, r0))
    stopifnot(all.equal(r3, r1))
    stopifnot(all.equal(r3, r2))
  }

  tx <- NULL
} # for (add_na ...)




# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(NA_real_, nrow = 20, ncol = 5)
tx <- t(x)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")

  r0 <- rowMads_R(x, na.rm = na.rm)
  if (na.rm) r0[is.na(r0)] <- NaN
  r1 <- rowMads(x, na.rm = na.rm)
  r2 <- colMads(tx, na.rm = na.rm)
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1, r2))
}
tx <- NULL

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1, ncol = 1)
tx <- t(x)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")
  r0 <- rowMads_R(x, na.rm = na.rm)
  r1 <- rowMads(x, na.rm = na.rm)
  r2 <- colMads(tx, na.rm = na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 0x0 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(double(0), nrow = 0, ncol = 0)
tx <- t(x)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")
  r0 <- rowMads_R(x, na.rm = na.rm)
  r1 <- rowMads(x, na.rm = na.rm)
  r2 <- colMads(tx, na.rm = na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}
