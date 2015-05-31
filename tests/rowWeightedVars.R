library("matrixStats")

set.seed(1)

x <- matrix(rnorm(20), nrow=5L, ncol=4L)
print(x)

# Non-weighted row variances
xM0 <- rowVars(x)
w <- rep(1, times=ncol(x))
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (uniform weights)
w <- rep(2.5, ncol(x))
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances (excluding some columns)
w <- c(0,1,0,0)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
#stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


# Weighted row variances (all zero weights)
w <- c(0,0,0,0)
xM0 <- rowVars(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedVars(x, w=w)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# Weighted variances by rows and columns
w <- 1:4
xM1 <- rowWeightedVars(x, w=w)
print(xM1)
xM2 <- colWeightedVars(t(x), w=w)
stopifnot(all.equal(xM2, xM1))


x[sample(length(x), size=0.3*length(x))] <- NA
print(x)

# Non-weighted row variances with missing values
xM0 <- rowVars(x, na.rm=TRUE)
xM1 <- rowWeightedVars(x, w=rep(1, times=ncol(x)), na.rm=TRUE)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedVars(t(x), w=rep(1, times=ncol(x)), na.rm=TRUE)
stopifnot(all.equal(xM2, xM0))


# Weighted row variances with missing values
xM1 <- rowWeightedVars(x, w=w, na.rm=TRUE)
print(xM1)
xM2 <- colWeightedVars(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# Weighted variances by rows and columns
w <- 1:4
xM1 <- rowWeightedVars(x, w=w, na.rm=TRUE)
xM2 <- colWeightedVars(t(x), w=w, na.rm=TRUE)
stopifnot(all.equal(xM2, xM1))


# Weighted row standard deviation (excluding some columns)
w <- c(1,1,0,1)
## FIXME: rowVars()/rowSds() needs na.rm=FALSE (wrong default)
xM0 <- rowSds(x[,(w == 1),drop=FALSE], na.rm=FALSE)
xM1 <- rowWeightedSds(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedSds(t(x), w=w, na.rm=FALSE)
stopifnot(all.equal(xM2, xM0))


# Weighted row MADs (excluding some columns)
w <- c(1,1,0,1)
xM0 <- rowMads(x[,(w == 1),drop=FALSE])
xM1 <- rowWeightedMads(x, w=w)
print(xM1)
stopifnot(all.equal(xM1, xM0))
xM2 <- colWeightedMads(t(x), w=w)
stopifnot(all.equal(xM2, xM0))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== subsetted tests ===\n")

FUNs <- list(
  weightedVar=c(rowWeightedVars, colWeightedVars),
  weightedSd=c(rowWeightedSds, colWeightedVars),
  weightedMad=c(rowWeightedMads, colWeightedMads)
)

source("utils/validateIndicesFramework.R")
for (fcn in names(FUNs)) {
  # TODO: can remove it when all functions' subsetted features are supported
  if (is.element(fcn, c("weightedVar", "weightedSd"))) next

  cat(sprintf("subsetted tests on matrix %s()...\n", fcn))
  rowFUN <- FUNs[[fcn]][[1]]
  colFUN <- FUNs[[fcn]][[2]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
    w <- runif(6, min=0, max=6)
    storage.mode(x) <- mode
    storage.mode(w) <- mode
    if (mode == "numeric") w[1] <- Inf

    for (rows in indexCases) {
      for (cols in indexCases) {
        for (na.rm in c(TRUE, FALSE)) {
          validateIndicesTestMatrix_w(x, w, rows, cols, ftest=rowFUN, fsure=rowFUN, na.rm=na.rm)
          validateIndicesTestMatrix_w(x, w, rows, cols, fcolTest=colFUN, fsure=rowFUN, na.rm=na.rm)
        }
      }
    }
  }

  cat(sprintf("%s()...DONE\n", fcn))
}
