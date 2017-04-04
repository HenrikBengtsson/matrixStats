library("matrixStats")

x <- matrix(1:27, ncol = 3)

idxs <- 1L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[, idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- 2L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[, idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- c(1, 1, 1, 1, 1, 3, 3, 3, 3)
y <- rowCollapse(x, idxs)
stopifnot(identical(y, c(x[1:5, 1], x[6:9, 3])))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))

idxs <- 1:3
y <- rowCollapse(x, idxs)
print(y)
y_truth <- c(x[1, 1], x[2, 2], x[3, 3], x[4, 1], x[5, 2],
             x[6, 3], x[7, 1], x[8, 2], x[9, 3])
stopifnot(identical(y, y_truth))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))
