library("matrixStats")
library("stats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Naive R implementation of binMeans()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binMeans0 <- function(y, x, bx, na.rm = TRUE, count = TRUE, right = FALSE) {
  n_smooth <- length(bx) - 1L
  res <- double(n_smooth)
  counts <- rep(NaN, times = n_smooth)

  if (na.rm) {
    keep <- !is.na(x) & !is.na(y)
    x <- x[keep]
    y <- y[keep]
  }

  # For each bin...
  for (kk in seq_len(n_smooth)) {
    if (right) {
      idxs <- which(bx[kk] <  x & x <= bx[kk + 1L])
    } else {
      idxs <- which(bx[kk] <= x & x <  bx[kk + 1L])
    }
    y_kk <- y[idxs]
    res[kk] <- mean(y_kk)
    counts[kk] <- length(idxs)
  } # for (kk ...)

  if (count) attr(res, "count") <- counts
  res
}



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Case #1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:100
nx <- length(x)
y <- double(nx)
y[1:25] <- 5
y[51:75] <- -5
y <- y + rnorm(nx)

# Bins
bx <- c(0.5, 25.5, 50.5, 75.5, 100.5)

y_smooth0 <- binMeans0(y, x = x, bx = bx)
y_smooth <- binMeans(y, x = x, bx = bx)
n_smooth <- binCounts(x, bx = bx)
# Sanity check
stopifnot(all.equal(y_smooth, y_smooth0))
stopifnot(all.equal(attr(y_smooth, "count"), n_smooth))

y_smooth0r <- rev(binMeans0(y, x = -x, bx = rev(-bx),
                            count = FALSE, right = TRUE))
y_smoothr <- rev(binMeans(y, x = -x, bx = rev(-bx),
                          count = FALSE, right = TRUE))
# Sanity check
stopifnot(all.equal(y_smooth0r, y_smooth0, check.attributes = FALSE))
stopifnot(all.equal(y_smoothr, y_smooth0r))


# Integer input
y <- as.integer(y)
y_smooth0 <- binMeans0(y, x = x, bx = bx)
y_smooth <- binMeans(y, x = x, bx = bx)
n_smooth <- binCounts(x, bx = bx)
# Sanity check
stopifnot(is.integer(y),
          all.equal(y_smooth, y_smooth0),
          all.equal(attr(y_smooth, "count"), n_smooth))

# Logical input
y <- as.logical(y)
y_smooth0 <- binMeans0(y, x = x, bx = bx)
y_smooth <- binMeans(y, x = x, bx = bx)
n_smooth <- binCounts(x, bx = bx)
# Sanity check
stopifnot(is.logical(y),
          all.equal(y_smooth, y_smooth0),
          all.equal(attr(y_smooth, "count"), n_smooth))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Case #2
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
nx <- 1e3
x <- runif(nx)
y <- runif(nx)

nb <- 10
bx <- do.call(seq, c(as.list(range(x)), length.out = nb))
bx1 <- c(bx[-1], bx[nb] + 1)

y_smooth0 <- binMeans0(y, x = x, bx = bx1)
y_smooth <- binMeans(y, x = x, bx = bx1)
n_smooth <- binCounts(x, bx = bx1)
y_smoothr <- rev(binMeans(y, x = -x, bx = rev(-bx1), right = TRUE))

# Sanity check
stopifnot(all.equal(y_smooth, y_smooth0))
stopifnot(all.equal(attr(y_smooth, "count"), n_smooth))
stopifnot(all.equal(y_smoothr, y_smooth, check.attributes = FALSE))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Empty bins
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- c(6:8, 16:19)
nx <- length(x)
y <- runif(nx)
bx <- c(0, 5, 10, 15, 20, 25)
y_smooth0 <- binMeans0(y, x = x, bx = bx)
y_smooth <- binMeans(y, x = x, bx = bx)
n_smooth <- binCounts(x, bx = bx)
stopifnot(all.equal(attr(y_smooth, "count"), n_smooth))
stopifnot(all.equal(y_smooth, y_smooth0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- 1:100
x[50] <- NA_integer_
nx <- length(x)
y <- double(nx)
y[1:25] <- 5
y[51:75] <- -5
y[82:92] <- NA_real_
y <- y + rnorm(nx)

# Bins
bx <- c(0.5, 25.5, 75.5, 82.5, 100.5)

y_smooth0 <- binMeans0(y, x = x, bx = bx)
y_smooth <- binMeans(y, x = x, bx = bx)
# Sanity check
stopifnot(all.equal(y_smooth, y_smooth0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Exception handling
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Zero bin boundaries (invalid bin definition)
bx <- double(0L)
res <- try(y_smooth <- binMeans(x = 1:5, y = 1:5, bx = bx), silent = TRUE)
stopifnot(inherits(res, "try-error"))

# One bin boundary (invalid bin definition)
bx <- double(1L)
res <- try(y_smooth <- binMeans(x = 1:5, y = 1:5, bx = bx), silent = TRUE)
stopifnot(inherits(res, "try-error"))
