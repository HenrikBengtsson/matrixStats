library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

sumOver_R <- function(x, na.rm=FALSE, idxs=NULL) {
  if (is.null(idxs)) {
    sum(x, na.rm=na.rm)
  } else {
    sum(x[idxs], na.rm=na.rm)
  }
} # sumOver_R()


cat("Consistency checks:\n")
K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 4 else 20
for (kk in 1:K) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  n <- sample(10e3, size=1L)
  x <- rnorm(n, sd=100)

  # Add NAs?
  if ((kk %% 4) %in% c(3,0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size=1L)
    naValues <- c(NA_real_, NaN)
    x[sample(length(x), size=nna)] <- sample(naValues, size=nna, replace=TRUE)
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2,0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  na.rm <- sample(c(TRUE,FALSE), size=1L)

  # Sum over all
  y0 <- sumOver_R(x, na.rm=na.rm)
  y1 <- sumOver(x, na.rm=na.rm)
  stopifnot(all.equal(y1,y0))

  # Sum over subset
  nidxs <- sample(n, size=1L)
  idxs <- sample(n, size=nidxs)
  y0 <- sumOver_R(x, na.rm=na.rm, idxs=idxs)
  y1 <- sumOver(x, na.rm=na.rm, idxs=idxs)
  stopifnot(all.equal(y1,y0))
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Summing of zero elements
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- integer(0)
s1 <- sum(x)
s2 <- sumOver(x)
stopifnot(identical(s1, s2))

x <- 1:10
idxs <- integer(0)
s1 <- sum(x[idxs])
s2 <- sumOver(x, idxs=idxs)
stopifnot(identical(s1, s2))

x <- rep(NA_integer_, times=10L)
s1 <- sum(x, na.rm=TRUE)
s2 <- sumOver(x, na.rm=TRUE)
stopifnot(identical(s1, s2))

x <- rep(NA_integer_, times=10L)
idxs <- 1:5
s1 <- sum(x[idxs], na.rm=TRUE)
s2 <- sumOver(x, idxs=idxs, na.rm=TRUE)
stopifnot(identical(s1, s2))

x <- double(0)
s1 <- sum(x)
s2 <- sumOver(x)
stopifnot(identical(s1, s2))

x <- as.double(1:10)
idxs <- integer(0)
s1 <- sum(x[idxs])
s2 <- sumOver(x, idxs=idxs)
stopifnot(identical(s1, s2))

x <- rep(NA_real_, times=10L)
s1 <- sum(x, na.rm=TRUE)
s2 <- sumOver(x, na.rm=TRUE)
stopifnot(identical(s1, s2))

x <- rep(NA_real_, times=10L)
idxs <- 1:5
s1 <- sum(x[idxs], na.rm=TRUE)
s2 <- sumOver(x, idxs=idxs, na.rm=TRUE)
stopifnot(identical(s1, s2))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Summing of large integers
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(.Machine$integer.max, 1L, -.Machine$integer.max)

# Total gives integer overflow
s1 <- sum(x[1:2])                         # NA_integer_
s2 <- sumOver(x[1:2])                     # NA_integer_
stopifnot(identical(s1, s2))

# Total gives integer overflow (coerce to numeric)
s1 <- sum(as.numeric(x[1:2]))             # 2147483648
s2 <- sumOver(as.numeric(x[1:2]))         # 2147483648
s3 <- sumOver(x[1:2], mode="double")      # 2147483648
stopifnot(identical(s1, s2))
stopifnot(identical(s1, s3))

# Cumulative sum would give integer overflow but not the total
s1 <- sum(x)                              # 1L
s2 <- sumOver(x)                          # 1L
stopifnot(identical(s1, s2))
