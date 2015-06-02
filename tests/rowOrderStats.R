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
nrow <- 1000
ncol <- 500
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
  for (kk in 1:K) {
    cat("Random test #", kk, "\n", sep="")
  
    # Simulate data in a matrix of any shape
    nrow <- sample(1000, size=1)
    ncol <- sample(1000, size=1)
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


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
probs <- 0.3
for (rows in indexCases) {
  for (cols in indexCases) {

    if (is.null(cols)) which <- round(probs*ncol(x))
    else {
      xxrows <- rows
      suppressWarnings({
        xx <- tryCatch(x[,cols,drop=FALSE], error=function(c) "error")
        if (!identical(xx, "error")) {
          which <- round(probs*ncol(xx))
        }
      })
    }
    if (which == 0) next

    validateIndicesTestMatrix(x, rows, cols, ftest=rowOrderStats, fsure=rowOrderStats_R, which=which, probs=probs)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colOrderStats, fsure=rowOrderStats_R, which=which, probs=probs)
  }
}
