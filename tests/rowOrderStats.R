library("matrixStats")
library("stats")

set.seed(1)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Benchmarking
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Benchmarking:\n")

K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 5 else 3

# Simulate data in a matrix of any shape
nrow <- 1000
ncol <- 1000
x <- rnorm(nrow*ncol)
dim(x) <- c(nrow, ncol)
probs <- 0.3
which <- round(probs*ncol)
gc()
t0 <- system.time({
  for (rr in 1:K)
    y0 <- apply(x, MARGIN=1, FUN=quantile, probs=probs, type=3)
})
gc()
t1 <- system.time({
  for (rr in 1:K)
    y1 <- rowOrderStats(x, which=which)
})
stopifnot(all.equal(y0,y1))
cat(sprintf("rowOrderStats()/apply(): %.3g\n", (t1/t0)[3]))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Consistency checks without NAs:\n")
for (kk in 1:K) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  nrow <- sample(1000, size=1)
  ncol <- sample(1000, size=1)
  x <- rnorm(nrow*ncol)
  dim(x) <- c(nrow, ncol)

  probs <- runif(1)
  which <- round(probs*ncol)

  t0 <- system.time({
    y0 <- apply(x, MARGIN=1, FUN=quantile, probs=probs, type=3)
  })
  t1 <- system.time({
    y1 <- rowOrderStats(x, which=which)
  })
  stopifnot(all.equal(y0,y1))
} # for (kk in ...)
