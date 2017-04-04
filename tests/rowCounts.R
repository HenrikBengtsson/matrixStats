library("matrixStats")

rowCounts_R <- function(x, value = TRUE, na.rm = FALSE, ...) {
  if (is.na(value)) {
    counts <- apply(x, MARGIN = 1L, FUN = function(x)
      sum(is.na(x))
    )
  } else {
    counts <- apply(x, MARGIN = 1L, FUN = function(x)
      sum(x == value, na.rm = na.rm)
    )
  }
  as.integer(counts)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer and numeric
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(runif(20 * 5, min = -3, max = 3), nrow = 20, ncol = 5)
  x[sample.int(length(x), size = 7)] <- 0
  storage.mode(x) <- mode

  for (na.rm in c(FALSE, TRUE)) {
    # Count zeros
    r0 <- rowCounts_R(x, value = 0, na.rm = na.rm)
    r1 <- rowCounts(x, value = 0, na.rm = na.rm)
    r2 <- colCounts(t(x), value = 0, na.rm = na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))

    # Count NAs
    r0 <- rowCounts_R(x, value = NA, na.rm = na.rm)
    r1 <- rowCounts(x, value = NA, na.rm = na.rm)
    r2 <- colCounts(t(x), value = NA, na.rm = na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))

    if (mode == "integer") {
      ux <- unique(as.vector(x))
      r0 <- r1 <- r2 <- integer(nrow(x))
      for (value in ux) {
        r0 <- r0 + rowCounts_R(x, value = value, na.rm = na.rm)
        r1 <- r1 + rowCounts(x, value = value, na.rm = na.rm)
        r2 <- r2 + colCounts(t(x), value = value, na.rm = na.rm)
        stopifnot(identical(r1, r0))
        stopifnot(identical(r2, r0))
      }
      stopifnot(all(r0 == ncol(x)))
    } # if (mode == "integer")
  } # for (na.rm ...)
} # for (mode ...)

# All NAs
na_list <- list(NA_integer_, NA_real_, NaN)
for (na_value in na_list) {
  x <- matrix(na_value, nrow = 20, ncol = 5)
  for (na.rm in c(FALSE, TRUE)) {
    r0 <- rowCounts_R(x, na.rm = na.rm)
    r1 <- rowCounts(x, na.rm = na.rm)
    r2 <- colCounts(t(x), na.rm = na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))

    # Count NAs
    r0 <- rowCounts_R(x, value = NA, na.rm = na.rm)
    r1 <- rowCounts(x, value = NA, na.rm = na.rm)
    r2 <- colCounts(t(x), value = NA, na.rm = na.rm)
    stopifnot(all(r0 == ncol(x)))
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))
  }
} # for (na_value ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: logical
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(FALSE, nrow = 20, ncol = 5)
x[13:17, c(2, 4)] <- TRUE
x[2:4, ] <- TRUE
x[, 1] <- TRUE
x[5, ] <- FALSE
x[, 5] <- FALSE

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  r0 <- rowCounts_R(x, na.rm = na.rm)
  r1 <- rowCounts(x, na.rm = na.rm)
  r2 <- colCounts(t(x), na.rm = na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))

  r_true <- rowCounts(x, value = TRUE, na.rm = na.rm)
  r_false <- rowCounts(x, value = FALSE, na.rm = na.rm)
  stopifnot(r_true + r_false == ncol(x))

  c_true <- colCounts(x, value = TRUE, na.rm = na.rm)
  c_false <- colCounts(x, value = FALSE, na.rm = na.rm)
  stopifnot(c_true + c_false == nrow(x))

  # Count NAs
  r0 <- rowCounts_R(x, value = NA, na.rm = na.rm)
  r1 <- rowCounts(x, value = NA, na.rm = na.rm)
  r2 <- colCounts(t(x), value = NA, na.rm = na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: character (not sure if this should be supported)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(rep(letters, length.out = 20 * 5), nrow = 20, ncol = 5)
x[2:3, 3:4] <- NA_character_

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  for (value in c("g", NA_character_)) {
    r0 <- rowCounts_R(x, value = value, na.rm = na.rm)
    r1 <- rowCounts(x, value = value, na.rm = na.rm)
    r2 <- colCounts(t(x), value = value, na.rm = na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))

    c <- count(x[1, ], value = value, na.rm = na.rm)
    stopifnot(identical(c, r1[1]))

    c <- count(x[2, ], value = value, na.rm = na.rm)
    stopifnot(identical(c, r1[2]))
  }
}

# NA row
x <- matrix(0, nrow = 2, ncol = 2)
x[1, ] <- NA_integer_
r0 <- rowCounts(x, value = 0)
r1 <- rowCounts_R(x, value = 0)
stopifnot(identical(r0, r1))
