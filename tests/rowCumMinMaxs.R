library("matrixStats")

rowCummins_R <- function(x, ..., useNames = NA) {
  suppressWarnings({
    y <- t(apply(x, MARGIN = 1L, FUN = cummin))
  })
 
  # Preserve dimnames attribute?
  dim(y) <- dim(x)
  dimnames(y) <- if (isTRUE(useNames)) dimnames(x) else NULL
  y
}

rowCummaxs_R <- function(x, ..., useNames = NA) {
  mode <- storage.mode(x)
  # Change mode because a bug is detected on cummax for integer in R-3.2.0
  storage.mode(x) <- "numeric"
  suppressWarnings({
    y <- t(apply(x, MARGIN = 1L, FUN = cummax))
  })
  
  # Preserve dimnames attribute?
  dim(y) <- dim(x)
  dimnames(y) <- if (isTRUE(useNames)) dimnames(x) else NULL
  
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  for (add_na in c(FALSE, TRUE)) {
    cat("add_na = ", add_na, "\n", sep = "")

    x <- matrix(1:50, nrow = 10L, ncol = 5L)
    diag(x) <- 0
    if (add_na) {
      x[3:7, c(2, 4)] <- NA_real_
    }
    cat("mode: ", mode, "\n", sep = "")
    storage.mode(x) <- mode
    str(x)
    
    # To check dimnames attribute
    dimnames <- list(letters[1:10], LETTERS[1:5])
    
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL    
      # Check names attribute
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        # Row/column ranges
        r0 <- rowCummins_R(x, useNames = useNames)
        r1 <- rowCummins(x, useNames = useNames)
        r2 <- t(colCummins(t(x), useNames = useNames))
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))

        r0 <- rowCummaxs_R(x, useNames = useNames)
        r1 <- rowCummaxs(x, useNames = useNames)
        r2 <- t(colCummaxs(t(x), useNames = useNames))
        stopifnot(all.equal(r1, r2))
        stopifnot(all.equal(r1, r0))
        stopifnot(all.equal(r2, r0))
      } # for (useNames ...)
    } # for (setDimnames ...)
  } # for (add_na ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  x <- matrix(NA_real_, nrow = 10L, ncol = 5L)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      r0 <- rowCummins_R(x, useNames = useNames)
      r1 <- rowCummins(x, useNames = useNames)
      r2 <- t(colCummins(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      
      r0 <- rowCummaxs_R(x, useNames = useNames)
      r1 <- rowCummaxs(x, useNames = useNames)
      r2 <- t(colCummaxs(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
    } # for (useNames ...)
  } # for (setDimnames ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  x <- matrix(0, nrow = 1L, ncol = 1L)
  cat("mode: ", mode, "\n", sep = "")
  storage.mode(x) <- mode
  str(x)

  # To check dimnames attribute
  dimnames <- list("a", "A")
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      r0 <- rowCummins_R(x, useNames = useNames)
      r1 <- rowCummins(x, useNames = useNames)
      r2 <- t(colCummins(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      
      r0 <- rowCummaxs_R(x, useNames = useNames)
      r1 <- rowCummaxs(x, useNames = useNames)
      r2 <- t(colCummaxs(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
    } # for (useNames ...)
  } # for (setDimnames ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Corner cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  value <- 0
  storage.mode(value) <- mode
  value0 <- if (mode == "logical") 0L else value

  # A 0x0 matrix
  x <- matrix(value, nrow = 0L, ncol = 0L)
  str(x)
  r0 <- matrix(value0, nrow = nrow(x), ncol = ncol(x))
  r1 <- rowCummins(x)
  r2 <- t(colCummins(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  # A 0xK matrix
  x <- matrix(value, nrow = 0L, ncol = 5L)
  str(x)
  colnames <- LETTERS[1:5]
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) colnames(x) <- colnames
    else dimnames(x) <- NULL
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      r0 <- rowCummins_R(x, useNames = useNames)
      r1 <- rowCummins(x, useNames = useNames)
      r2 <- t(colCummins(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      r0 <- rowCummaxs_R(x, useNames = useNames)
      r1 <- rowCummaxs(x, useNames = useNames)
      r2 <- t(colCummaxs(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
    } # for (useNames ...)
  } # for (setDimnames ...)

  # A Nx0 matrix
  x <- matrix(value, nrow = 5L, ncol = 0L)
  str(x)
  rownames <- LETTERS[1:5]
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) rownames(x) <- rownames
    else dimnames(x) <- NULL
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      r0 <- rowCummins_R(x, useNames = useNames)
      r1 <- rowCummins(x, useNames = useNames)
      r2 <- t(colCummins(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
      
      r0 <- rowCummaxs_R(x, useNames = useNames)
      r1 <- rowCummaxs(x, useNames = useNames)
      r2 <- t(colCummaxs(t(x), useNames = useNames))
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))
      stopifnot(all.equal(r2, r0))
    } # for (useNames ...)
  } # for (setDimnames ...)
} # for (mode ...)
