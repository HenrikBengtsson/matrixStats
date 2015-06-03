library("matrixStats")

N <- 6L
K <- 5L
J <- 5L
data <- matrix(1:J, nrow=N, ncol=K)


modes <- c("integer", "raw")
for (mode in modes) {
  cat(sprintf("Mode: %s...\n", mode))

  x <- data
  storage.mode(x) <- mode
  print(x)

  y <- rowTabulates(x)
  print(y)
  stopifnot(identical(dim(y), c(N,J)))

  y <- colTabulates(x)
  print(y)
  stopifnot(identical(dim(y), c(K,J)))

  # Count only certain values
  y <- rowTabulates(x, values=1:3)
  print(y)
  stopifnot(identical(dim(y), c(N,3L)))

  y <- colTabulates(x, values=1:3)
  print(y)
  stopifnot(identical(dim(y), c(K,3L)))

  # Raw
  y <- rowTabulates(x, values=as.raw(1:3))
  print(y)
  stopifnot(identical(dim(y), c(N,3L)))

  y2 <- colTabulates(t(x), values=as.raw(1:3))
  print(y2)
  stopifnot(identical(dim(y2), c(N,3L)))
  stopifnot(identical(y2, y))

  cat(sprintf("Mode: %s...done\n", mode))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowTabulates, fsure=rowTabulates)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowTabulates, fsure=rowTabulates, values=1:3)

    validateIndicesTestMatrix(x, rows, cols, ftest=colTabulates, fsure=colTabulates)
    validateIndicesTestMatrix(x, rows, cols, ftest=colTabulates, fsure=colTabulates, values=1:3)
  }
}
