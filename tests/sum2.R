library("matrixStats")
options(warn = 1)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

sum2_R <- function(x, na.rm = FALSE, idxs = NULL) {
  if (is.null(idxs)) {
    sum(x, na.rm = na.rm)
  } else {
    sum(x[idxs], na.rm = na.rm)
  }
} # sum2_R()


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
  y0 <- sum2_R(x, na.rm = na.rm)
  y1 <- sum2(x, na.rm = na.rm)
  stopifnot(all.equal(y1, y0))

  # Sum over subset
  nidxs <- sample(n, size = 1L)
  idxs <- sample(n, size = nidxs)
  y0 <- sum2_R(x, na.rm = na.rm, idxs = idxs)
  y1 <- sum2(x, na.rm = na.rm, idxs = idxs)
  stopifnot(all.equal(y1, y0))

  if (storage.mode(x) == "integer") {
    storage.mode(x) <- "logical"
    
    y0 <- sum2_R(x, na.rm = na.rm)
    y1 <- sum2(x, na.rm = na.rm)
    stopifnot(all.equal(y1, y0))
    
    y0 <- sum2_R(x, na.rm = na.rm, idxs = idxs)
    y1 <- sum2(x, na.rm = na.rm, idxs = idxs)
    stopifnot(all.equal(y1, y0))
  }
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (n in 0:2) {
  for (na.rm in c(FALSE, TRUE)) {
    x <- rep(NA_real_, times = n)
    y0 <- sum(x, na.rm = na.rm)
    y <- sum2(x, na.rm = na.rm)
    stopifnot(all.equal(y, y0))

    x <- rep(NA_integer_, times = n)
    y0 <- sum(x, na.rm = na.rm)
    y <- sum2(x, na.rm = na.rm)
    stopifnot(all.equal(y, y0))
    
    x <- rep(NA, times = n)
    y0 <- sum(x, na.rm = na.rm)
    y <- sum2(x, na.rm = na.rm)
    stopifnot(all.equal(y, y0))
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (na.rm in c(FALSE, TRUE)) {
  # Summing over zero elements (integers)
  x <- integer(0)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- 1:10
  idxs <- integer(0)
  s1 <- sum(x[idxs], na.rm = na.rm)
  s2 <- sum2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  # Summing over NA_integer_:s
  x <- rep(NA_integer_, times = 10L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))

  x <- rep(NA_integer_, times = 10L)
  idxs <- 1:5
  s1 <- sum(x[idxs], na.rm = na.rm)
  s2 <- sum2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(identical(s1, s2))


  # Summing over zero elements (doubles)
  x <- double(0)
  s1 <- sum(x)
  s2 <- sum2(x)
  stopifnot(
    identical(s1, 0),
    identical(s1, s2)
  )

  x <- as.double(1:10)
  idxs <- integer(0)
  s1 <- sum(x[idxs])
  s2 <- sum2(x, idxs = idxs)
  stopifnot(
    identical(s1, 0),
    identical(s1, s2)
  )

  # Summing over NA_real_:s
  x <- rep(NA_real_, times = 10L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(
    !na.rm || s1 == 0,
    identical(s1, s2)
  )

  x <- rep(NA_real_, times = 10L)
  idxs <- 1:5
  s1 <- sum(x[idxs], na.rm = na.rm)
  s2 <- sum2(x, idxs = idxs, na.rm = na.rm)
  stopifnot(
    !na.rm || s1 == 0,
    identical(s1, s2)
  )

  # Summing over -Inf:s
  x <- rep(-Inf, times = 3L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(
    is.infinite(s1) && s1 < 0,
    identical(s1, s2)
  )

  # Summing over +Inf:s
  x <- rep(+Inf, times = 3L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(identical(s1, s2))
  stopifnot(
    is.infinite(s1) && s1 > 0,
    identical(s1, s2)
  )

  # Summing over mix of -Inf:s and +Inf:s
  x <- rep(c(-Inf, +Inf), times = 3L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(
    is.nan(s1),
    identical(s1, s2)
  )

  # Summing over mix of -Inf:s and +Inf:s and numerics
  x <- rep(c(-Inf, +Inf, 3.14), times = 2L)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  stopifnot(
    is.nan(s1),
    identical(s1, s2)
  )

  # Summing over mix of NaN, NA, +Inf, and numerics
  x <- c(NaN, NA, +Inf, 3.14)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  if (na.rm) {
    stopifnot(
      is.infinite(s1) && s1 > 0,
      identical(s2, s1)
    )
  } else {
    stopifnot(is.na(s1), is.na(s2))
    ## NOTE, due to compiler optimization, it is not guaranteed that NA is
    ## returned here (as one would expect). NaN might very well be returned,
    ## when both NA and NaN are involved.  This is an accepted feature in R,
    ## which is documented in help("is.nan").  See also
    ## https://stat.ethz.ch/pipermail/r-devel/2017-April/074009.html.
    ## Thus, we cannot guarantee that s1 is identical to s0.
  }

  # Summing over mix of NaN, NA, +Inf, and numerics
  x <- c(NA, NaN, +Inf, 3.14)
  s1 <- sum(x, na.rm = na.rm)
  s2 <- sum2(x, na.rm = na.rm)
  if (na.rm) {
    stopifnot(
      is.infinite(s1) && s1 > 0,
      identical(s2, s1)
    )
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
# Summing of large integers
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(.Machine$integer.max, 1L, -.Machine$integer.max)

# Total gives integer overflow
s1 <- sum(x[1:2])                        # NA_integer_ w/ warning
s2 <- sum2(x[1:2])                       # NA_integer_ w/ warning
stopifnot(
  getRversion() >= "3.5.0" || identical(s1, NA_integer_),
  identical(s2, NA_integer_)
)

## Assert above warning
res <- tryCatch({
  s2 <- sum2(x[1:2])
}, warning = identity)
stopifnot(inherits(res, "warning"))


# Total gives integer overflow (coerce to numeric)
s1 <- sum(as.numeric(x[1:2]))            # 2147483648
s2 <- sum2(as.numeric(x[1:2]))           # 2147483648
s3 <- sum2(x[1:2], mode = "double")      # 2147483648
stopifnot(
  identical(s1, 2147483648),
  identical(s1, s2),
  identical(s1, s3)
)

# Cumulative sum would give integer overflow but not the total
s1 <- sum(x)                              # 1L
s2 <- sum2(x)                             # 1L
stopifnot(
  identical(s1, 1L),
  identical(s1, s2)
)

# Input is double but coercing result to integer
x <- c(1, 2, 3.1)
s1 <- sum2(x)
s2 <- sum2(x, mode = "integer")
stopifnot(
  identical(as.integer(s1), s2)
)

## Assert above warning
res <- tryCatch({
  s2 <- sum2(x, mode = "integer")
}, warning = identity)
stopifnot(inherits(res, "warning"))

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Summing of large doubles
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## Double overflow
x <- rep(.Machine$double.xmax, times = 2L)
y0 <- sum(x)
print(y0)
y <- sum2(x)
print(y)
stopifnot(
  is.infinite(y) && y > 0,
  identical(y, y0)
)

x <- rep(-.Machine$double.xmax, times = 2L)
y0 <- sum(x)
print(y0)
y <- sum2(x)
print(y)
stopifnot(
  is.infinite(y) && y < 0,
  identical(y, y0)
)


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
  s1 <- sum(x[idxs], na.rm = TRUE)
  s2 <- sum2(x, idxs = idxs, na.rm = TRUE)
  stopifnot(identical(s1, s2))
}
