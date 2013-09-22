library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binCounts_hist <- function(x, bx, ...) {
  n0 <- graphics::hist(x, breaks=bx, right=FALSE, include.lowest=TRUE, plot=FALSE)$counts
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Example #1: Non-sorted and sorted positions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(0xBEEF)

nx <- 10e6  # Number of data points
nb <- 200e3  # Number of bins

# Uniformely distributed bins
bx <- seq(from=0, to=1, length.out=nb+1L)
bx <- c(-1, bx, 2)

# Sample data points
x <- runif(nx, min=0, max=1)

for (kk in 1:2) {
  t0 <- system.time({
    n0 <- binCounts_hist(x, bx=bx)
  })
  cat(sprintf("Timing: hist(): %.3gs\n", t0[3]))

  t1 <- system.time({
    n1 <- binCounts(x, bx=bx)
  })
  cat(sprintf("Timing: binCounts(): %.3gs\n", t1[3]))

  # Sanity check
  stopifnot(identical(n1, n0))
  cat(sprintf("Timing: hist()/binCounts(): %.3gx\n", (t0/t1)[3]))

  # Retry with a sorted vector
  x <- sort(x)
}
