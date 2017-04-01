library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

meanOver_R <- function(x, na.rm = FALSE, idxs = NULL) {
  if (is.null(idxs)) {
    mean(x, na.rm = na.rm)
  } else {
    mean(x[idxs], na.rm = na.rm)
  }
} # meanOver_R()


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
    naValues <- c(NA_real_, NaN)
    t <- sample(naValues, size = nna, replace = TRUE)
    x[sample(length(x), size = nna)] <- t
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2, 0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  na.rm <- sample(c(TRUE, FALSE), size = 1L)

  # Sum over all
  y0 <- meanOver_R(x, na.rm = na.rm)
  y1 <- meanOver(x, na.rm = na.rm)
  stopifnot(all.equal(y1, y0))

  # Sum over subset
  nidxs <- sample(n, size = 1L)
  idxs <- sample(n, size = nidxs)
  y0 <- meanOver_R(x, na.rm = na.rm, idxs = idxs)
  y1 <- meanOver(x, na.rm = na.rm, idxs = idxs)
  stopifnot(all.equal(y1, y0))
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (na.rm in c(FALSE, TRUE)) {
  # Averaging over zero elements (integers)
  x <- integer(0)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- 1:10
  idxs <- integer(0)
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- meanOver(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over NA_integer_:s
  x <- rep(NA_integer_, times = 10L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- rep(NA_integer_, times = 10L)
  idxs <- 1:5
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- meanOver(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))


  # Averaging over zero elements (doubles)
  x <- double(0)
  s1 <- mean(x)
  s2 <- meanOver(x)
  stopifnot(identical(s1, s2))

  x <- as.double(1:10)
  idxs <- integer(0)
  s1 <- mean(x[idxs])
  s2 <- meanOver(x, idxs = idxs)
  stopifnot(identical(s1, s2))

  # Averaging over NA_real_:s
  x <- rep(NA_real_, times = 10L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- rep(NA_real_, times = 10L)
  idxs <- 1:5
  s1 <- mean(x[idxs], na.rm = na.rm)
  s2 <- meanOver(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over -Inf:s
  x <- rep(-Inf, times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over +Inf:s
  x <- rep(+Inf, times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of -Inf:s and +Inf:s
  x <- rep(c(-Inf, +Inf), times = 3L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of -Inf:s and +Inf:s and numerics
  x <- rep(c(-Inf, +Inf, 3.14), times = 2L)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of NaN, NA, +Inf, and numerics
  x <- c(NaN, NA, +Inf, 3.14)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Averaging over mix of NaN, NA, +Inf, and numerics
  x <- c(NA, NaN, +Inf, 3.14)
  s1 <- mean(x, na.rm = na.rm)
  s2 <- meanOver(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Argument 'idxs'
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:10
idxsList <- list(
  integer = 1:5,
  double = as.double(1:5),
  logical = (x <= 5)
)

for (idxs in idxsList) {
  cat("idxs:\n")
  str(idxs)
  s1 <- mean(x[idxs], na.rm = TRUE)
  s2 <- meanOver(x, idxs = idxs, na.rm = TRUE)
  stopifnot(identical(s1, s2))
}
