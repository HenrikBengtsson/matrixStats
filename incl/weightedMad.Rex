x <- 1:10
n <- length(x)

m1 <- mad(x)
m2 <- weightedMad(x)
stopifnot(identical(m1, m2))

w <- rep(1, times=n)
m1 <- weightedMad(x, w)
stopifnot(identical(m1,m2))

# All weight on the first value
w[1] <- Inf
m <- weightedMad(x, w)
stopifnot(m == 0)

# All weight on the first two values
w[1:2] <- Inf
m1 <- mad(x[1:2])
m2 <- weightedMad(x, w)
stopifnot(identical(m1,m2))

# All weights set to zero
w <- rep(0, times=n)
m <- weightedMad(x, w)
stopifnot(is.na(m))

