library("matrixStats")

for (mode in c("integer", "double")) {
  x <- rnorm(10, sd=5)
  storage.mode(x) <- mode
  str(x)

  for (l in 1:3) {
    for (d in 1:4) {
      cat(sprintf("%s: lag=%d, differences=%d\n", mode, l, d))
      y0 <- diff(x, lag=l, differences=d)
      str(y0)
      y1 <- diff2(x, lag=l, differences=d)
      str(y1)
      stopifnot(identical(y1, y0))
    }
  }
}
