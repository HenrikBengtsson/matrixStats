library("matrixStats")

## Create isFALSE() if running on an old version of R
if (!exists("isFALSE", mode="function")) {
  isFALSE <- function(x) is.logical(x) && length(x) == 1L && !is.na(x) && !x
}

rowQuantiles_R <- function(x, probs = c(0, 0.25, 0.50, 0.75, 1), na.rm = FALSE, drop = TRUE, type = 7L, ..., useNames = NA) {
  q <- apply(x, MARGIN = 1L, FUN = function(x, probs, na.rm) {
    if (!na.rm && any(is.na(x))) {
      na_value <- NA_real_
      if (type != 7L) storage.mode(na_value) <- storage.mode(x)
      rep(na_value, times = length(probs))
    } else {
      as.vector(quantile(x, probs = probs, na.rm = na.rm, type = type, names = FALSE, ...))
    }
  }, probs = probs, na.rm = na.rm)

  if (!is.null(dim(q))) q <- t(q)
  else dim(q) <- c(nrow(x), length(probs))

  colnames(q) <- matrixStats:::quantile_probs_names(probs)
  rownames(q) <- rownames(x)
  if (isFALSE(useNames)) dimnames(q) <- NULL

  if (drop) q <- drop(q)
  q
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with multiple quantiles
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(1:40 + 0.1, nrow = 8, ncol = 5)
  storage.mode(x) <- mode
  dimnames <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
  str(x)

  probs <- c(0, 0.5, 1)
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      q0 <- rowQuantiles_R(x, probs = probs, useNames = useNames)
      print(q0)
      q1 <- rowQuantiles(x, probs = probs, useNames = useNames)
      print(q1)
      ## FIXME: Workaround for R (< 3.0.0)
      if (getRversion() < "3.0.0" && mode == "logical") storage.mode(q1) <- storage.mode(q0)
      stopifnot(all.equal(q1, q0))
      q2 <- colQuantiles(t(x), probs = probs, useNames = useNames)
      ## FIXME: Workaround for R (< 3.0.0)
      if (getRversion() < "3.0.0" && mode == "logical") storage.mode(q2) <- storage.mode(q0)
      stopifnot(all.equal(q2, q0))      
    }
  }
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with a single quantile
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("logical", "integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")
  x <- matrix(1:40, nrow = 8, ncol = 5)
  storage.mode(x) <- mode
  dimnames <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
  str(x)

  probs <- c(0.5)
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL    
    # Check names attribute
    for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
      q0 <- rowQuantiles_R(x, probs = probs, useNames = useNames)
      print(q0)
      q1 <- rowQuantiles(x, probs = probs, useNames = useNames)
      ## FIXME: Workaround for R (< 3.0.0)
      if (getRversion() < "3.0.0" && mode == "logical") storage.mode(q1) <- storage.mode(q0)
      print(q1)
      stopifnot(all.equal(q1, q0))
      q2 <- colQuantiles(t(x), probs = probs, useNames = useNames)
      ## FIXME: Workaround for R (< 3.0.0)
      if (getRversion() < "3.0.0" && mode == "logical") storage.mode(q2) <- storage.mode(q0)
      stopifnot(all.equal(q2, q0))      
    }
  }
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

probs <- seq(from = 0, to = 1, by = 0.25)

