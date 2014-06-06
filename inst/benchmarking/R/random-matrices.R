rmatrix <- function(nrow, ncol, mode=c("double", "integer"), range=c(-100,+100), naProb=0) {
  mode <- match.arg(mode)
  n <- nrow*ncol
  X <- runif(n, min=range[1], max=range[2])
  if (naProb > 0) X[sample(n, size=naProb*n)] <- NA_real_
  storage.mode(X) <- mode
  dim(X) <- c(nrow, ncol)
  X
} # rmatrix()


rmatrices <- function(scale=10, seed=1, ...) {
  set.seed(seed)
  data <- list()
  data[[1]] <- rmatrix(nrow=scale*  1, ncol=scale*  1, ...)
  data[[2]] <- rmatrix(nrow=scale* 10, ncol=scale* 10, ...)
  data[[3]] <- rmatrix(nrow=scale*100, ncol=scale*  1, ...)
  data[[4]] <- t(data[[3]])
  data[[5]] <- rmatrix(nrow=scale* 10, ncol=scale*100, ...)
  data[[6]] <- t(data[[5]])
  names(data) <- sapply(data, FUN=function(x) paste(dim(x), collapse="x"))
  data
} # rmatrices()


############################################################################
# HISTORY:
# 2014-06-02
# o Created.
############################################################################
