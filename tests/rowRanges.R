library("matrixStats")

rowMins_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN = 1L, FUN = min, ...)
  })
}

rowMaxs_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN = 1L, FUN = max, ...)
  })
}

rowRanges_R <- function(x, ...) {
  suppressWarnings({
    ans <- t(apply(x, MARGIN = 1L, FUN = range, ...))
  })
  dim(ans) <- c(dim(x)[1], 2L)
  ans
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(1:100 + 0.1, nrow = 20, ncol = 5)
    if (add_na) {
      x[13:17, c(2, 4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)

    # Row/column extremes
    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm = ", na.rm, "\n", sep = "")

      # Ranges
      cat("range:\n")
      r0 <- rowRanges_R(x, na.rm = na.rm)
      r1 <- rowRanges(x, na.rm = na.rm)
      r2 <- colRanges(t(x), na.rm = na.rm)
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))

      # Min
      cat("min:\n")
      m0 <- rowMins_R(x, na.rm = na.rm)
      m1 <- rowMins(x, na.rm = na.rm)
      m2 <- colMins(t(x), na.rm = na.rm)
      stopifnot(all.equal(m1, m2))
      stopifnot(all.equal(m1, m0))

      # Max
      cat("max:\n")
      m0 <- rowMaxs_R(x, na.rm = na.rm)
      m1 <- rowMaxs(x, na.rm = na.rm)
      m2 <- colMaxs(t(x), na.rm = na.rm)
      stopifnot(all.equal(m1, m2))
      stopifnot(all.equal(m1, m0))
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

  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm = ", na.rm, "\n", sep = "")
    r0 <- rowRanges_R(x, na.rm = na.rm)
    r1 <- rowRanges(x, na.rm = na.rm)
    r2 <- colRanges(t(x), na.rm = na.rm)
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
  }
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Nx0 matrix
x <- matrix(double(0L), nrow = 5L, ncol = 0L)
r0 <- rowRanges_R(x)
#r1 <- rowRanges(x)
#r_truth <- matrix(c(Inf, -Inf), nrow = nrow(x), ncol = 2L, byrow = TRUE)
#stopifnot(all.equal(r1, r_truth))

# 0xN matrix
x <- t(x)
#r1 <- colRanges(x)
#stopifnot(all.equal(r1, r_truth))

# Nx1 matrix
x <- matrix(1:5, nrow = 5L, ncol = 1L)
r1 <- rowRanges(x)
r_truth <- matrix(1:5, nrow = nrow(x), ncol = 2L, byrow = FALSE)
stopifnot(all.equal(r1, r_truth))

# 1xN matrix
x <- t(x)
r1 <- colRanges(x)
stopifnot(all.equal(r1, r_truth))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Additional tests with NA_integer_, NA_real, NaN, -Inf, +Inf
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:12, nrow = 4, ncol = 3)

na_list <- list(
  "integer"       = matrix(1:12, nrow = 4, ncol = 3),
  "integer w/ NA" = matrix(NA_integer_, nrow = 4, ncol = 3),
  "real"          = matrix(as.double(1:12), nrow = 4, ncol = 3),
  "real w/ NA"    = matrix(NA_real_, nrow = 4, ncol = 3)
)

na <- na_list[["real"]]
na[2, 2] <- NA
na_list[["real + NA cell"]] <- na

na <- na_list[["real"]]
na[2, ] <- NA
na_list[["real + NA row"]] <- na

na <- na_list[["real"]]
na[2, ] <- NaN
na_list[["real + NaN row"]] <- na

na <- na_list[["real"]]
na[2, 2] <- Inf
na_list[["real + Inf cell"]] <- na

na <- na_list[["real"]]
na[2, ] <- Inf
na_list[["real + Inf row"]] <- na

na <- na_list[["real"]]
na[2, 2] <- NaN
na_list[["real + NaN cell"]] <- na

na <- na_list[["real w/ NA"]]
na[2, 2] <- NaN
na_list[["real w/ NA + NaN cell"]] <- na

na <- na_list[["real w/ NA"]]
na[2, ] <- NaN
na_list[["real w/ NA + NaN row"]] <- na


for (na.rm in c(FALSE, TRUE)) {
  for (name in names(na_list)) {
    na <- na_list[[name]]
    cat(sprintf("%s (%s) w/ na.rm = %s:\n", name, typeof(na), na.rm))
    print(na)

    cat("  min:\n")
    y0 <- rowMins_R(na, na.rm = na.rm)
    str(y0)
    y1 <- rowMins(na, na.rm = na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colMins(t(na), na.rm = na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))

    cat("  max:\n")
    y0 <- rowMaxs_R(na, na.rm = na.rm)
    str(y0)
    y1 <- rowMaxs(na, na.rm = na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colMaxs(t(na), na.rm = na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))

    cat("  range:\n")
    y0 <- rowRanges_R(na, na.rm = na.rm)
    str(y0)
    y1 <- rowRanges(na, na.rm = na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colRanges(t(na), na.rm = na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))
  } # for (name ...)
} # for (na.rm ...)
