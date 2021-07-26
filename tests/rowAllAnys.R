library("matrixStats")

rowAlls_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = NA) {
  if (is.na(value)) {
    res <- apply(is.na(x), MARGIN = 1L, FUN = all, na.rm = na.rm)
  } else {
    y <- x == value
    
    # Preserve dimnames attribute
    dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
    if (!isTRUE(all.equal(dim(y), dim))) {
      dim(y) <- dim
      dimnames <- dimnames(x)
      if (!is.null(dimnames)) dimnames(y) <- dimnames
    }
    
    res <- apply(y, MARGIN = 1L, FUN = all, na.rm = na.rm)
  }
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

rowAnys_R <- function(x, value = TRUE, na.rm = FALSE, ..., useNames = NA) {
  if (is.na(value)) {
    res <- apply(is.na(x), MARGIN = 1L, FUN = any, na.rm = na.rm)
  } else {
    y <- x == value
    
    # Preserve dimnames attribute
    dim <- dim(x) # for 0xN and Mx0 cases; needed in R (< 3.4.0)
    if (!isTRUE(all.equal(dim(y), dim))) {
      dim(y) <- dim
      dimnames <- dimnames(x)
      if (!is.null(dimnames)) dimnames(y) <- dimnames
    }
    
    res <- apply(y, MARGIN = 1L, FUN = any, na.rm = na.rm)
  }
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}

rowAnyMissings_R <- function(x, ..., useNames = NA) {
  res <- apply(x, MARGIN = 1L, FUN = anyMissing)
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
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
x[3, ] <- FALSE
x[4, ] <- TRUE

# To check names attribute
dimnames <- list(letters[1:20], LETTERS[1:5])

for (kk in 1:3) {
  if (kk == 2) {
    x[2, 2] <- NA
  } else if (kk == 3) {
    x[, 2] <- NA
    x[2, ] <- NA
  }

  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Row/column all
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        m0 <- rowAlls_R(x, na.rm = na.rm, useNames = useNames)
        m1 <- rowAlls(x, na.rm = na.rm, useNames = useNames)
        m2 <- colAlls(t(x), na.rm = na.rm, useNames = useNames)
        str(list("all()", m0 = m0, m1 = m1, m2 = m2))
        stopifnot(identical(m1, m0))
        stopifnot(identical(m2, m0))        
      }
    }
  }
  
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Row/column all
    for (na.rm in c(FALSE, TRUE)) {
      # Check names attribute
      for (useNames in c(NA, TRUE, FALSE)) {
        m0 <- rowAnys_R(x, na.rm = na.rm, useNames = useNames)
        m1 <- rowAnys(x, na.rm = na.rm, useNames = useNames)
        m2 <- colAnys(t(x), na.rm = na.rm, useNames = useNames)
        str(list("any()", m0 = m0, m1 = m1, m2 = m2))
        stopifnot(identical(m1, m0))
        stopifnot(identical(m2, m0))
        
        m0 <- rowAnyMissings_R(x, useNames = useNames)
        m1 <- rowAnyMissings(x, useNames = useNames)
        m2 <- colAnyMissings(t(x), useNames = useNames)
        str(list("anyMissing()", m0 = m0, m1 = m1, m2 = m2))
        stopifnot(identical(m1, m0))
        stopifnot(identical(m2, m0))
      }
    }
  }
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(rep(1:28, length.out = 10 * 5), nrow = 10, ncol = 5)
x[2, ] <- 7L
x[3, 1] <- 7L
x[2:3, 3:4] <- NA_integer_

# To check names attribute
dimnames <- list(letters[1:10], LETTERS[1:5])

