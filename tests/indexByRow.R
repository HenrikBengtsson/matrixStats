library("matrixStats")

indexByRow_R1 <- function(dim, idxs = NULL, ...) {
  n <- prod(dim)
  x <- matrix(seq_len(n), nrow = dim[2L], ncol = dim[1L], byrow = TRUE)
  if (!is.null(idxs))
    x <- x[idxs]
  as.vector(x)
}


indexByRow_R2 <- function(dim, idxs = NULL, ...) {
  n <- prod(dim)
  if (is.null(idxs)) {
    x <- matrix(seq_len(n), nrow = dim[2L], ncol = dim[1L], byrow = TRUE)
    as.vector(x)
  } else {
    idxs <- idxs - 1L
    cols <- idxs %/% dim[2L]
    rows <- idxs  %% dim[2L]
    cols + dim[1L] * rows + 1L
  }
}


dim <- c(5L, 4L)
x <- matrix(NA_integer_, nrow = dim[1L], ncol = dim[2L])
y <- t(x)
idxs_by_cols <- seq_along(x)

# Assign by columns
x[idxs_by_cols] <- idxs_by_cols
print(x)

# Truth
y0 <- t(x)
idxs_by_rows <- as.vector(y0)

# Assert
idxs <- indexByRow(dim)
stopifnot(all.equal(idxs, idxs_by_rows))
y <- x
y[idxs_by_rows] <- idxs
print(y)
stopifnot(all(as.vector(y) == as.vector(x)))

idxs_R1 <- indexByRow_R1(dim)
stopifnot(all.equal(idxs_R1, idxs_by_rows))

idxs_R2 <- indexByRow_R2(dim)
stopifnot(all.equal(idxs_R2, idxs_by_rows))

# Assert
idxs_by_cols <- seq(from = 1, to = length(x), by = 3L)
idxs_by_rows <- as.vector(t(x)[idxs_by_cols])

idxs <- indexByRow(dim, idxs = idxs_by_cols)
stopifnot(all(idxs == idxs_by_rows))

idxs_R1 <- indexByRow_R1(dim, idxs = idxs_by_cols)
stopifnot(all(idxs_R1 == idxs_by_rows))

idxs_R2 <- indexByRow_R2(dim, idxs = idxs_by_cols)
stopifnot(all(idxs_R2 == idxs_by_rows))


## DEPRECATED: Backward compatibility
idxs0 <- indexByRow(dim)
idxs1 <- indexByRow(x)
stopifnot(identical(idxs1, idxs0))
res <- tryCatch({
  idxs1 <- indexByRow(x)
}, warning = identity)
stopifnot(inherits(res, "warning"))


## Exceptions:
## Too large matrices are not supported, which happens
## when prod(dim) > .Machine$integer.max
dim_too_large <- c(.Machine$integer.max, 2L)
res <- tryCatch({
  idxs <- indexByRow(dim_too_large, idxs = 1L)
}, error = identity)
stopifnot(inherits(res, "error"))

## Non-positive indices are not supported
res <- tryCatch({
  idxs <- indexByRow(c(1,1), idxs = 0L)
}, error = identity)
stopifnot(inherits(res, "error"))

res <- tryCatch({
  idxs <- indexByRow(c(1,1), idxs = -1L)
}, error = identity)
stopifnot(inherits(res, "error"))
