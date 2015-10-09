library("matrixStats")

n <- 10
x <- as.double(1:n)

message("*** weightedVar() ...")

message("- Zero elements")
m0 <- var(integer(0))
m1 <- weightedVar(integer(0), w=integer(0))
str(list(m0=m0, m1=m1))
stopifnot(all.equal(m1, m0))


message("- One elements")
m0 <- var(1)
m1 <- weightedVar(1)
str(list(m0=m0, m1=m1))
##stopifnot(all.equal(m1, m0))  ## FIXME: Issue #73


message("- Uniform weights")
m0 <- var(x)
w <- rep(1, times=n)
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights on the first five elements")
idxs <- 1:5
m0 <- var(x[1:5])
w <- rep(0, times=n); w[idxs] <- 1
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights on every second elements")
idxs <- seq(from=1, to=n, by=2)
m0 <- var(x[idxs])
w <- rep(0, times=n); w[idxs] <- 1
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
stopifnot(all.equal(m1, m0))


message("- All weights are zero")
idxs <- integer(0L)
m0 <- var(x[idxs])
w <- rep(0, times=n); w[idxs] <- 1
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
stopifnot(all.equal(m1, m0))

message("- Infinite weights on first element")
idxs <- 1L
m0 <- var(x[idxs])
w <- rep(0, times=n); w[idxs] <- Inf
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
## stopifnot(all.equal(m1, m0)) ## FIXME: Issue #73?


message("- 10 times the weight on first element")
y <- c(rep(x[1], times=10L), x[-1])
m0 <- var(y)
w <- rep(1, times=n); w[1] <- 10
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
## stopifnot(all.equal(m1, m0)) ## FIXME: Issue #72


message("- Double weight on first five elements")
idxs <- 1:5
y <- c(rep(x[idxs], times=2L), x[-idxs])
m0 <- var(y)
w <- rep(1, times=n); w[idxs] <- 2
m1 <- weightedVar(x, w=w)
str(list(m0=m0, m1=m1))
## stopifnot(all.equal(m1, m0)) ## FIXME: Issue #72


message("*** weightedVar() ... DONE")
