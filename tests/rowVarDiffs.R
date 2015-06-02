library("matrixStats")

FUNs <- list(
  rowVarDiffs=list(rowVarDiffs, colVarDiffs),
  rowSdDiffs=list(rowSdDiffs, colSdDiffs),
  rowMadDiffs=list(rowMadDiffs, colMadDiffs),
  rowIQRDiffs=list(rowIQRDiffs, colIQRDiffs)
)

for (fcn in names(FUNs)) {
  cat(sprintf("%s()...\n", fcn))
  rFUN <- FUNs[[fcn]][[1L]]
  cFUN <- FUNs[[fcn]][[2L]]

  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # With and without some NAs
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (mode in c("integer", "double")) {
    for (addNA in c(FALSE, TRUE)) {
      cat("addNA=", addNA, "\n", sep="")

      x <- matrix(1:100+0.1, nrow=20, ncol=5)
      if (addNA) {
        x[13:17,c(2,4)] <- NA_real_
      }
      cat("mode: ", mode, "\n", sep="")
      storage.mode(x) <- mode
      str(x)

      # Row/column ranges
      for (na.rm in c(FALSE, TRUE)) {
        cat("na.rm=", na.rm, "\n", sep="")
        r1 <- rFUN(x, na.rm=na.rm)
        r2 <- cFUN(t(x), na.rm=na.rm)
        stopifnot(all.equal(r1, r2))
      }
    } # for (addNA ...)
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # All NAs
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  for (mode in c("integer", "double")) {
    x <- matrix(NA_real_, nrow=20, ncol=5)
    cat("mode: ", mode, "\n", sep="")
    storage.mode(x) <- mode
    str(x)

    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm=", na.rm, "\n", sep="")
      r1 <- rFUN(x, na.rm=na.rm)
      r2 <- cFUN(t(x), na.rm=na.rm)
      stopifnot(all.equal(r1, r2))
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # A 1x1 matrix
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  x <- matrix(0, nrow=1, ncol=1)
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")
    r1 <- rFUN(x, na.rm=na.rm)
    r2 <- cFUN(t(x), na.rm=na.rm)
    stopifnot(all.equal(r1, r2))
  }

  cat(sprintf("%s()...DONE\n", fcn))
} # for (fcn ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("=== subsetted tests ===\n")

FUNs <- list(
  varDiffs=c(rowVarDiffs, colVarDiffs),
  sdDiff=c(rowSdDiffs, colSdDiffs),
  madDiff=c(rowMadDiffs, colMadDiffs),
  iqrDiff=c(rowIQRDiffs, colIQRDiffs)
)

source("utils/validateIndicesFramework.R")
for (fcn in names(FUNs)) {
  cat(sprintf("subsetted tests on %s()...\n", fcn))
  rowFUN <- FUNs[[fcn]][[1L]]
  colFUN <- FUNs[[fcn]][[2L]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6*6, min=-6, max=6), nrow=6L, ncol=6L)
    trim <- runif(1, min=0, max=0.5)
    if (mode == "numeric") x[0] <- Inf

    for (diff in 1:2) {
      for (rows in indexCases) {
        for (cols in indexCases) {
          for (na.rm in c(TRUE, FALSE)) {
            validateIndicesTestMatrix(x, rows, cols, ftest=rowFUN, fsure=rowFUN, na.rm=na.rm, diff=diff, trim=trim)
            validateIndicesTestMatrix(x, rows, cols, fcolTest=colFUN, fsure=rowFUN, na.rm=na.rm, diff=diff, trim=trim)
          }
        }
      }
    }
  }

  cat(sprintf("%s()...DONE\n", fcn))
}
