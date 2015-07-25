library("matrixStats")

rowAlls_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    apply(is.na(x), MARGIN=1L, FUN=all, na.rm=na.rm)
  } else {
    y <- x == value
    dim(y) <- dim(x) # for 0×N and M×0 cases
    apply(y, MARGIN=1L, FUN=all, na.rm=na.rm)
  }
}

rowAnys_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    apply(is.na(x), MARGIN=1L, FUN=any, na.rm=na.rm)
  } else {
    y <- x == value
    dim(y) <- dim(x) # for 0×N and M×0 cases
    apply(y, MARGIN=1L, FUN=any, na.rm=na.rm)
  }
}

rowAnyMissings_R <- function(x, ...) {
  apply(x, MARGIN=1L, FUN=anyMissing)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Multicore tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-3, max=3), nrow=6, ncol=6)
storage.mode(x) <- "integer"
x[2:3,] <- NA_integer_
x[2,1] <- 0L
x[4:5,] <- 0L
x[4,6] <- NA_integer_

for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value=0, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value=0, mc.cores=2L)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value=0, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value=0, mc.cores=2L)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnyMissings, fsure=rowAnyMissings_R, mc.cores=2L)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnyMissings, fsure=rowAnyMissings_R, mc.cores=2L)
  }
}
