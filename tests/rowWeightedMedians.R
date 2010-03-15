library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Non-weighted row averages
xM0 <- rowMedians(x)
xM <- rowWeightedMedians(x)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (uniform weights)
w <- rep(2.5, ncol(x))
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted row averages (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowMedians(x[,(w == 1),drop=FALSE]);
xM <- rowWeightedMedians(x, w=w)
stopifnot(all.equal(xM, xM0))

# Weighted averages by rows and columns
w <- 1:4
xM1 <- rowWeightedMedians(x, w=w)
xM2 <- colWeightedMedians(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


# Weighted row medians with missing values
xM0 <- apply(x, MARGIN=1, FUN=aroma.light::weightedMedian, w=w, na.rm=TRUE)
print(xM0)
xM <- rowWeightedMedians(x, w=w, na.rm=TRUE)
print(xM)
stopifnot(all.equal(xM, xM0))

# Weighted medians by rows and columns
w <- 1:4
xM1 <- rowWeightedMedians(x, w=w, na.rm=TRUE)
xM2 <- colWeightedMedians(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1)) 