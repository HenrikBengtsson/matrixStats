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


all_R <- function(x, value=TRUE, ...) {
  if (is.na(value)) {
    all(is.na(x), ...)
  } else {
    all(x == value, ...)
  }
}

any_R <- function(x, value=TRUE, ...) {
  if (is.na(value)) {
    any(is.na(x), ...)
  } else {
    any(x == value, ...)
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
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
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value=0, na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value=0, na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value=NA_integer_)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value=0, na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value=0, na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value=NA_integer_)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value=0, na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value=0, na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value=NA_integer_)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value=0, na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value=0, na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value=NA_integer_)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnyMissings, fsure=rowAnyMissings_R)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnyMissings, fsure=rowAnyMissings_R)
  }
}

for (rr in seq_len(nrow(x))) {
  for (idxs in indexCases) {
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value=0, na.rm=TRUE)
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value=0, na.rm=FALSE)
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value=NA_integer_)

    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value=0, na.rm=TRUE)
    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value=0, na.rm=FALSE)
    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value=NA_integer_)
  }
}


storage.mode(x) <- "character"
for (rows in indexCases) {
  for (cols in indexCases) {
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value="0", na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value="0", na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAlls, fsure=rowAlls_R, value=NA_character_)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value="0", na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value="0", na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAlls, fsure=rowAlls_R, value=NA_character_)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value="0", na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value="0", na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnys, fsure=rowAnys_R, value=NA_character_)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value="0", na.rm=TRUE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value="0", na.rm=FALSE)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnys, fsure=rowAnys_R, value=NA_character_)

    validateIndicesTestMatrix(x, rows, cols, ftest=rowAnyMissings, fsure=rowAnyMissings_R)
    validateIndicesTestMatrix(x, rows, cols, fcolTest=colAnyMissings, fsure=rowAnyMissings_R)
  }
}

for (rr in seq_len(nrow(x))) {
  for (idxs in indexCases) {
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value="0", na.rm=TRUE)
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value="0", na.rm=FALSE)
    validateIndicesTestVector(x[rr,], idxs, ftest=allValue, fsure=all_R, value=NA_integer_)

    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value="0", na.rm=TRUE)
    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value="0", na.rm=FALSE)
    validateIndicesTestVector(x[rr,], idxs, ftest=anyValue, fsure=any_R, value=NA_integer_)
  }
}
