library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

cat("Consistency checks:\n")
for (kk in 1:20) {
  cat("Random test #", kk, "\n", sep="")

  # Simulate data in a matrix of any shape
  dim <- sample(500:2000, size=2)
  n <- prod(dim)
  x <- rnorm(n)
  dim(x) <- dim

  # Add NAs?
  nas <- sample(c(TRUE,FALSE), size=1)
  if (nas) {
    cat("Adding NAs\n");
    nna <- sample(n, size=1)
    naValues <- c(as.double(NA), NaN);
    x[sample(length(x), size=nna)] <- sample(naValues, size=nna, replace=TRUE)
  }

  # Integer or double?
  if (sample(c(TRUE,FALSE), size=1)) {
    cat("Coercing to integers\n");
    storage.mode(x) <- c("integer")
  }

  na.rm <- sample(c(TRUE,FALSE), size=1)

  # rowMedians():
  t1 <- system.time({
    y1 <- matrixStats::rowMedians(x, na.rm=na.rm)
  })
  t2 <- system.time({
    y2 <- apply(x, MARGIN=1, FUN=median, na.rm=na.rm)
  })
  stopifnot(all.equal(y1,y2))
  cat(sprintf("Timing: rowMedians()/apply(): %.3g\n", (t1/t2)[3]))
  t3 <- system.time({
    y3 <- matrixStats::colMedians(t(x), na.rm=na.rm)
  })
  stopifnot(all.equal(y1,y3))
  cat(sprintf("Timing: rowMedians()/colMedians(t()): %.3g\n", (t1/t3)[3]))


  # colMedians():
  t1 <- system.time({
    y1 <- matrixStats::colMedians(x, na.rm=na.rm)
  })
  t2 <- system.time({
    y2 <- apply(x, MARGIN=2, FUN=median, na.rm=na.rm)
  })
  stopifnot(all.equal(y1,y2))
  cat(sprintf("Timing: colMedians()/apply(): %.3g\n", (t1/t2)[3]))
  t3 <- system.time({
    y3 <- matrixStats::rowMedians(t(x), na.rm=na.rm)
  })
  stopifnot(all.equal(y1,y3))
  cat(sprintf("Timing: colMedians()/rowMedians(t()): %.3g\n", (t1/t3)[3]))
} # for (kk ...)
