library("matrixStats")

x <- 1:10
n <- length(x)

y1 <- median(x)                           # 5.5
y2 <- weightedMedian(x)                   # 5.5
stopifnot(identical(y1, y2))

w <- rep(1, n)
y1 <- weightedMedian(x, w)                # 5.5 (default)
y2 <- weightedMedian(x, ties="weighted")  # 5.5 (default)
y3 <- weightedMedian(x, ties="min")       # 5
y4 <- weightedMedian(x, ties="max")       # 6
stopifnot(identical(y1,y2))

# Pull the median towards zero
w[1] <- 5
y1 <- weightedMedian(x, w)                # 3.5
y <- c(rep(0,w[1]), x[-1])                # Only possible for integer weights
y2 <- median(y)                           # 3.5
stopifnot(identical(y1,y2))

# Put even more weight on the zero
w[1] <- 8.5
y <- weightedMedian(x, w)                # 2

# All weight on the first value
w[1] <- Inf
y <- weightedMedian(x, w)                # 1

# All weight on the last value
w[1] <- 1
w[n] <- Inf
y <- weightedMedian(x, w)                # 10

# All weights set to zero
w <- rep(0, n)
y <- weightedMedian(x, w)                # NA

x <- 1:4
w <- rep(1, times=4)
for (ties in c("weighted", "mean", "min", "max", "both")) {
  cat(sprintf("ties=%s\n", ties))
  y <- weightedMedian(x, w, ties=ties)
}
