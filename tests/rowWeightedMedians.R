library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Non-weighted row medians
xM0 <- rowMedians(x)
xM1 <- rowWeightedMedians(x)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x))
stopifnot(all.equal(xM2, xM0))

# Weighted row medians (uniform weights)
w <- rep(2.5, ncol(x))
xM1 <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM0))

# Weighted row medians (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM0))

# Weighted row medians (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM0))

# Weighted row medians (all zero weights)
w <- c(0,0,0,0)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM0))

# Weighted medians by rows and columns
w <- 1:4
xM1 <- rowWeightedMedians(x, w=w)
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


# Weighted row medians with missing values
xM0 <- apply(x, MARGIN=1, FUN=weightedMedian, w=w, na.rm=TRUE)
print(xM0)
xM1 <- rowWeightedMedians(x, w=w, na.rm=TRUE)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM0))

# Weighted medians by rows and columns
w <- 1:4
xM1 <- rowWeightedMedians(x, w=w, na.rm=TRUE)
xM2 <- colWeightedMedians(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# Inf weight
x <- matrix(1:2, nrow=1, ncol=2)
w <- c(7, Inf)
xM1 <- rowWeightedMedians(x, w=w)
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(identical(2, xM1))
stopifnot(identical(2, xM2))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rowWeightedMedians_R <- function(x, w, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=weightedMedian, w=w, na.rm=na.rm, ...)
}


source("utils/validateIndicesFramework.R")
for (mode in c("numeric", "integer")) {
  x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
  w <- runif(6, min=0, max=6)
  storage.mode(x) <- mode
  storage.mode(w) <- mode
  if (mode == "numeric") w[1] <- Inf

  for (rows in indexCases) {
    for (cols in indexCases) {
      for (na.rm in c(TRUE, FALSE)) {
        validateIndicesTestMatrix_w(x, w, rows, cols, ftest=rowWeightedMedians, fsure=rowWeightedMedians_R, na.rm=na.rm)
        validateIndicesTestMatrix_w(x, w, rows, cols, fcolTest=colWeightedMedians, fsure=rowWeightedMedians_R, na.rm=na.rm)
      }
    }
  }
}
