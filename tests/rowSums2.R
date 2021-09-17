library("matrixStats")

rowSums_R <- function(x, na.rm = FALSE, ...) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::rowSums() doesn't.  What should rowSums2() do?
  ## apply(x, MARGIN = 1L, FUN = sum, na.rm = na.rm)
  rowSums(x, na.rm = na.rm)
}

colSums2_R <- function(x, na.rm = FALSE, ...) {
  ## FIXME: sum() may overflow for integers, whereas
  ## base::colSums() doesn't.  What should colSums2() do?
  ## apply(x, MARGIN = 2L, FUN = sum, na.rm = na.rm)
  colSums(x, na.rm = na.rm)
}

for (mode in c("integer", "logical", "double")) {
  x <- matrix(-4:4, nrow = 3, ncol = 3)
  storage.mode(x) <- mode
  if (mode == "double") x <- x + 0.1
 
  y0 <- rowSums_R(x, na.rm = FALSE)
  y1 <- rowSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))

  y0 <- colSums2_R(x, na.rm = FALSE)
  y1 <- colSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: Single-element matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: Single-element matrix:\n")
for (mode in c("integer", "logical", "double")) {
  x <- matrix(1, nrow = 1, ncol = 1)
  storage.mode(x) <- mode

  y0 <- rowSums_R(x, na.rm = FALSE)
  y1 <- rowSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))

  y0 <- colSums2_R(x, na.rm = FALSE)
  y1 <- colSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: Empty matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: Empty matrix:\n")
for (mode in c("integer", "logical", "double")) {
  x <- matrix(integer(0), nrow = 0, ncol = 0)
  storage.mode(x) <- mode

  y0 <- rowSums_R(x, na.rm = FALSE)
  y1 <- rowSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))

  y0 <- colSums2_R(x, na.rm = FALSE)
  y1 <- colSums2(x, na.rm = FALSE)
  stopifnot(all.equal(y1, y0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: All NAs:\n")
for (mode in c("integer", "logical", "double")) {
  x <- matrix(NA_integer_, nrow = 3, ncol = 3)
  storage.mode(x) <- mode

  y0 <- rowSums_R(x, na.rm = TRUE)
  y1 <- rowSums2(x, na.rm = TRUE)
  stopifnot(all.equal(y1, y0))

  y0 <- colSums2_R(x, na.rm = TRUE)
  y1 <- colSums2(x, na.rm = TRUE)
  stopifnot(all.equal(y1, y0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: All NaNs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: All NaNs:\n")
x <- matrix(NA_real_, nrow = 3, ncol = 3)

y0 <- rowSums_R(x, na.rm = TRUE)
y1 <- rowSums2(x, na.rm = TRUE)
stopifnot(all.equal(y1, y0))

y0 <- colSums2_R(x, na.rm = TRUE)
y1 <- colSums2(x, na.rm = TRUE)
stopifnot(all.equal(y1, y0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: All Infs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: All Infs:\n")
x <- matrix(Inf, nrow = 3, ncol = 3)

y0 <- rowSums_R(x, na.rm = FALSE)
y1 <- rowSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))

y0 <- colSums2_R(x, na.rm = FALSE)
y1 <- colSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: All -Infs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: All -Infs:\n")
x <- matrix(-Inf, nrow = 3, ncol = 3)

y0 <- rowSums_R(x, na.rm = FALSE)
y1 <- rowSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))

y0 <- colSums2_R(x, na.rm = FALSE)
y1 <- colSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: Infs and -Infs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: Infs and -Infs:\n")
x <- matrix(c(-Inf, +Inf), nrow = 4, ncol = 4)

y0 <- rowSums_R(x, na.rm = FALSE)
y1 <- rowSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))

y0 <- colSums2_R(x, na.rm = FALSE)
y1 <- colSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: NaNs and NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: Infs and -Infs:\n")
x <- matrix(c(NaN, NA_real_), nrow = 4, ncol = 4)

y0 <- rowSums(x, na.rm = FALSE)
str(y0)
stopifnot(all(is.na(y0)), length(unique(y0)) >= 1L)
y1 <- rowSums2(x, na.rm = FALSE)
str(y0)
stopifnot(all(is.na(y1)), length(unique(y1)) >= 1L)
stopifnot(all.equal(y1, y0))

y0 <- colSums(x, na.rm = FALSE)
stopifnot(all(is.na(y0)), length(unique(y0)) == 1L)
y1 <- colSums2(x, na.rm = FALSE)
stopifnot(all(is.na(y1)), length(unique(y1)) == 1L)
## NOTE, due to compiler optimization, it is not guaranteed that NA is
## returned here (as one would expect). NaN might very well be returned,
## when both NA and NaN are involved.  This is an accepted feature in R,
## which is documented in help("is.nan").  See also
## https://stat.ethz.ch/pipermail/r-devel/2017-April/074009.html.
## Thus, we cannot guarantee that y1 is identical to y0.


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special case: Integer overflow with ties
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Special case: Integer overflow with ties:\n")
x <- matrix(.Machine$integer.max, nrow = 4, ncol = 4)

y0 <- rowSums_R(x, na.rm = FALSE)
y1 <- rowSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))

y0 <- colSums2_R(x, na.rm = FALSE)
y1 <- colSums2(x, na.rm = FALSE)
stopifnot(all.equal(y1, y0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

cat("Consistency checks:\n")
n_sims <- if (Sys.getenv("_R_CHECK_USE_VALGRIND_") != "") 4L else 20L
for (kk in seq_len(n_sims)) {
  cat("Random test #", kk, "\n", sep = "")

  # Simulate data in a matrix of any shape
  dim <- sample(50:200, size = 2)
  n <- prod(dim)
  x <- rnorm(n, sd = 100)
  dim(x) <- dim

  # Add NAs?
  if ((kk %% 4) %in% c(3, 0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size = 1)
    na_values <- c(NA_real_, NaN)
    t <- sample(na_values, size = nna, replace = TRUE)
    x[sample(length(x), size = nna)] <- t
  }

  # Mode?
  modes <- "double"
  if ((kk %% 4) %in% c(2, 0)) {
    modes <- c("integer", "logical")
  }

  for (mode in modes) {
    if (mode != "double") {
      cat(sprintf("Coercing from %s to %s\n", storage.mode(x), mode))
      storage.mode(x) <- mode
    }

    na.rm <- sample(c(TRUE, FALSE), size = 1)
  
    # rowSums2():
    y0 <- rowSums_R(x, na.rm = na.rm)
    y1 <- rowSums2(x, na.rm = na.rm)
    stopifnot(all.equal(y1, y0))
    y2 <- colSums2(t(x), na.rm = na.rm)
    stopifnot(all.equal(y2, y0))
  
    # colSums2():
    y0 <- colSums2_R(x, na.rm = na.rm)
    y1 <- colSums2(x, na.rm = na.rm)
    stopifnot(all.equal(y1, y0))
    y2 <- rowSums2(t(x), na.rm = na.rm)
    stopifnot(all.equal(y2, y0))
  }
} # for (kk ...)
