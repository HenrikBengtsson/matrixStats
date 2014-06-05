library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

probs <- seq(from=0, to=1, by=0.25)

cat("Consistency checks:\n")
K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 4 else 20
for (kk in 1:K) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  dim <- sample(50:200, size=2L)
  n <- prod(dim)
  x <- rnorm(n, sd=100)
  dim(x) <- dim

  # Add NAs?
  hasNA <- (kk %% 4) %in% c(3,0);
  if (hasNA) {
    cat("Adding NAs\n")
    nna <- sample(n, size=1)
    naValues <- c(as.double(NA), NaN)
    x[sample(length(x), size=nna)] <- sample(naValues, size=nna, replace=TRUE)
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2,0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  # rowQuantiles():
  y1 <- matrixStats::rowQuantiles(x, probs=probs, na.rm=hasNA)
  y2 <- apply(x, MARGIN=1L, FUN=quantile, probs=probs, na.rm=hasNA)
  stopifnot(all.equal(y1, t(y2)))
} # for (kk ...)
