rvector <- function(n, mode=c("double", "integer"), range=c(-100,+100), naProb=0) {
  mode <- match.arg(mode)
  x <- runif(n, min=range[1], max=range[2])
  if (naProb > 0) x[sample(n, size=naProb*n)] <- NA_real_
  storage.mode(x) <- mode
  x
} # rvector()


rvectors <- function(scale=40, seed=1, ...) {
  set.seed(seed)
  data <- list()
  data$`Tiny`   <- rvector(n=scale*1e2, ...)
  data$`Short`  <- rvector(n=scale*1e3, ...)
  data$`Medium` <- rvector(n=scale*1e4, ...)
  data$`Long`   <- rvector(n=scale*1e5, ...)
  data$`Huge`   <- rvector(n=scale*1e6, ...)
  data
} # rvectors()


############################################################################
# HISTORY:
# 2014-06-04
# o Created.
############################################################################
