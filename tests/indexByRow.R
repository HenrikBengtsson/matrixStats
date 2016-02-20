library("matrixStats")

indexByRow_R1 <- function(dim, idxs=NULL, ...) {
  n <- prod(dim)
  x <- matrix(seq_len(n), nrow=dim[2L], ncol=dim[1L], byrow=TRUE)
  if (!is.null(idxs))
    x <- x[idxs]
  as.vector(x)
} # indexByRow_R1()


indexByRow_R2 <- function(dim, idxs=NULL, ...) {
  n <- prod(dim)
  if (is.null(idxs)) {
    x <- matrix(seq_len(n), nrow=dim[2L], ncol=dim[1L], byrow=TRUE)
    as.vector(x)
  } else {
    idxs <- idxs - 1
    cols <- idxs %/% dim[2L]
    rows <- idxs  %% dim[2L]
    cols + dim[1L]*rows + 1L
  }
} # indexByRow_R2()


dim <- c(5L, 4L)
X <- matrix(NA_integer_, nrow=dim[1L], ncol=dim[2L])
Y <- t(X)
idxsByCols <- seq_along(X)

# Assign by columns
X[idxsByCols] <- idxsByCols
print(X)

# Truth
Y0 <- t(X)
idxsByRows <- as.vector(Y0)

# Assert
idxs <- indexByRow(dim)
stopifnot(all.equal(idxs, idxsByRows))
Y <- X
Y[idxsByRows] <- idxs
print(Y)
stopifnot(all(as.vector(Y) == as.vector(X)))

idxs_R1 <- indexByRow_R1(dim)
stopifnot(all.equal(idxs_R1, idxsByRows))

idxs_R2 <- indexByRow_R2(dim)
stopifnot(all.equal(idxs_R2, idxsByRows))

# Assert
idxsByCols <- seq(from=1, to=length(X), by=3L)
idxsByRows <- as.vector(t(X)[idxsByCols])

idxs <- indexByRow(dim, idxs=idxsByCols)
stopifnot(all(idxs == idxsByRows))

idxs_R1 <- indexByRow_R1(dim, idxs=idxsByCols)
stopifnot(all(idxs_R1 == idxsByRows))

idxs_R2 <- indexByRow_R2(dim, idxs=idxsByCols)
stopifnot(all(idxs_R2 == idxsByRows))


## DEPRECATED: Backward compatibility
idxs0 <- indexByRow(dim)
idxs1 <- indexByRow(X)
stopifnot(identical(idxs1, idxs0))

