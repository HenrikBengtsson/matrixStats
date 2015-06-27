library("matrixStats")

set.seed(1)

cat("Consistency checks:\n")
for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  dim <- sample(40:80, size=2L)
  n <- prod(dim)
  x <- rnorm(n, sd=10)
  dim(x) <- dim

  # Add NAs?
  if ((kk %% 4) %in% c(3,0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size=1L)
    x[sample(length(x), size=nna)] <- NA_real_
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2,0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  str(x)

  for (ties in c("max", "min", "average")) {
    cat(sprintf("ties.method=%s\n", ties))
    # rowRanks():
    y1 <- matrixStats::rowRanks(x, ties.method=ties)
    y2 <- t(apply(x, MARGIN=1L, FUN=rank, na.last="keep", ties.method=ties))
    stopifnot(identical(y1,y2))

    y3 <- matrixStats::colRanks(t(x), ties.method=ties)
    stopifnot(identical(y1,y3))

    # colRanks():
    y1 <- matrixStats::colRanks(x, ties.method=ties)
    y2 <- t(apply(x, MARGIN=2L, FUN=rank, na.last="keep", ties.method=ties))
    stopifnot(identical(y1,y2))

    y3 <- matrixStats::rowRanks(t(x), ties.method=ties)
    stopifnot(identical(y1,y3))
  }
} # for (kk ...)


## Exception handling
x <- matrix(1:12, nrow=3L)
y <- try(rowRanks(x, ties.method="unknown"), silent=TRUE)
stopifnot(inherits(y, "try-error"))

y <- try(colRanks(x, ties.method="unknown"), silent=TRUE)
stopifnot(inherits(y, "try-error"))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rowRanks_R <- function(x, ties.method="average", ...) {
  ans <- t(apply(x, MARGIN=1L, FUN=rank, na.last="keep", ties.method=ties.method))
  dim(ans) <- dim(x)
  ans
}

source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowRanks, fsure=rowRanks_R, ties.method="average")

    validateIndicesTestMatrix(x, rows, cols, ftest=function(x, rows, cols, ...) {
      t(colRanks(t(x), rows=cols, cols=rows, preserveShape=TRUE, ...))
    }, fsure=rowRanks_R, ties.method="average")
  }
}
