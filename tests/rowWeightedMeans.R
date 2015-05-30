library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Non-weighted row averages
xM0 <- rowMeans(x)
xM1 <- rowWeightedMeans(x)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x))
stopifnot(all.equal(xM2, xM0))


# Weighted row averages (uniform weights)
w <- rep(2.5, ncol(x))
xM1 <- rowWeightedMeans(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row averages (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMeans(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMeans(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row averages (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowMeans(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMeans(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row averages (all zero weights)
w <- c(0,0,0,0)
xM0 <- rowMeans(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMeans(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted averages by rows and columns
w <- 1:4
xM1 <- rowWeightedMeans(x, w=w)
print(xM1)
xM2 <- colWeightedMeans(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


x[sample(length(x), size=0.3*length(x))] <- NA
print(x)

# Non-weighted row averages with missing values
xM0 <- rowMeans(x, na.rm=TRUE)
xM1 <- rowWeightedMeans(x, na.rm=TRUE)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), na.rm=TRUE)
stopifnot(all.equal(xM2, xM0))


# Weighted row averages with missing values
xM0 <- apply(x, MARGIN=1, FUN=weighted.mean, w=w, na.rm=TRUE)
print(xM0)
xM1 <- rowWeightedMeans(x, w=w, na.rm=TRUE)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMeans(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM0))


# Weighted averages by rows and columns
w <- 1:4
xM1 <- rowWeightedMeans(x, w=w, na.rm=TRUE)
xM2 <- colWeightedMeans(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# w contains missing value
w[1] <- NA_integer_
xM1 <- rowWeightedMeans(x, w=w, na.rm=TRUE)
xM2 <- colWeightedMeans(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))

xM1 <- rowWeightedMeans(x, w=w, na.rm=FALSE)
xM2 <- colWeightedMeans(t(x), w=w, na.rm=FALSE)
stopifnot(all.equal(xM2, xM1))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rowWeightedMeans_R <- function(x, w, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=weighted.mean, w=w, na.rm=na.rm, ...)
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
        validateIndicesTestMatrix_w(x, w, rows, cols, ftest=rowWeightedMeans, fsure=rowWeightedMeans_R, na.rm=na.rm)
        validateIndicesTestMatrix_w(x, w, rows, cols, fcolTest=colWeightedMeans, fsure=rowWeightedMeans_R, na.rm=na.rm)
      }
    }
  }
}
