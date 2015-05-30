library("matrixStats")

rowMads_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=mad, na.rm=na.rm)
  })
}

colMads_R <- function(x, na.rm=FALSE) {
  suppressWarnings({
    apply(x, MARGIN=2L, FUN=mad, na.rm=na.rm)
  })
}

rowMads_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  if (length(x) == 0) return(rep(NA_real_, nrow(x)))

  center <- rowMedians(x, na.rm=na.rm)
  rowMads(x, center=center, na.rm=na.rm)
}

colMads_center <- function(x, rows=NULL, cols=NULL, na.rm=FALSE) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  if (length(x) == 0) return(rep(NA_real_, ncol(x)))

  center <- colMedians(x, na.rm=na.rm)
  colMads(x, center=center, na.rm=na.rm)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 3x3 matrix (no ties)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1,2,3,2,3,4,3,4,5)+0.1, nrow=3, ncol=3)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  cat("rowMads():\n")
  r0 <- rowMads_R(x, na.rm=TRUE)
  r1 <- rowMads(x, na.rm=TRUE)
  r1b <- rowMads_center(x, na.rm=TRUE)
  r2 <- colMads(t(x), na.rm=TRUE)
  r2b <- colMads_center(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r2b, r2))

  cat("colMads():\n")
  r0 <- colMads_R(x, na.rm=TRUE)
  r1 <- colMads(x, na.rm=TRUE)
  r1b <- colMads_center(x, na.rm=TRUE)
  r2 <- rowMads(t(x), na.rm=TRUE)
  r2b <- rowMads_center(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1b, r1))
  stopifnot(all.equal(r2b, r2))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Ties: a 4x4 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1:4,2:5,3:6,4:7)+0.1, nrow=4, ncol=4)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  cat("rowMads():\n")
  r0 <- rowMads_R(x, na.rm=TRUE)
  r1 <- rowMads(x, na.rm=TRUE)
  r2 <- colMads(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  cat("colMads():\n")
  r0 <- colMads_R(x, na.rm=TRUE)
  r1 <- colMads(x, na.rm=TRUE)
  r2 <- rowMads(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# No ties: a 3x3 matrix with an NA value
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(c(1,2,3,2,3,4,3,4,5)+0.1, nrow=3, ncol=3)
  x[2,2] <- NA_real_

  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  cat("rowMads():\n")
  r0 <- rowMads_R(x, na.rm=TRUE)
  r1 <- rowMads(x, na.rm=TRUE)
  r2 <- colMads(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))

  cat("colMads():\n")
  r0 <- colMads_R(x, na.rm=TRUE)
  r1 <- colMads(x, na.rm=TRUE)
  r2 <- rowMads(t(x), na.rm=TRUE)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}




# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (addNA in c(FALSE, TRUE)) {
  cat("addNA=", addNA, "\n", sep="")

  x <- matrix(1:100, nrow=20, ncol=5)
  if (addNA) {
    x[13:17,c(2,4)] <- NA_real_
  }

  # Row/column ranges
  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")

    cat("rowMads():\n")
    r0 <- rowMads_R(x, na.rm=na.rm)
    r1 <- rowMads(x, na.rm=na.rm)
    r2 <- colMads(t(x), na.rm=na.rm)
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r1, r2))

    cat("colMads():\n")
    r0 <- colMads_R(x, na.rm=na.rm)
    r1 <- colMads(x, na.rm=na.rm)
    r2 <- rowMads(t(x), na.rm=na.rm)
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
    stopifnot(all.equal(r1, r2))
  }
} # for (addNA ...)




# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(NA_real_, nrow=20, ncol=5)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")

  r0 <- rowMads_R(x, na.rm=na.rm)
  if (na.rm) r0[is.na(r0)] <- NaN
  r1 <- rowMads(x, na.rm=na.rm)
  r2 <- colMads(t(x), na.rm=na.rm)
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  stopifnot(all.equal(r1, r2))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow=1, ncol=1)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  r0 <- rowMads_R(x, na.rm=na.rm)
  r1 <- rowMads(x, na.rm=na.rm)
  r2 <- colMads(t(x), na.rm=na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 0x0 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(double(0), nrow=0, ncol=0)
for (na.rm in c(FALSE, TRUE)) {
  cat("na.rm=", na.rm, "\n", sep="")
  r0 <- rowMads_R(x, na.rm=na.rm)
  r1 <- rowMads(x, na.rm=na.rm)
  r2 <- colMads(t(x), na.rm=na.rm)
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
for (rows in indexCases) {
  for (cols in indexCases) {
    for (na.rm in c(TRUE, FALSE)) {
      validateIndicesTestMatrix(x, rows, cols, ftest=rowMads, fsure=rowMads_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, ftest=rowMads_center, fsure=rowMads_R, na.rm=na.rm)

      validateIndicesTestMatrix(x, rows, cols, fcolTest=colMads, fsure=rowMads_R, na.rm=na.rm)
      validateIndicesTestMatrix(x, rows, cols, fcolTest=colMads_center, fsure=rowMads_R, na.rm=na.rm)
    }
  }
}
