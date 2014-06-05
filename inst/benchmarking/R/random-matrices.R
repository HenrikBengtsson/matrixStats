rmatrix <- function(nrow, ncol, mode=c("double", "integer"), range=c(-100,+100), naProb=0) {
  mode <- match.arg(mode)
  n <- nrow*ncol
  X <- runif(n, min=range[1], max=range[2])
  if (naProb > 0) X[sample(n, size=naProb*n)] <- NA_real_
  storage.mode(X) <- mode
  dim(X) <- c(nrow, ncol)
  X
} # rmatrix()


rmatrices <- function(scale=40, seed=1, ...) {
  set.seed(seed)
  data <- list()
  data$`Tiny Square` <- rmatrix(nrow=scale*  1, ncol=scale*  1, ...)
  data$`Square`      <- rmatrix(nrow=scale* 10, ncol=scale* 10, ...)
  data$`Tall Narrow` <- rmatrix(nrow=scale*100, ncol=scale*  1, ...)
  data$`Short Wide`  <- rmatrix(nrow=scale*  1, ncol=scale*100, ...)
  data$`Long Wide`   <- rmatrix(nrow=scale* 10, ncol=scale*100, ...)
  data
} # rmatrices()


############################################################################
# HISTORY:
# 2014-06-02
# o Created.
############################################################################
