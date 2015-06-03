library("matrixStats")

x <- matrix(1:27, ncol=3)

idxs <- 1L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[,idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- 2L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[,idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- c(1,1,1,1,1,3,3,3,3)
y <- rowCollapse(x, idxs)
stopifnot(identical(y, c(x[1:5,1], x[6:9,3])))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- 1:3
y <- rowCollapse(x, idxs)
print(y)
yT <- c(x[1,1],x[2,2],x[3,3],x[4,1],x[5,2],x[6,3],x[7,1],x[8,2],x[9,3])
stopifnot(identical(y, yT))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rowCollapse_R <- function(x, idxs, ...) {
  ans <- c()
  storage.mode(ans) <- storage.mode(x)
  for (ii in seq_len(length(idxs))) {
    ans[ii] <- x[ii,idxs[ii]]
  }
  ans
}

source("utils/validateIndicesFramework.R")
x <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
storage.mode(x) <- "integer"
idxs <- seq_len(6)
for (rows in indexCases) {
  if (is.null(rows)) rows <- seq_len(nrow(x))

  suppressWarnings({
    actual <- tryCatch(rowCollapse(x, idxs, rows=rows), error=function(c) "error")
    expect <- tryCatch(rowCollapse_R(x[rows,,drop=FALSE], idxs[rows]), error=function(c) "error")
  })
  stopifnot(all.equal(actual, expect))

  suppressWarnings({
    actual <- tryCatch(colCollapse(t(x), idxs, cols=rows), error=function(c) "error")
  })
  stopifnot(all.equal(actual, expect))
}
