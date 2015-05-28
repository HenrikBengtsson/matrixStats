library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("Consistency checks:\n")
K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 4 else 20
for (kk in 1:K) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  n <- sample(10e3, size=1L)
  x <- rnorm(n, sd=100)

  # Add NAs?
  if ((kk %% 4) %in% c(3,0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size=1L)
    naValues <- c(NA_real_, NaN)
    x[sample(length(x), size=nna)] <- sample(naValues, size=nna, replace=TRUE)
  }

  # Integer or double?
  if ((kk %% 4) %in% c(2,0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  na.rm <- sample(c(TRUE,FALSE), size=1L)

  # Sum over all
  y0 <- mean(x, na.rm=na.rm)
  y1 <- meanOver(x, na.rm=na.rm)
  stopifnot(all.equal(y1,y0))
} # for (kk ...)



# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Averaging over zero elements
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- integer(0)
s1 <- mean(x)
s2 <- meanOver(x)
stopifnot(identical(s1, s2))

x <- rep(NA_integer_, times=10L)
s1 <- mean(x, na.rm=TRUE)
s2 <- meanOver(x, na.rm=TRUE)
stopifnot(identical(s1, s2))

x <- double(0)
s1 <- mean(x)
s2 <- meanOver(x)
stopifnot(identical(s1, s2))

x <- rep(NA_real_, times=10L)
s1 <- mean(x, na.rm=TRUE)
s2 <- meanOver(x, na.rm=TRUE)
stopifnot(identical(s1, s2))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min=-6, max=6)
for (idxs in indexCases) {
  validateIndicesTestVector(x, idxs, ftest=meanOver, fsure=mean, na.rm=FALSE)
  validateIndicesTestVector(x, idxs, ftest=meanOver, fsure=mean, na.rm=TRUE)
}
