library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binCounts_hist <- function(x, bx, right = FALSE, ...) {
  n0 <- graphics::hist(x, breaks = bx, right = right,
                       include.lowest = TRUE, plot = FALSE)$counts
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Non-sorted and sorted positions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 1000L  # Number of data points
nb <- 200L   # Number of bins

# Uniformely distributed bins
bx <- seq(from = 0, to = 1, length.out = nb + 1L)
bx <- c(-1, bx, 2)

# Sample data points
set.seed(0xBEEF)
x <- runif(nx, min = 0, max = 1)

for (kk in 1:2) {
  n0 <- binCounts_hist(x, bx = bx)
  n1 <- binCounts(x, bx = bx)
  # Sanity check
  stopifnot(identical(n1, n0))

  # Check reversed
  n1r <- rev(binCounts(-x, bx = rev(-bx), right = TRUE))
  stopifnot(identical(n1r, n1))

  # Retry with a sorted vector
  x <- sort(x)
} # for (kk in 1:2)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:40
x[20] <- NA_integer_
nx <- length(x)

# Bins
bx <- c(0.5, 50.5, 100.5, 150.5, 200.5)

y_smooth0 <- binCounts_hist(x, bx = bx)
y_smooth <- binCounts(x, bx = bx)
# Sanity check
stopifnot(all.equal(y_smooth, y_smooth0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Border cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:10
bx <- min(x) - c(10, 1)
y_smooth <- binCounts(x, bx = bx)
stopifnot(all.equal(y_smooth, 0L))
bx <- range(x)
y_smooth <- binCounts(x, bx = bx)
stopifnot(all.equal(y_smooth, length(x) - 1L))
bx <- max(x) + c(1, 10)
y_smooth <- binCounts(x, bx = bx)
stopifnot(all.equal(y_smooth, 0L))

# Every second empty
x <- 1:10
bx <- rep(x, each = 2L)
y_smooth <- binCounts(x, bx = bx)
stopifnot(all.equal(y_smooth, rep(c(0L, 1L), length.out = length(bx) - 1L)))
## NOTE: binCounts_hist() does not give the same last bin count


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Exception handling
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Zero bin boundaries (invalid bin definition)
bx <- double(0L)
res <- try(y_smooth <- binCounts(1:10, bx = bx), silent = TRUE)
stopifnot(inherits(res, "try-error"))

# One bin boundary (invalid bin definition)
bx <- double(1L)
res <- try(y_smooth <- binCounts(1:10, bx = bx), silent = TRUE)
stopifnot(inherits(res, "try-error"))
