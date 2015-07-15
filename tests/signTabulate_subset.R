library("matrixStats")

signTabulate0 <- function(x, ...) {
  nneg <- sum(x < 0, na.rm=TRUE)
  nzero <- sum(x == 0, na.rm=TRUE)
  npos <- sum(x > 0, na.rm=TRUE)
  nna <- sum(is.na(x))
  nneginf <- sum(is.infinite(x) & x < 0, na.rm=TRUE)
  nposinf <- sum(is.infinite(x) & x > 0, na.rm=TRUE)
  res <- c(nneg, nzero, npos, nna, nneginf, nposinf)
  res <- as.double(res)
  names(res) <- c("-1", "0", "+1", "NA", "-Inf", "+Inf")
  if (is.integer(x)) res <- res[1:4]
  res
} # signTabulate0()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
x[2:3,4:5] <- +Inf
x[4:5,1:2] <- -Inf
for (idxs in indexCases) {
  validateIndicesTestVector(x, idxs, ftest=signTabulate, fsure=signTabulate0)
}
