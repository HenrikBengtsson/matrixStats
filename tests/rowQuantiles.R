library("matrixStats")

rowQuantiles_R <- function(x, probs, na.rm=FALSE) {
  q <- apply(x, MARGIN=1L, FUN=quantile, probs=probs, na.rm=na.rm)
  if (!is.null(dim(q))) q <- t(q)
  q
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with multiple quantiles
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(1:100+0.1, nrow=10, ncol=10)
  storage.mode(x) <- mode
  str(x)

  probs <- c(0,0.5,1)
  q0 <- rowQuantiles_R(x, probs=probs)
  print(q0)
  q1 <- rowQuantiles(x, probs=probs)
  print(q1)
  stopifnot(all.equal(q1, q0))
  q2 <- colQuantiles(t(x), probs=probs)
  stopifnot(all.equal(q2, q0))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with a single quantile
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(1:100, nrow=10, ncol=10)
  storage.mode(x) <- mode
  str(x)

  probs <- c(0.5)
  q0 <- rowQuantiles_R(x, probs=probs)
  print(q0)
  q1 <- rowQuantiles(x, probs=probs)
  print(q1)
  stopifnot(all.equal(q1, q0))
  q2 <- colQuantiles(t(x), probs=probs)
  stopifnot(all.equal(q2, q0))
} # for (mode ...)


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
    naValues <- c(NA_real_, NaN)
    x[sample(length(x), size=nna)] <- sample(naValues, size=nna, replace=TRUE)
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2,0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  str(x)

  # rowQuantiles():
  q0 <- rowQuantiles_R(x, probs=probs, na.rm=hasNA)
  q1 <- rowQuantiles(x, probs=probs, na.rm=hasNA)
  stopifnot(all.equal(q1, q0))
  q2 <- colQuantiles(t(x), probs=probs, na.rm=hasNA)
  stopifnot(all.equal(q2, q0))
} # for (kk ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Empty matrices
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(NA_real_, nrow=0L, ncol=0L)
probs <- c(0, 0.25, 0.75, 1)
q <- rowQuantiles(x, probs=probs)
stopifnot(identical(dim(q), c(nrow(x), length(probs))))
q <- colQuantiles(x, probs=probs)
stopifnot(identical(dim(q), c(ncol(x), length(probs))))
