library("matrixStats")

logSumExp_R <- function(lx, na.rm = FALSE) {
  log(sum(exp(lx), na.rm = na.rm))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- runif(6, min = -6, max = 6)
for (idxs in index_cases) {
  validateIndicesTestVector(x, idxs,
                            ftest = logSumExp, fsure = logSumExp_R,
                            na.rm = FALSE)
  validateIndicesTestVector(x, idxs,
                            ftest = logSumExp, fsure = logSumExp_R,
                            na.rm = TRUE)
}
