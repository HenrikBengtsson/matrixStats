rvector <- function(n, mode=c("double", "integer"), range=c(-100,+100), naProb=0) {
  mode <- match.arg(mode)
  x <- runif(n, min=range[1], max=range[2])
  if (naProb > 0) x[sample(n, size=naProb*n)] <- NA_real_
  storage.mode(x) <- mode
  x
} # rvector()


rvectors <- function(scale=10, seed=1, ...) {
  set.seed(seed)
  data <- list()
  data[[1]] <- rvector(n=scale*1e2, ...)
  data[[2]] <- rvector(n=scale*1e3, ...)
  data[[3]] <- rvector(n=scale*1e4, ...)
  data[[4]] <- rvector(n=scale*1e5, ...)
  data[[5]] <- rvector(n=scale*1e6, ...)
  names(data) <- sprintf("n=%d", sapply(data, FUN=length))
  data
} # rvectors()


############################################################################
# HISTORY:
# 2014-06-04
# o Created.
############################################################################
