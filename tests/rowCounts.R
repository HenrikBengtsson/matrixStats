library("matrixStats")

rowCounts_R <- function(x, value = TRUE, na.rm = FALSE, ...) {
  if (is.null(value)) value <- sort(unique(as.vector(x)))
  counts <- matrix(0L, nrow = nrow(x), ncol = length(value))
  colnames(counts) <- value
  
  for (i in seq_along(value)) {
    if (is.na(value[i])) {
      counts[, i] <- apply(x, MARGIN = 1L, FUN = function(x) 
        sum(is.na(x))
      )
    } else {
      counts[, i] <- apply(x, MARGIN = 1L, FUN = function(x)
        sum(x == value[i], na.rm = na.rm)
      )
    }
  }
  if (length(value) == 1) as.vector(counts) else counts
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

    ct <- count(x[1, ], value = value, na.rm = na.rm)
    stopifnot(identical(ct, r1[1]))

    ct <- count(x[2, ], value = value, na.rm = na.rm)
    stopifnot(identical(ct, r1[2]))
  }
}

# NA row
x <- matrix(0, nrow = 2, ncol = 2)
x[1, ] <- NA_integer_
r0 <- rowCounts(x, value = 0)
r1 <- rowCounts_R(x, value = 0)
stopifnot(identical(r0, r1))

# Repeat all tests for length(value) > 1 ----------------------------------

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer and numeric
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(runif(20 * 5, min = -3, max = 3), nrow = 20, ncol = 5)
  x[sample.int(length(x), size = 7)] <- 0
  storage.mode(x) <- mode
  
  for (na.rm in c(FALSE, TRUE)) {
    if (mode == "integer") {
      value <- c(unique(as.vector(x)), NA_integer_)
        r0 <- rowCounts_R(x, value = value, na.rm = na.rm)
        r1 <- rowCounts(x, value = value, na.rm = na.rm)
        r2 <- colCounts(t(x), value = value, na.rm = na.rm)
        stopifnot(identical(r1, r0))
        stopifnot(identical(r2, r0))
      stopifnot(all(apply(r0, MARGIN = 1L, sum) == ncol(x)))
    } # if (mode == "integer")
  } # for (na.rm ...)
} # for (mode ...)

# All NAs
na_list <- list(NA_integer_, NA_real_, NaN)
for (i in seq_along(na_list)) {
  na_value <- rep(na_list[[i]], 2)
  x <- matrix(na_list[[i]], nrow = 20, ncol = 5)
  for (na.rm in c(FALSE, TRUE)) {
    r0 <- rowCounts_R(x, value = na_value, na.rm = na.rm)
    r1 <- rowCounts(x, value = na_value, na.rm = na.rm)
    r2 <- colCounts(t(x), value = na_value, na.rm = na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r0))
  }
}

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
  r0 <- rowCounts_R(x, value = c(TRUE, FALSE), na.rm = na.rm)
  r1 <- rowCounts(x, value = c(TRUE, FALSE), na.rm = na.rm)
  r2 <- colCounts(t(x), value = c(TRUE, FALSE), na.rm = na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))
  
  stopifnot(r1[, 'TRUE'] + r1[, 'FALSE'] == ncol(x))
  
  c_true_false <- colCounts(x, value = c(TRUE, FALSE), na.rm = na.rm)
  stopifnot(c_true_false[, 'TRUE'] + c_true_false[, 'FALSE'] == nrow(x))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: character (not sure if this should be supported)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(rep(letters, length.out = 20 * 5), nrow = 20, ncol = 5)
x[2:3, 3:4] <- NA_character_

# Row/column counts
for (na.rm in c(FALSE, TRUE)) {
  value <- c("g", NA, "h")
  r0 <- rowCounts_R(x, value = value, na.rm = na.rm)
  r1 <- rowCounts(x, value = value, na.rm = na.rm)
  r2 <- colCounts(t(x), value = value, na.rm = na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r0))
  
  ct <- count(x[1, ], value = value, na.rm = na.rm)
  stopifnot(identical(ct, r1[1, ]))
  
  ct <- count(x[2, ], value = value, na.rm = na.rm)
  stopifnot(identical(ct, r1[2, ]))
}

# NA row
x <- matrix(0L, nrow = 2, ncol = 2)
x[1, ] <- NA_integer_
r0 <- rowCounts(x, value = NULL)
r1 <- rowCounts_R(x, value = NULL)
stopifnot(identical(r0, r1))