cat("Consistency checks:\n")
n_sims <- if (Sys.getenv("_R_CHECK_USE_VALGRIND_") != "") 6L else 24L
for (kk in seq_len(n_sims)) {
  cat("Random test #", kk, "\n", sep = "")

  # Simulate data in a matrix of any shape
  dim <- sample(20:60, size = 2L)
  n <- prod(dim)
  x <- rnorm(n, sd = 100)
  dim(x) <- dim
  dimnames <- lapply(dim(x), FUN = function(n) rep(letters, length.out = n))

  # Add NAs?
  has_na <- ((kk %% 2) == 0L)
  if (has_na) {
    cat("Adding NAs\n")
    nna <- sample(n, size = 1)
    na_values <- c(NA_real_, NaN)
    t <- sample(na_values, size = nna, replace = TRUE)
    x[sample(length(x), size = nna)] <- t
  }

  # Logical, integer, or double?
  mode <- "numeric"
  if ((kk %% 6) %in% 1:2) {
    cat("Coercing to logical\n")
    mode <- "logical"
  } else if ((kk %% 6) %in% 3:4) {
    cat("Coercing to integers\n")
    mode <- "integer"
  }
  storage.mode(x) <- mode
  
  str(x)

  # rowQuantiles():
  for (type in 1:9) {
    cat(sprintf("type=%d, has_na=%s:\n", type, has_na))
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL    
      # Check names attribute
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        q0 <- rowQuantiles_R(x, probs = probs, na.rm = has_na, type = type, useNames = useNames)
        q1 <- rowQuantiles(x, probs = probs, na.rm = has_na, type = type, useNames = useNames)
        ## FIXME: Workaround for R (< 3.0.0)
        if (getRversion() < "3.0.0" && mode == "logical" && !has_na && type == 7L) storage.mode(q1) <- storage.mode(q0)
        stopifnot(all.equal(q1, q0))
        q2 <- colQuantiles(t(x), probs = probs, na.rm = has_na, type = type, useNames = useNames)
        ## FIXME: Workaround for R (< 3.0.0)
        if (getRversion() < "3.0.0" && mode == "logical" && !has_na && type == 7L) storage.mode(q2) <- storage.mode(q0)
        stopifnot(all.equal(q2, q0))
      }
    }
  }
} # for (kk ...)



for (mode in c("logical", "integer", "double")) {
  naValue <- NA_real_
  storage.mode(naValue) <- mode

  someValue <- 1
  storage.mode(someValue) <- mode

  for (type in 1:9) {
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # All NA
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    x <- matrix(naValue, nrow = 3L, ncol = 4L)
    dimnames <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL    
      # Check names attribute
      for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
        qr0 <- rowQuantiles_R(x, type = type, useNames = useNames)
        
        qr <- rowQuantiles(x, type = type, useNames = useNames)
        stopifnot(identical(qr, qr0))
        
        # x <- matrix(naValue, nrow = 4L, ncol = 3L)
        qc <- colQuantiles(t(x), type = type, useNames = useNames)
        
        stopifnot(identical(qc, qr))
      }
    }


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Empty matrices
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    probs <- c(0, 0.25, 0.75, 1)
    x <- matrix(naValue, nrow = 0L, ncol = 0L)
    dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    q <- rowQuantiles(x, probs = probs, type = type, useNames = TRUE)
    stopifnot(identical(dim(q), c(nrow(x), length(probs))))
    q <- colQuantiles(x, probs = probs, type = type, useNames = TRUE)
    stopifnot(identical(dim(q), c(ncol(x), length(probs))))
    
    x <- matrix(naValue, nrow = 2L, ncol = 0L)
    dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    q <- rowQuantiles(x, probs = probs, type = type, useNames = TRUE)
    stopifnot(identical(dim(q), c(nrow(x), length(probs))))
    
    x <- matrix(naValue, nrow = 0L, ncol = 2L)
    dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    q <- colQuantiles(x, probs = probs, type = type, useNames = TRUE)
    stopifnot(identical(dim(q), c(ncol(x), length(probs))))


    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    # Single column matrices
    # - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    probs <- c(0, 0.25, 0.75, 1)
    x <- matrix(someValue, nrow = 2L, ncol = 1L)
    dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    qr <- rowQuantiles(x, probs = probs, type = type, useNames = TRUE)
    print(qr)
    
    x <- matrix(someValue, nrow = 1L, ncol = 2L)
    dimnames(x) <- lapply(dim(x), FUN = function(n) letters[seq_len(n)])
    qc <- colQuantiles(x, probs = probs, type = type, useNames = TRUE)
    print(qc)
    
    stopifnot(identical(qc, qr))
  }
}
