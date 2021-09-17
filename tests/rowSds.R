library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowSds_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 1L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  
  # Keep naming support consistency same as rowSds()
  if (is.null(center) || ncol(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(sigma) <- NULL
  }
  else if (isFALSE(useNames)) names(sigma) <- NULL
  sigma
}

colSds_R <- function(x, na.rm = FALSE, center = NULL, ..., useNames = NA) {
  suppressWarnings({
    sigma <- apply(x, MARGIN = 2L, FUN = sd, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(sigma)))
  
  # Keep naming support consistency same as colSds()
  if (is.null(center) || nrow(x) <= 1L) {
    if (is.na(useNames) || isFALSE(useNames)) names(sigma) <- NULL
  }
  if (isFALSE(useNames)) names(sigma) <- NULL
  sigma
}


rowSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  sigma <- rowSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(sigma)))
  sigma
}

colSds_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = NA) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  sigma <- colSds(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(sigma)))
  sigma
}


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
        for (useNames in c(NA, TRUE, FALSE)) {
          r0 <- rowSds_R(x, na.rm = na.rm, useNames = useNames)
          r1 <- rowSds(x, na.rm = na.rm, useNames = useNames)
          r1b <- rowSds_center(x, na.rm = na.rm, useNames = useNames)
          r2 <- colSds(t(x), na.rm = na.rm, useNames = useNames)
          r2b <- colSds_center(t(x), na.rm = na.rm, useNames = useNames)
          stopifnot(all.equal(r1, r2))
          stopifnot(all.equal(r1, r0))
          stopifnot(all.equal(r2, r0))
          stopifnot(all.equal(r1b, r2b))
          stopifnot(
            !any(is.infinite(r1)),
            !any(is.infinite(r2)),
            !any(is.infinite(r1b)),
            !any(is.infinite(r2b))
          )
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
      for (useNames in c(NA, TRUE, FALSE)) {
        r0 <- rowSds_R(x, na.rm = na.rm, useNames = useNames)
        r1 <- rowSds(x, na.rm = na.rm, useNames = useNames)
        r1b <- rowSds_center(x, na.rm = na.rm, useNames = useNames)
        r2 <- colSds(t(x), na.rm = na.rm, useNames = useNames)
        r2b <- colSds_center(t(x), na.rm = na.rm, useNames = useNames)
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1b, r2b))
        stopifnot(
          !any(is.infinite(r1)),
          !any(is.infinite(r2)),
          !any(is.infinite(r1b)),
          !any(is.infinite(r2b))
        )
      }
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 1L, ncol = 1L)
dimnames <- list("a", "A")
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm = ", na.rm, "\n", sep = "")
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    # Row/column ranges
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        r0 <- rowSds_R(x, na.rm = na.rm, useNames = useNames)
        r1 <- rowSds(x, na.rm = na.rm, useNames = useNames)
        r1b <- rowSds_center(x, na.rm = na.rm, useNames = useNames)
        r2 <- colSds(t(x), na.rm = na.rm, useNames = useNames)
        r2b <- colSds_center(t(x), na.rm = na.rm, useNames = useNames)
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
        stopifnot(all.equal(r1b, r2b))
        stopifnot(
          !any(is.infinite(r1)),
          !any(is.infinite(r2)),
          !any(is.infinite(r1b)),
          !any(is.infinite(r2b))
        )
      }
    }
  }
}