# Row/column counts
value <- 7L
# Row/column all
for (na.rm in c(FALSE, TRUE)) {
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    ## All
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL 
      r0 <- rowAlls_R(x, value = value, na.rm = na.rm, useNames = useNames)
      r1 <- rowAlls(x, value = value, na.rm = na.rm, useNames = useNames)
      r2 <- colAlls(t(x), value = value, na.rm = na.rm, useNames = useNames)
      stopifnot(identical(r1, r0))
      stopifnot(identical(r2, r1))
    }
    
    for (rr in seq_len(nrow(x))) {
      c <- allValue(x[rr, ], value = value, na.rm = na.rm)
      stopifnot(identical(c, r1[rr]))
      c <- allValue(x[rr, ], value = value, na.rm = na.rm)
      stopifnot(identical(c, r1[rr]))
    }
    
    ## Any
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL
      r0 <- rowAnys_R(x, value = value, na.rm = na.rm, useNames = useNames)
      r1 <- rowAnys(x, value = value, na.rm = na.rm, useNames = useNames)
      r2 <- colAnys(t(x), value = value, na.rm = na.rm, useNames = useNames)
      stopifnot(identical(r1, r0))
      stopifnot(identical(r2, r1))        
    }
    
    for (rr in seq_len(nrow(x))) {
      c <- anyValue(x[rr, ], value = value, na.rm = na.rm)
      stopifnot(identical(c, r1[rr]))
      c <- anyValue(x[rr, ], value = value, na.rm = na.rm)
      stopifnot(identical(c, r1[rr]))
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# rowAlls(x) et al. on numeric 'x' with logical 'value'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 4L, ncol = 5L)
x[2:4, 2] <- (1:3) / 4
x[2, 2:4] <- (1:3) / 4
x[3:4, 3] <- (3:4) / 4
x[3, 3:4] <- (3:4) / 4
x[1:4, 5] <- (1:4) / 5
x[4, 4] <- NA_real_

# To check names attribute
dimnames <- list(letters[1:4], LETTERS[1:5])

for (value in c(TRUE, FALSE)) {
  for (na.rm in c(FALSE, TRUE)) {
    y0 <- suppressWarnings(apply(x, MARGIN = 1L, FUN = function(e) any(as.logical(e) == value, na.rm = na.rm)))
    y <- rowAnys(x, na.rm = na.rm, value = value)
    stopifnot(identical(y, y0))
    # Check names attribute
    dimnames(x) <- dimnames
    y <- rowAnys(x, na.rm = na.rm, value = value, useNames = FALSE)
    stopifnot(all.equal(y, y0))
    y0 <- suppressWarnings(apply(x, MARGIN = 1L, FUN = function(e) any(as.logical(e) == value, na.rm = na.rm)))
    y <- rowAnys(x, na.rm = na.rm, value = value, useNames = TRUE)
    stopifnot(all.equal(y, y0))
    dimnames(x) <- NULL
  
    y0 <- suppressWarnings(apply(x, MARGIN = 2L, FUN = function(e) any(as.logical(e) == value, na.rm = na.rm)))
    y <- colAnys(x, na.rm = na.rm, value = value)
    stopifnot(identical(y, y0))
    # Check names attribute
    dimnames(x) <- dimnames
    y <- colAnys(x, na.rm = na.rm, value = value, useNames = FALSE)
    stopifnot(all.equal(y, y0))
    y0 <- suppressWarnings(apply(x, MARGIN = 2L, FUN = function(e) any(as.logical(e) == value, na.rm = na.rm)))
    y <- colAnys(x, na.rm = na.rm, value = value, useNames = TRUE)
    stopifnot(all.equal(y, y0))
    dimnames(x) <- NULL
  
    y0 <- suppressWarnings(apply(x, MARGIN = 1L, FUN = function(e) all(as.logical(e) == value, na.rm = na.rm)))
    y <- rowAlls(x, na.rm = na.rm, value = value)
    stopifnot(identical(y, y0))
    # Check names attribute
    dimnames(x) <- dimnames
    y <- rowAlls(x, na.rm = na.rm, value = value, useNames = FALSE)
    stopifnot(all.equal(y, y0))  
    y0 <- suppressWarnings(apply(x, MARGIN = 1L, FUN = function(e) all(as.logical(e) == value, na.rm = na.rm)))
    y <- rowAlls(x, na.rm = na.rm, value = value, useNames = TRUE)
    stopifnot(all.equal(y, y0))    
    dimnames(x) <- NULL
  
    y0 <- suppressWarnings(apply(x, MARGIN = 2L, FUN = function(e) all(as.logical(e) == value, na.rm = na.rm)))
    y <- colAlls(x, na.rm = na.rm, value = value)
    stopifnot(identical(y, y0))
    print(y0)
    # Check names attribute
    dimnames(x) <- dimnames
    y <- colAlls(x, na.rm = na.rm, value = value, useNames = FALSE)
    stopifnot(all.equal(y, y0))     
    y0 <- suppressWarnings(apply(x, MARGIN = 2L, FUN = function(e) all(as.logical(e) == value, na.rm = na.rm)))
    y <- colAlls(x, na.rm = na.rm, value = value, useNames = TRUE)
    stopifnot(all.equal(y, y0))     
    dimnames(x) <- NULL
  } ## for (na.rm ...)
} ## for(value ...)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: character (not sure if this should be supported)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
all_R <- function(x, value = TRUE, ...) {
  if (is.na(value)) {
    all(is.na(x), ...)
  } else {
    all(x == value, ...)
  }
}

any_R <- function(x, value = TRUE, ...) {
  if (is.na(value)) {
    any(is.na(x), ...)
  } else {
    any(x == value, ...)
  }
}

x <- matrix(rep(letters, length.out = 20 * 5), nrow = 20, ncol = 5)
x[2, ] <- "g"
x[2:4, 3:4] <- NA_character_

# To check names attribute
dimnames <- list(letters[1:20], LETTERS[1:5])

# Row/column counts
for (value in c("g", NA_character_)) {
  for (na.rm in c(FALSE, TRUE)) {
    # Check names attribute
    for (useNames in c(NA, TRUE, FALSE)) {
      ## All
      # Test with and without dimnames on x
      for (setDimnames in c(TRUE, FALSE)) {
        if (setDimnames) dimnames(x) <- dimnames
        else dimnames(x) <- NULL 
        r0 <- rowAlls_R(x, value = value, na.rm = na.rm, useNames = useNames)
        r1 <- rowAlls(x, value = value, na.rm = na.rm, useNames = useNames)
        r2 <- colAlls(t(x), value = value, na.rm = na.rm, useNames = useNames)
        stopifnot(identical(r1, r0))
        stopifnot(identical(r2, r1))
      }
      
      for (rr in seq_len(nrow(x))) {
        c0 <- all_R(x[rr, ], value, na.rm = na.rm)
        c <- allValue(x[rr, ], value = value, na.rm = na.rm)
        stopifnot(identical(c, r1[rr]))
        stopifnot(identical(c, c0))
      }
      
      ## Any
      # Test with and without dimnames on x
      for (setDimnames in c(TRUE, FALSE)) {
        if (setDimnames) dimnames(x) <- dimnames
        else dimnames(x) <- NULL
        r0 <- rowAnys_R(x, value = value, na.rm = na.rm, useNames = useNames)
        r1 <- rowAnys(x, value = value, na.rm = na.rm, useNames = useNames)
        r2 <- colAnys(t(x), value = value, na.rm = na.rm, useNames = useNames)
        stopifnot(identical(r1, r0))
        stopifnot(identical(r2, r1))        
      }
      
      for (rr in seq_len(nrow(x))) {
        c0 <- any_R(x[rr, ], value, na.rm = na.rm)
        c <- anyValue(x[rr, ], value = value, na.rm = na.rm)
        stopifnot(identical(c, c0))
        stopifnot(identical(c, r1[rr]))
      }
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# NA 0 test
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow = 3, ncol = 3)
x[1, ] <- c(NA_real_, NA_real_, 0)
x[3, ] <- c(1, 0, 1)

dimnames <- list(letters[1:3], LETTERS[1:3])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL    
  # Check names attribute
  for (useNames in c(NA, TRUE, FALSE)) {
    r0 <- rowAnys_R(x, value = 0, useNames = useNames)
    r1 <- rowAnys(x, value = 0, useNames = useNames)
    stopifnot(identical(r0, r1))
  }
}
