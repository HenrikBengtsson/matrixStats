library("matrixStats")
library("stats")

asWhich <- function(probs, max) {
  idx <- as.integer(round(probs * max))
  if (idx < 1L) {
    idx <- 1L
  } else if (idx > max) {
    idx <- max
  }
  idx
} # asWhich()

rowOrderStats_R <- function(x, probs, ..., useNames = NA) {
  ans <- apply(x, MARGIN = 1L, FUN = quantile, probs = probs, type = 3L)
  
  # Remove Attributes
  if (is.na(useNames) || !useNames || length(ans) == 0L) attributes(ans) <- NULL
  ans
} # rowOrderStats_R()


set.seed(1)


# Simulate data in a matrix of any shape
nrow <- 60L
ncol <- 30L
x <- rnorm(nrow * ncol)
dim(x) <- c(nrow, ncol)
probs <- 0.3
which <- asWhich(probs, max = ncol)

y0 <- rowOrderStats_R(x, probs = probs)
y1 <- rowOrderStats(x, which = which)
stopifnot(all.equal(y1, y0))
y2 <- colOrderStats(t(x), which = which)
stopifnot(all.equal(y2, y0))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("Consistency checks without NAs:\n")
  for (kk in 1:3) {
    cat("Random test #", kk, "\n", sep = "")

    # Simulate data in a matrix of any shape
    nrow <- sample(20L, size = 1L)
    ncol <- sample(20L, size = 1L)
    x <- rnorm(nrow * ncol)
    dim(x) <- c(nrow, ncol)

    cat("mode: ", mode, "\n", sep = "")
    storage.mode(x) <- mode
    str(x)

    probs <- runif(1)
    which <- asWhich(probs, max = ncol)

    y0 <- rowOrderStats_R(x, probs = probs)
    y1 <- rowOrderStats(x, which = which)
    stopifnot(all.equal(y1, y0))
    y2 <- colOrderStats(t(x), which = which)
    stopifnot(all.equal(y2, y0))
  } # for (kk in ...)
} # for (mode ...)


# Check names attribute
x <- matrix(1:9 + 0.1, nrow = 3L, ncol = 3L)

probs <- runif(1)
which <- asWhich(probs, max = ncol(x))

dimnames <- list(letters[1:3], LETTERS[1:3])

# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
    y0 <- rowOrderStats_R(x, probs = probs, useNames = useNames)
    y1 <- rowOrderStats(x, which = which, useNames = useNames)
    stopifnot(all.equal(y1, y0))
    y2 <- colOrderStats(t(x), which = which, useNames = useNames)
    stopifnot(all.equal(y2, y0))    
  }
}
