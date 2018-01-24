library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

mean2_R <- function(x, na.rm = FALSE, idxs = NULL) {
  if (is.null(idxs)) {
    mean(x, na.rm = na.rm)
  } else {
    mean(x[idxs], na.rm = na.rm)
  }
} # mean2_R()


cat("Consistency checks:\n")
for (kk in 1:20) {
  cat("Random test #", kk, "\n", sep = "")

  # Simulate data in a matrix of any shape
  n <- sample(1e3, size = 1L)
  x <- rnorm(n, sd = 100)

  # Add NAs?
  if ((kk %% 4) %in% c(3, 0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size = 1L)
    na_values <- c(NA_real_, NaN)
    t <- sample(na_values, size = nna, replace = TRUE)
    x[sample(length(x), size = nna)] <- t
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2, 0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  na.rm <- sample(c(TRUE, FALSE), size = 1L)

  # Sum over all
  y0 <- mean2_R(x, na.rm = na.rm)
  y1 <- mean2(x, na.rm = na.rm)
  stopifnot(all.equal(y1, y0))

  # Sum over subset
  nidxs <- sample(n, size = 1L)
  idxs <- sample(n, size = nidxs)
  y0 <- mean2_R(x, na.rm = na.rm, idxs = idxs)
  y1 <- mean2(x, na.rm = na.rm, idxs = idxs)
  stopifnot(all.equal(y1, y0))

  if (storage.mode(x) == "integer") {
    storage.mode(x) <- "logical"
    
    y0 <- mean2_R(x, na.rm = na.rm)
    y1 <- mean2(x, na.rm = na.rm)
    stopifnot(all.equal(y1, y0))
    
    y0 <- mean2_R(x, na.rm = na.rm, idxs = idxs)
    y1 <- mean2(x, na.rm = na.rm, idxs = idxs)
    stopifnot(all.equal(y1, y0))
  }
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (na.rm in c(FALSE, TRUE)) {
  # Averaging over zero elements (integers)
  x <- integer(0)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- 1:10
  idxs <- integer(0)
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- mean2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over NA_integer_:s
  x <- rep(NA_integer_, times = 10L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- rep(NA_integer_, times = 10L)
  idxs <- 1:5
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- mean2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))


  # Averaging over zero elements (doubles)
  x <- double(0)
  s1 <- mean(x)
  s2 <- mean2(x)
  stopifnot(identical(s1, s2))

  x <- as.double(1:10)
  idxs <- integer(0)
  s1 <- mean(x[idxs])
  s2 <- mean2(x, idxs = idxs)
  stopifnot(identical(s1, s2))

  # Averaging over NA_real_:s
  x <- rep(NA_real_, times = 10L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- rep(NA_real_, times = 10L)
  idxs <- 1:5
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- mean2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over -Inf:s
  x <- rep(-Inf, times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over +Inf:s
  x <- rep(+Inf, times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of -Inf:s and +Inf:s
  x <- rep(c(-Inf, +Inf), times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of -Inf:s and +Inf:s and numerics
  x <- rep(c(-Inf, +Inf, 3.14), times = 2L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of NaN, NA, +Inf, and numerics
  x <- c(NaN, NA, +Inf, 3.14)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  if (na.rm) {
    stopifnot(identical(s2, s1))
  } else {
    stopifnot(is.na(s1), is.na(s2))
    ## NOTE, due to compiler optimization, it is not guaranteed that NA is
    ## returned here (as one would expect). NaN might very well be returned,
    ## when both NA and NaN are involved.  This is an accepted feature in R,
    ## which is documented in help("is.nan").  See also
    ## https://stat.ethz.ch/pipermail/r-devel/2017-April/074009.html.
    ## Thus, we cannot guarantee that s1 is identical to s0.
  }

  # Averaging over mix of NaN, NA_real_, +Inf, and numerics
  x <- c(NA_real_, NaN, +Inf, 3.14)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- mean2(x, na.rm = na.rm)
  if (na.rm) {
    stopifnot(identical(s2, s1))
  } else {
    stopifnot(is.na(s1), is.na(s2))
    ## NOTE, due to compiler optimization, it is not guaranteed that NA is
    ## returned here (as one would expect). NaN might very well be returned,
    ## when both NA and NaN are involved.  This is an accepted feature in R,
    ## which is documented in help("is.nan").  See also
    ## https://stat.ethz.ch/pipermail/r-devel/2017-April/074009.html.
    ## Thus, we cannot guarantee that s1 is identical to s0.
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Argument 'idxs'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:10
idxs_list <- list(
  integer = 1:5,
  double = as.double(1:5),
  logical = (x <= 5)
)

for (idxs in idxs_list) {
  cat("idxs:\n")
  str(idxs)
  s1 <- mean(x[idxs], na.rm = TRUE)
  s2 <- mean2(x, idxs = idxs, na.rm = TRUE)
  stopifnot(identical(s1, s2))
}
