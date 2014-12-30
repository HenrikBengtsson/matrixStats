library("matrixStats")

x <- rnorm(10)

for (l in 1:3) {
  for (d in 1:3) {
    cat(sprintf("lag=%d, differences=%d\n", l, d))
    y0 <- diff(x, lag=l, differences=d)
    str(y0)
    y1 <- diff2(x, lag=l, differences=d)
    str(y1)
    stopifnot(identical(y1, y0))
  }
}
