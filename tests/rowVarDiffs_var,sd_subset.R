library("matrixStats")

FUNs <- list(
  varDiffs=c(rowVarDiffs, colVarDiffs),
  sdDiff=c(rowSdDiffs, colSdDiffs)
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
for (fcn in names(FUNs)) {
  cat(sprintf("subsetted tests on %s()...\n", fcn))
  rowFUN <- FUNs[[fcn]][[1L]]
  colFUN <- FUNs[[fcn]][[2L]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6*6, min=-6, max=6), nrow=6L, ncol=6L)
    storage.mode(x) <- mode
    trim <- runif(1, min=0, max=0.5)
    if (mode == "numeric") x[1:2,3:4] <- Inf

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
