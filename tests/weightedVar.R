library("matrixStats")

weightedVar_R <- function(x, w) {
  mu <- weighted.mean(x, w = w)
  sum(w * (x - mu) ^ 2) / (sum(w) - 1)
}


n <- 10
x <- as.double(1:n)

message("*** weightedVar() ...")

message("- Zero elements")
m0 <- var(integer(0))
m1 <- weightedVar(integer(0), w = integer(0))
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- One elements")
m0 <- var(1)
m1 <- weightedVar(1)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights (all w = 1)")
m0 <- var(x)
w <- rep(1, times = n)
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights (all w = 3)")
m0 <- var(rep(x, each = 3))
w <- rep(3, times = n)
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights on the first five elements")
idxs <- 1:5
m0 <- var(x[1:5])
w <- rep(0, times = n)
w[idxs] <- 1
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- Uniform weights on every second elements")
idxs <- seq(from = 1, to = n, by = 2)
m0 <- var(x[idxs])
w <- rep(0, times = n)
w[idxs] <- 1
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- All weights are zero")
idxs <- integer(0L)
m0 <- var(x[idxs])
w <- rep(0, times = n)
w[idxs] <- 1
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))

message("- Infinite weights on first element")
idxs <- 1L
m0 <- var(x[idxs])
w <- rep(0, times = n)
w[idxs] <- Inf
m1 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))


message("- Frequency weights")

## From https://en.wikipedia.org/wiki/Weighted_arithmetic_mean
y <-  c(2, 2, 4, 5, 5, 5)
x <- unique(y)
w <- table(y)
stopifnot(names(w) == x)

m0 <- weightedVar(x, w = w)
m1 <- var(y)
stopifnot(all.equal(m1, m0))
m2 <- weightedVar(x, w = w)
str(list(m0 = m0, m1 = m1, m2 = m2))
stopifnot(all.equal(m2, m0))

## From https://github.com/HenrikBengtsson/matrixStats/issues/72
large <- c(21, 8, 26, 1, 15, 33, 12, 25, 0, 84)
years <- c(41706, 9301, 33678, 3082, 27040, 44188, 10049, 30591, 2275, 109831)

m0 <- weightedVar(large, w = years)
m1 <- weightedVar(large, w = years)
str(list(m0 = m0, m1 = m1))
stopifnot(all.equal(m1, m0))

message("*** weightedVar() ... DONE")
