library("matrixStats")

fcns <- list(
  weightedVar = c(rowWeightedVars, colWeightedVars),
  weightedSd = c(rowWeightedSds, colWeightedSds),
  weightedMad = c(rowWeightedMads, colWeightedMads)
)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])
for (fcn in names(fcns)) {
  cat(sprintf("subsetted tests on matrix %s()...\n", fcn))
  row_fcn <- fcns[[fcn]][[1]]
  col_fcn <- fcns[[fcn]][[2]]

  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
    w <- runif(6, min = 0, max = 6)
    storage.mode(x) <- mode
    storage.mode(w) <- mode
    if (mode == "numeric") w[1] <- Inf

    # Test with and without dimnames on x
    for (setDimnames in c(TRUE, FALSE)) {
      if (setDimnames) dimnames(x) <- dimnames
      else dimnames(x) <- NULL

      count <- 0L
      for (rows in index_cases) {
        for (cols in index_cases) {
          count <- count + 1L
          na.rm <- c(TRUE, FALSE)[count %% 2 + 1]
          useNames <- c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)
          useNames <- useNames[count %% length(useNames) + 1]

          validateIndicesTestMatrix_w(x, w, rows, cols,
                                      ftest = row_fcn, fsure = row_fcn,
                                      na.rm = na.rm, useNames = useNames)
          validateIndicesTestMatrix_w(x, w, rows, cols,
                                      fcoltest = col_fcn, fsure = row_fcn,
                                      na.rm = na.rm, useNames = useNames)
        }
      }
    }
  }
  cat(sprintf("%s()...DONE\n", fcn))
}
