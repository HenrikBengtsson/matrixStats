library("matrixStats")

diff2_R <- function(..., useNames=NA){
  res <- diff(...)
  if (is.na(useNames) || !useNames) names(res) <- NULL
  res
}
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -6, max = 6)
for (setNames in c(TRUE, FALSE)) {
  if (setNames) names(x) <- LETTERS[1:6]
  else names(x) <- NULL
  for (l in 1:2) {
    for (d in 1:2) {
      for (idxs in index_cases) {
        for (useNames in c(if (!matrixStats:::isUseNamesNADefunct()) NA, TRUE, FALSE)) {
          validateIndicesTestVector(x, idxs,
                                    ftest = diff2, fsure = diff2_R,
                                    lag = l, differences = d, useNames = useNames)
        }
      }
    }
  }
}
