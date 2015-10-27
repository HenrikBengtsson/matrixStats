library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow=5L, ncol=4L)
print(x)

# Weighted row variances (uniform weights - all w=1)
# Non-weighted row variances
xM0 <- rowVars(x)
w <- rep(1, times=ncol(x))
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (uniform weights - all w=3)
x3 <- cbind(x, x, x)
xM0 <- rowVars(x3)
w <- rep(3, times=ncol(x))
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
#stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


# Weighted row variances (all zero weights)
w <- c(0,0,0,0)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted variances by rows and columns
w <- 1:4
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


x[sample(length(x), size=0.3*length(x))] <- NA
print(x)

# Non-weighted row variances with missing values
xM0 <- rowVars(x, na.rm=TRUE)
xM1 <- rowWeightedVars(x, w=rep(1, times=ncol(x)), na.rm=TRUE)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=rep(1, times=ncol(x)), na.rm=TRUE)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances with missing values
xM1 <- rowWeightedVars(x, w=w, na.rm=TRUE)
print(xM1)
xM2 <- colWeightedVars(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# Weighted variances by rows and columns
w <- 1:4
xM1 <- rowWeightedVars(x, w=w, na.rm=TRUE)
xM2 <- colWeightedVars(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# Weighted row standard deviation (excluding some columns)
w <- c(1,1,0,1)
## FIXME: rowVars()/rowSds() needs na.rm=FALSE (wrong default)
xM0 <- rowSds(x[,(w == 1),drop=FALSE], na.rm=FALSE)
xM1 <- rowWeightedSds(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedSds(t(x), w=w, na.rm=FALSE)
stopifnot(all.equal(xM2, xM0))


# Weighted row MADs (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMads(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMads(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMads(t(x), w=w)
stopifnot(all.equal(xM2, xM0))
