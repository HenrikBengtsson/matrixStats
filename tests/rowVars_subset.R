library("matrixStats")

## Always allow testing of the 'center' argument (as long as it's not defunct)
options(matrixStats.center.onUse = "ignore")

rowVars_R <- function(x, na.rm = FALSE, ..., useNames = TRUE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 1L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  if (!useNames) names(res) <- NULL
  res
}

colVars_R <- function(x, na.rm = FALSE, ..., useNames = TRUE) {
  suppressWarnings({
    res <- apply(x, MARGIN = 2L, FUN = var, na.rm = na.rm)
  })
  stopifnot(!any(is.infinite(res)))
  if (!useNames) names(res) <- NULL
  res
}


rowVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = TRUE) {
  center <- rowWeightedMeans(x, cols = cols, na.rm = na.rm, useNames = FALSE)
  res <- rowVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}

colVars_center <- function(x, rows = NULL, cols = NULL, na.rm = FALSE, ..., useNames = TRUE) {
  center <- colWeightedMeans(x, rows = rows, na.rm = na.rm, useNames = FALSE)
  res <- colVars(x, rows = rows, cols = cols, center = center, na.rm = na.rm, useNames = useNames)
  stopifnot(!any(is.infinite(res)))
  res
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6 * 6, min = -6, max = 6), nrow = 6, ncol = 6)
storage.mode(x) <- "integer"

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:6])

for (rows in index_cases) {
  for (cols in index_cases) {
    for (na.rm in c(TRUE, FALSE)) {
      for (useNames in c(TRUE, FALSE)){
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowVars, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowVars_center, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
  
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colVars, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colVars_center, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        
        # Check names attribute
        dimnames(x) <- dimnames
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowVars, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  ftest = rowVars_center, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colVars, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        validateIndicesTestMatrix(x, rows, cols,
                                  fcoltest = colVars_center, fsure = rowVars_R,
                                  na.rm = na.rm, useNames = useNames)
        dimnames(x) <- NULL
      }
    }
  }
}
