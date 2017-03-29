library("matrixStats")

signTabulate0 <- function(x, ...) {
  nneg <- sum(x < 0, na.rm = TRUE)
  nzero <- sum(x == 0, na.rm = TRUE)
  npos <- sum(x > 0, na.rm = TRUE)
  nna <- sum(is.na(x))
  nneginf <- sum(is.infinite(x) & x < 0, na.rm = TRUE)
  nposinf <- sum(is.infinite(x) & x > 0, na.rm = TRUE)
  res <- c(nneg, nzero, npos, nna, nneginf, nposinf)
  res <- as.double(res)
  names(res) <- c("-1", "0", "+1", "NA", "-Inf", "+Inf")
  if (is.integer(x)) res <- res[1:4]
  res
} # signTabulate0()


# Simulate data
set.seed(0xBEEF)
n <- 1e3
x <- runif(n)
x[sample(n, size = 0.1 * n)] <- 0
x[sample(n, size = 0.1 * n)] <- NA_real_
x[sample(n, size = 0.1 * n)] <- -Inf
x[sample(n, size = 0.1 * n)] <- +Inf

# Doubles
message("Doubles:")
counts0 <- signTabulate0(x)
print(counts0)
counts1 <- signTabulate(x)
print(counts1)
stopifnot(identical(counts1, counts0))

# Integers
message("Integers:")
x <- suppressWarnings(as.integer(x))
counts0 <- signTabulate0(x)
print(counts0)
counts1 <- signTabulate(x)
print(counts1)
stopifnot(identical(counts1, counts0))
