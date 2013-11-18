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
nx <- 10e6  # Number of data points
nb <- 200e3  # Number of bins

# Uniformely distributed bins
bx <- seq(from=0, to=1, length.out=nb+1L)
bx <- c(-1, bx, 2)

# Sample data points
set.seed(0xBEEF)
x <- runif(nx, min=0, max=1)

for (kk in 1:2) {
  t0 <- system.time({
    n0 <- binCounts_hist(x, bx=bx)
  })
  cat(sprintf("  Timing: hist(): %.3gs\n", t0[3]))

  t1 <- system.time({
    n1 <- binCounts(x, bx=bx)
  })
  cat(sprintf("  Timing: binCounts(): %.3gs\n", t1[3]))

  # Sanity check
  stopifnot(identical(n1, n0))
  cat(sprintf("  Timing: hist()/binCounts(): %.3gx\n", (t0/t1)[3]))

  # Check reversed
  t1r <- system.time({
    n1r <- rev(binCounts(-x, bx=rev(-bx), right=TRUE))
  })
  cat(sprintf("  Timing: binCounts(\"right\")/binCounts(): %.3gx\n", (t1r/t1)[3]))
  stopifnot(identical(n1r, n1))

  # Retry with a sorted vector
  x <- sort(x)
} # for (kk in 1:2)
