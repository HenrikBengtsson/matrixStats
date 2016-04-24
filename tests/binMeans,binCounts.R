library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Naive R implementation of binMeans()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binMeans0 <- function(y, x, bx, na.rm=TRUE, count=TRUE, right=FALSE) {
  B <- length(bx)-1L
  res <- double(B)
  counts <- rep(NaN, times=B)

  if (na.rm) {
    keep <- !is.na(x) & !is.na(y)
    x <- x[keep]
    y <- y[keep]
  }

  # For each bin...
  for (kk in seq_len(B)) {
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
# Case #1
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
stopifnot(all.equal(attr(yS, "count"), nS))

yS0r <- rev(binMeans0(y, x=-x, bx=rev(-bx), count=FALSE, right=TRUE))
ySr <- rev(binMeans(y, x=-x, bx=rev(-bx), count=FALSE, right=TRUE))
# Sanity check
stopifnot(all.equal(yS0r, yS0, check.attributes=FALSE))
stopifnot(all.equal(ySr, yS0r))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Case #2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 1e4
x <- runif(nx)
y <- runif(nx)

nb <- 20
bx <- do.call(seq, c(as.list(range(x)), length.out=nb))
bx1 <- c(bx[-1], bx[nb] + 1)

yS0 <- binMeans0(y, x=x, bx=bx1)
yS <- binMeans(y, x=x, bx=bx1)
nS <- binCounts(x, bx=bx1)
ySr <- rev(binMeans(y, x=-x, bx=rev(-bx1), right=TRUE))

# Sanity check
stopifnot(all.equal(yS, yS0))
stopifnot(all.equal(attr(yS, "count"), nS))
stopifnot(all.equal(ySr, yS, check.attributes=FALSE))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Empty bins
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(6:8, 16:19)
nx <- length(x)
y <- runif(nx)
bx <- c(0,5,10,15,20,25)
yS0 <- binMeans0(y, x=x, bx=bx)
yS <- binMeans(y, x=x, bx=bx)
nS <- binCounts(x, bx=bx)
stopifnot(all.equal(attr(yS, "count"), nS))
stopifnot(all.equal(yS, yS0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:200
x[100] <- NA_integer_
nx <- length(x)
y <- double(nx)
y[1:50] <- 5
y[101:150] <- -5
y[123:125] <- NA_real_
y <- y + rnorm(nx)

# Bins
bx <- c(0.5,50.5,100.5,150.5,200.5)

yS0 <- binMeans0(y, x=x, bx=bx)
yS <- binMeans(y, x=x, bx=bx)
# Sanity check
stopifnot(all.equal(yS, yS0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Exception handling
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Zero bin bounderies (invalid bin definition)
bx <- double(0L)
res <- try(yS <- binMeans(x=1:10, y=1:10, bx=bx), silent=TRUE)
stopifnot(inherits(res, "try-error"))

# One bin boundery (invalid bin definition)
bx <- double(1L)
res <- try(yS <- binMeans(x=1:10, y=1:10, bx=bx), silent=TRUE)
stopifnot(inherits(res, "try-error"))
