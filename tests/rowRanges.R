library("matrixStats")

rowMins_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = min, ...)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
} # rowMins_R()

rowMaxs_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = max, ...)
  })
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
} # rowMaxs_R()

rowRanges_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    ans <- t(apply(x, MARGIN = 1L, FUN = range, ...))
  })
  
  # Preserve rownames attribute
  dim <- c(dim(x)[1], 2L)
  if (!isTRUE(all.equal(dim(ans), dim))) {
    dim(ans) <- dim
    rownames <- rownames(x)
    if (!is.null(dimnames)) rownames(ans) <- rownames
  }
  if (is.na(useNames) || !useNames) dimnames(ans) <- NULL
  ans
} # rowRanges_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(1:50 + 0.1, nrow = 10L, ncol = 5L)
    if (add_na) {
      x[3:7, c(2, 4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)
    
    # To check names attribute
    dimnames <- list(letters[1:10], LETTERS[1:5])
    
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      # Row/column extremes
      for (na.rm in c(FALSE, TRUE)) {
        # Check names attribute
        for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
          cat("na.rm = ", na.rm, "\n", sep = "")
          
          # Ranges
          cat("range:\n")
          r0 <- rowRanges_R(x, na.rm = na.rm, useNames = useNames)
          r1 <- rowRanges(x, na.rm = na.rm, useNames = useNames)
          r2 <- colRanges(t(x), na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(r1, r2))
          stopifnot(all.equal(r1, r0))
          
          # Min
          cat("min:\n")
          m0 <- rowMins_R(x, na.rm = na.rm, useNames = useNames)
          m1 <- rowMins(x, na.rm = na.rm, useNames = useNames)
          m2 <- colMins(t(x), na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(m1, m2))
          stopifnot(all.equal(m1, m0))
          
          # Max
          cat("max:\n")
          m0 <- rowMaxs_R(x, na.rm = na.rm, useNames = useNames)
          m1 <- rowMaxs(x, na.rm = na.rm, useNames = useNames)
          m2 <- colMaxs(t(x), na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(m1, m2))
          stopifnot(all.equal(m1, m0))
        }
      }
    }
  } # for (add_na ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(NA_real_, nrow = 10L, ncol = 5L)
  storage.mode(x) <- mode
  str(x)
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        cat("na.rm = ", na.rm, "\n", sep = "")
        r0 <- rowRanges_R(x, na.rm = na.rm, useNames = useNames)
        r1 <- rowRanges(x, na.rm = na.rm, useNames = useNames)
        r2 <- colRanges(t(x), na.rm = na.rm, useNames = useNames)
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
      }
    }
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
# To check names attribute
dimnames <- list(letters[1:5], "A")
r1 <- rowRanges(x)
r_truth <- matrix(1:5, nrow = nrow(x), ncol = 2L, byrow = FALSE)
stopifnot(all.equal(r1, r_truth))
# Check names attribute
dimnames(x) <- dimnames
r0 <- rowRanges_R(x, useNames = TRUE)
r1 <- rowRanges(x, useNames = TRUE)
stopifnot(all.equal(r1, r0))
dimnames(x) <- NULL

# 1xN matrix
x <- t(x)
r1 <- colRanges(x)
stopifnot(all.equal(r1, r_truth))
# Check names attribute
dimnames(x) <- list("a", LETTERS[1:5])
r1 <- colRanges(x, useNames = TRUE)
stopifnot(identical(rownames(r1), colnames(x)))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Additional tests with NA_integer_, NA_real, NaN, -Inf, +Inf
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:12, nrow = 4L, ncol = 3L)

na_list <- list(
  "integer"       = matrix(1:12, nrow = 4L, ncol = 3L),
  "integer w/ NA" = matrix(NA_integer_, nrow = 4L, ncol = 3L),
  "real"          = matrix(as.double(1:12), nrow = 4L, ncol = 3L),
  "real w/ NA"    = matrix(NA_real_, nrow = 4L, ncol = 3L)
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

# To check names attribute
dimnames <- list(letters[1:4], LETTERS[1:3])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  for (na.rm in c(FALSE, TRUE)) {
    for (name in names(na_list)) {
      # Check names attribute
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        na <- na_list[[name]]
        cat(sprintf("%s (%s) w/ na.rm = %s:\n", name, typeof(na), na.rm))
        print(na)
        
        cat("  min:\n")
        y0 <- rowMins_R(na, na.rm = na.rm, useNames = useNames)
        str(y0)
        y1 <- rowMins(na, na.rm = na.rm, useNames = useNames)
        str(y1)
        stopifnot(all.equal(y1, y0))
        y1c <- colMins(t(na), na.rm = na.rm, useNames = useNames)
        str(y1c)
        stopifnot(all.equal(y1c, y1))
        
        cat("  max:\n")
        y0 <- rowMaxs_R(na, na.rm = na.rm, useNames = useNames)
        str(y0)
        y1 <- rowMaxs(na, na.rm = na.rm, useNames = useNames)
        str(y1)
        stopifnot(all.equal(y1, y0))
        y1c <- colMaxs(t(na), na.rm = na.rm, useNames = useNames)
        str(y1c)
        stopifnot(all.equal(y1c, y1))
        
        cat("  range:\n")
        y0 <- rowRanges_R(na, na.rm = na.rm, useNames = useNames)
        str(y0)
        y1 <- rowRanges(na, na.rm = na.rm, useNames = useNames)
        str(y1)
        stopifnot(all.equal(y1, y0))
        y1c <- colRanges(t(na), na.rm = na.rm, useNames = useNames)
        str(y1c)
        stopifnot(all.equal(y1c, y1))
      }
    } # for (name ...)
  } # for (na.rm ...)
}
