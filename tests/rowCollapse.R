library("matrixStats")

x <- matrix(1:27, ncol = 3)

# To check names attribute
z <- x
dimnames(z) <- list(letters[1:9], LETTERS[1:3])

idxs <- 1L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[, idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))
# Check names attribute
y2 <- rowCollapse(z, idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y2 <- colCollapse(t(z), idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y <- rowCollapse(z, idxs, useNames = TRUE)
stopifnot(all.equal(y, z[, idxs]))
y2 <- colCollapse(t(z), idxs, useNames = TRUE)
stopifnot(all.equal(y2, y))

idxs <- 2L
y <- rowCollapse(x, idxs)
stopifnot(identical(y, x[, idxs]))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))
# Check names attribute
y2 <- rowCollapse(z, idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y2 <- colCollapse(t(z), idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y <- rowCollapse(z, idxs, useNames = TRUE)
stopifnot(all.equal(y, z[, idxs]))
y2 <- colCollapse(t(z), idxs, useNames = TRUE)
stopifnot(all.equal(y2, y))

idxs <- c(1, 1, 1, 1, 1, 3, 3, 3, 3)
y <- rowCollapse(x, idxs)
stopifnot(identical(y, c(x[1:5, 1], x[6:9, 3])))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))
# Check names attribute
y2 <- rowCollapse(z, idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y2 <- colCollapse(t(z), idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y <- rowCollapse(z, idxs, useNames = TRUE)
stopifnot(all.equal(y, c(z[1:5, 1], z[6:9, 3])))
y2 <- colCollapse(t(z), idxs, useNames = TRUE)
stopifnot(all.equal(y2, y))

idxs <- 1:3
y <- rowCollapse(x, idxs)
print(y)
y_truth <- c(x[1, 1], x[2, 2], x[3, 3], x[4, 1], x[5, 2],
             x[6, 3], x[7, 1], x[8, 2], x[9, 3])
stopifnot(identical(y, y_truth))
y2 <- colCollapse(t(x), idxs)
stopifnot(identical(y2, y))
# Check names attribute
y2 <- rowCollapse(z, idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y2 <- colCollapse(t(z), idxs, useNames = FALSE)
stopifnot(all.equal(y2, y))
y <- rowCollapse(z, idxs, useNames = TRUE)
print(y)
y_truth <- c(z[1, 1], z[2, 2], z[3, 3], z[4, 1], z[5, 2],
             z[6, 3], z[7, 1], z[8, 2], z[9, 3])
names(y_truth) <- rownames(z)
stopifnot(all.equal(y, y_truth))
y2 <- colCollapse(t(z), idxs, useNames = TRUE)
stopifnot(all.equal(y2, y))
