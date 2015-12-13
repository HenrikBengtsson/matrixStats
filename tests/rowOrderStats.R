library("matrixStats")
library("stats")

rowOrderStats_R <- function(x, probs, ...) {
  ans <- apply(x, MARGIN=1L, FUN=quantile, probs=probs, type=3L)

  # Remove Attributes
  attributes(ans) <- NULL
  ans
} # rowOrderStats_R()


set.seed(1)

K <- if (Sys.getenv("_R_CHECK_FULL_") == "") 5 else 3

# Simulate data in a matrix of any shape
nrow <- 300
ncol <- 100
x <- rnorm(nrow*ncol)
dim(x) <- c(nrow, ncol)
probs <- 0.3
which <- round(probs*ncol)

y0 <- rowOrderStats_R(x, probs=probs)
y1 <- rowOrderStats(x, which=which)
stopifnot(all.equal(y1,y0))
y2 <- colOrderStats(t(x), which=which)
stopifnot(all.equal(y2,y0))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("Consistency checks without NAs:\n")
  for (kk in seq_len(K)) {
    cat("Random test #", kk, "\n", sep="")

    # Simulate data in a matrix of any shape
    nrow <- sample(100, size=1)
    ncol <- sample(100, size=1)
    x <- rnorm(nrow*ncol)
    dim(x) <- c(nrow, ncol)

    cat("mode: ", mode, "\n", sep="")
    storage.mode(x) <- mode
    str(x)

    probs <- runif(1)
    which <- round(probs*ncol)

    y0 <- rowOrderStats_R(x, probs=probs)
    y1 <- rowOrderStats(x, which=which)
    stopifnot(all.equal(y1,y0))
    y2 <- colOrderStats(t(x), which=which)
    stopifnot(all.equal(y2,y0))
  } # for (kk in ...)
} # for (mode ...)
