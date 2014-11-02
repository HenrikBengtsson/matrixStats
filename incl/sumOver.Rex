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

