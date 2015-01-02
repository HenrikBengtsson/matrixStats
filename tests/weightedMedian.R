library("matrixStats")

x <- 1:5
y <- weightedMedian(x)
y <- weightedMedian(x, w=c(NA,Inf,NA,Inf,NA), na.rm=TRUE)
cat("\n")
print(y)

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

y3 <- weightedMedian(x, w)                # 5.5 (default)

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
for (mode in c("integer", "double")) {
  storage.mode(x) <- mode
  for (ties in c("weighted", "mean", "min", "max")) {
    cat(sprintf("ties=%s\n", ties))
    y <- weightedMedian(x, w, ties=ties)
  }
}

set.seed(0x42)

n <- 5
x <- as.double(n:1); w <- rev(x)
x <- as.double(1:n); w <- rep(1,n)

y <- weightedMedian(x=double(0L))
print(y)

y <- weightedMedian(x=x[1])
print(y)

str(list(x=x, w=w))


n <- 1e3
x <- runif(n)
w <- runif(n, min=0, max=1)
for (mode in c("integer", "double")) {
  storage.mode(x) <- mode
  for (ties in c("weighted", "mean", "min", "max")) {
    y <- weightedMedian(x, w, ties=ties)
    cat(sprintf("mode=%s, ties=%s, result=%g\n", mode, ties, y))
  }
}
