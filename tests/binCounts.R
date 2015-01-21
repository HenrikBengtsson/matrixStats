library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binCounts_hist <- function(x, bx, right=FALSE, ...) {
  n0 <- graphics::hist(x, breaks=bx, right=right, include.lowest=TRUE, plot=FALSE)$counts
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Non-sorted and sorted positions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 10e5  # Number of data points
nb <- 20e3  # Number of bins

# Uniformely distributed bins
bx <- seq(from=0, to=1, length.out=nb+1L)
bx <- c(-1, bx, 2)

# Sample data points
set.seed(0xBEEF)
x <- runif(nx, min=0, max=1)

for (kk in 1:2) {
  n0 <- binCounts_hist(x, bx=bx)
  n1 <- binCounts(x, bx=bx)
  # Sanity check
  stopifnot(identical(n1, n0))

  # Check reversed
  n1r <- rev(binCounts(-x, bx=rev(-bx), right=TRUE))
  stopifnot(identical(n1r, n1))

  # Retry with a sorted vector
  x <- sort(x)
} # for (kk in 1:2)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:200
x[100] <- NA_integer_
nx <- length(x)

# Bins
bx <- c(0.5,50.5,100.5,150.5,200.5)

yS0 <- binCounts(x, bx=bx)
yS <- binCounts(x, bx=bx)
# Sanity check
stopifnot(all.equal(yS, yS0))
