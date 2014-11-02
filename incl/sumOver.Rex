x <- 1:10
n <- length(x)

idxs <- seq(from=1, to=n, by=2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

idxs <- seq(from=n, to=1, by=-2)
s1 <- sum(x[idxs])                        # 25
s2 <- sumOver(x, idxs=idxs)               # 25
stopifnot(identical(s1, s2))

s1 <- sum(x)                              # 55
s2 <- sumOver(x)                          # 55
stopifnot(identical(s1, s2))


# Total gives integer overflow
x <- c(.Machine$integer.max, 1L, -.Machine$integer.max)
s1 <- sum(x[1:2])                         # NA_integer_
s2 <- sumOver(x[1:2])                     # NA_integer_
stopifnot(identical(s1, s2))

# Total gives integer overflow (coerce to numeric)
s1 <- sum(as.numeric(x[1:2]))             # 2147483648
s2 <- sumOver(as.numeric(x[1:2]))         # 2147483648
s3 <- sumOver(x[1:2], mode="numeric")     # 2147483648
stopifnot(identical(s1, s2))
stopifnot(identical(s1, s3))

# Cumulative sum would give integer overflow but not the total
s1 <- sum(x)                              # 1L
s2 <- sumOver(x)                          # 1L
stopifnot(identical(s1, s2))


