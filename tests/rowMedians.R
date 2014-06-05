library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

cat("Consistency checks:\n")
K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 4 else 20
for (kk in 1:K) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  dim <- sample(500:2000, size=2)
  n <- prod(dim)
  x <- rnorm(n, sd=100)
  dim(x) <- dim

  # Add NAs?
  if ((kk %% 4) %in% c(3,0)) {
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

  na.rm <- sample(c(TRUE,FALSE), size=1)

  # rowMedians():
  y1 <- matrixStats::rowMedians(x, na.rm=na.rm)
  y2 <- apply(x, MARGIN=1, FUN=median, na.rm=na.rm)
  stopifnot(all.equal(y1,y2))
  y3 <- matrixStats::colMedians(t(x), na.rm=na.rm)
  stopifnot(all.equal(y1,y3))

  # colMedians():
  y1 <- matrixStats::colMedians(x, na.rm=na.rm)
  y2 <- apply(x, MARGIN=2, FUN=median, na.rm=na.rm)
  stopifnot(all.equal(y1,y2))
  y3 <- matrixStats::rowMedians(t(x), na.rm=na.rm)
  stopifnot(all.equal(y1,y3))
} # for (kk ...)
