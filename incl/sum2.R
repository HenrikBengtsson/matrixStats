x <- 1:10
n <- length(x)

idxs <- seq(from = 1, to = n, by = 2)
s1 <- sum(x[idxs])                     # 25
s2 <- sum2(x, idxs = idxs)             # 25
stopifnot(identical(s1, s2))

idxs <- seq(from = n, to = 1, by = -2)
s1 <- sum(x[idxs])                     # 25
s2 <- sum2(x, idxs = idxs)             # 25
stopifnot(identical(s1, s2))

s1 <- sum(x)                           # 55
s2 <- sum2(x)                          # 55
stopifnot(identical(s1, s2))


# Total gives integer overflow
x <- c(.Machine$integer.max, 1L, -.Machine$integer.max)
s1 <- sum(x[1:2])                      # NA_integer_ in R (< 3.5.0)
s2 <- sum2(x[1:2])                     # NA_integer_

# Total gives integer overflow (coerce to numeric)
s1 <- sum(as.numeric(x[1:2]))          # 2147483648
s2 <- sum2(as.numeric(x[1:2]))         # 2147483648
s3 <- sum2(x[1:2], mode = "double")    # 2147483648 w/out copy
stopifnot(identical(s1, s2))
stopifnot(identical(s1, s3))

# Cumulative sum would give integer overflow but not the total
s1 <- sum(x)                           # 1L
s2 <- sum2(x)                          # 1L
stopifnot(identical(s1, s2))
