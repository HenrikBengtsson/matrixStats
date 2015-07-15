library("matrixStats")

rowQuantiles_R <- function(x, probs, na.rm=FALSE, drop=TRUE, ...) {
  q <- apply(x, MARGIN=1L, FUN=function(x, probs, na.rm) {
    if (!na.rm && any(is.na(x))) {
      naValue <- NA_real_
      storage.mode(naValue) <- storage.mode(x)
      rep(naValue, length(probs))

    } else {
      as.vector(quantile(x, probs=probs, na.rm=na.rm, ...))
    }
  }, probs=probs, na.rm=na.rm)

  if (!is.null(dim(q))) q <- t(q)
  else dim(q) <- c(nrow(x), length(probs))

  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100*probs)

  if (drop) q <- drop(q)
  q
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Test with multiple quantiles
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(1:40+0.1, nrow=8, ncol=5)
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
  x <- matrix(1:40, nrow=8, ncol=5)
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
K <- if (Sys.getenv("_R_CHECK_FULL_") == "" || Sys.getenv("_R_CHECK_USE_VALGRIND_") != "") 4 else 20
for (kk in seq_len(K)) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  dim <- sample(20:60, size=2L)
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

x <- matrix(NA_real_, nrow=2L, ncol=0L)
q <- rowQuantiles(x, probs=probs)
stopifnot(identical(dim(q), c(nrow(x), length(probs))))

x <- matrix(NA_real_, nrow=0L, ncol=2L)
q <- colQuantiles(x, probs=probs)
stopifnot(identical(dim(q), c(ncol(x), length(probs))))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Single column matrices
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1, nrow=2L, ncol=1L)
q <- rowQuantiles(x, probs=probs)
print(q)

x <- matrix(1, nrow=1L, ncol=2L)
q <- colQuantiles(x, probs=probs)
print(q)
