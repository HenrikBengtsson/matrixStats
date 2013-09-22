library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Naive R implementation of binMeans()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binMeans0 <- function(y, x, bx) {
  B <- length(bx)-1L
  res <- double(B)
  counts <- integer(B)

  # For each bin...
  for (kk in seq(length=B)) {
    idxs <- which(bx[kk] <= x & x < bx[kk+1L])
    yKK <- y[idxs]
    muKK <- mean(yKK)
    res[kk] <- muKK
    counts[kk] <- length(idxs)
  } # for (kk ...)

  attr(res, "count") <- counts
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


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example #2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 1e5
x <- runif(nx)
y <- runif(nx)

nb <- 50
bx <- do.call(seq, c(as.list(range(x)), length.out=nb))
bx1 <- c(bx[-1], bx[nb] + 1)

t0 <- system.time({
  yS0 <- binMeans0(y, x=x, bx=bx1)
})

t <- system.time({
  yS <- binMeans(y, x=x, bx=bx1)
})
nS <- binCounts(x, bx=bx1)

# Sanity check
stopifnot(all.equal(yS, yS0))
stopifnot(all(attr(yS, "count"), nS))
