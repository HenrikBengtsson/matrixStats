library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Naive R implementation of binMeans()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binMeans0 <- function(y, x, bx, count=TRUE, right=FALSE) {
  B <- length(bx)-1L
  res <- double(B)
  counts <- integer(B)

  # For each bin...
  for (kk in seq(length=B)) {
    if (right) {
      idxs <- which(bx[kk] <  x & x <= bx[kk+1L])
    } else {
      idxs <- which(bx[kk] <= x & x <  bx[kk+1L])
    }
    yKK <- y[idxs]
    muKK <- mean(yKK)
    res[kk] <- muKK
    counts[kk] <- length(idxs)
  } # for (kk ...)

  if (count) attr(res, "count") <- counts
  res
} # binMeans0()



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example #1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:200
nx <- length(x)
y <- double(nx)
y[1:50] <- 5
y[101:150] <- -5
y <- y + rnorm(nx)

# Bins
bx <- c(0.5,50.5,100.5,150.5,200.5)

yS0 <- binMeans0(y, x=x, bx=bx)
yS <- binMeans(y, x=x, bx=bx)
nS <- binCounts(x, bx=bx)
# Sanity check
stopifnot(all.equal(yS, yS0))
stopifnot(all(attr(yS, "count"), nS))

yS0r <- rev(binMeans0(y, x=-x, bx=rev(-bx), count=FALSE, right=TRUE))
ySr <- rev(binMeans(y, x=-x, bx=rev(-bx), count=FALSE, right=TRUE))
# Sanity check
stopifnot(all.equal(yS0r, yS0, check.attributes=FALSE))
stopifnot(all.equal(ySr, yS0r))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example #2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 1e5
x <- runif(nx)
y <- runif(nx)

nb <- 50
bx <- do.call(seq, c(as.list(range(x)), length.out=nb))
bx1 <- c(bx[-1], bx[nb] + 1)

yS0 <- binMeans0(y, x=x, bx=bx1)
yS <- binMeans(y, x=x, bx=bx1)
nS <- binCounts(x, bx=bx1)
ySr <- rev(binMeans(y, x=-x, bx=rev(-bx1), right=TRUE))

# Sanity check
stopifnot(all.equal(yS, yS0))
stopifnot(all(attr(yS, "count"), nS))
stopifnot(all.equal(ySr, yS, check.attributes=FALSE))
