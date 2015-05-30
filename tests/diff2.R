library("matrixStats")

set.seed(0x42)

for (mode in c("integer", "double")) {
  x <- rnorm(10, sd=5)
  storage.mode(x) <- mode
  str(x)

  for (hasNA in c(FALSE, TRUE)) {
    if (hasNA) {
      x[sample(1:10, size=3)] <- NA
    }

    for (l in 1:3) {
      for (d in 1:4) {
        cat(sprintf("%s: NAs=%s, lag=%d, differences=%d\n", mode, hasNA, l, d))
        y0 <- diff(x, lag=l, differences=d)
        str(y0)
        y1 <- diff2(x, lag=l, differences=d)
        str(y1)
        stopifnot(identical(y1, y0))
      }
    }
  } # for (hasNA ...)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min=-6, max=6)
for (l in 1:2) {
  for (d in 1:2) {
    for (idxs in indexCases) {
      validateIndicesTestVector(x, idxs, ftest=diff2, fsure=diff, lag=l, differences=d)
    }
  }
}
