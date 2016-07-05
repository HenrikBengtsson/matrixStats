library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Naive R implementation of binMeans()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
binMeans0 <- function(y, x, bx, na.rm=TRUE, count=TRUE, right=FALSE) {
  B <- length(bx)-1L
  res <- double(B)
  counts <- rep(NaN, times=B)

  if (na.rm) {
    keep <- !is.na(x) & !is.na(y)
    x <- x[keep]
    y <- y[keep]
  }

  # For each bin...
  for (kk in seq_len(B)) {
    if (right) {
      idxs <- which(bx[kk] <  x & x <= bx[kk+1L])
    } else {
      idxs <- which(bx[kk] <= x & x <  bx[kk+1L])
    }
    yKK <- y[idxs]
    muKK <- mean(yKK)
    res[kk] <- muKK
    counts[kk] <- length(idxs)
  } # for (kk ...)

  if (count) attr(res, "count") <- counts
  res
} # binMeans0()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
y <- runif(6, min=-6, max=6)
x <- runif(6, min=-6, max=6)
storage.mode(x) <- "integer"
bx <- c(-6, 0, 3, 4, 10)
for (idxs in indexCases) {
  for (na.rm in c(TRUE, FALSE)) {
    validateIndicesTestVector_w(y, x, idxs, ftest=binMeans, fsure=binMeans0, bx=bx, na.rm=na.rm, count=TRUE, right=FALSE)
    validateIndicesTestVector_w(y, x, idxs, ftest=binMeans, fsure=binMeans0, bx=bx, na.rm=na.rm, count=TRUE, right=TRUE)
  }
}
