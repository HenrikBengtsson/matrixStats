library("matrixStats")

x <- matrix(1:27, ncol = 3)

# To check names attribute
dimnames <- list(letters[1:9], LETTERS[1:3])

rowCollapse_R <- function(x, idxs, ..., useNames = TRUE) {
  res <- x[, idxs]
  # Preserve names attribute?
  if (!useNames) names(res) <- NULL
  res
}

idxs <- 1L
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(TRUE, FALSE)) {
    y_truth <- rowCollapse_R(x, idxs, useNames = useNames)
    y <- rowCollapse(x, idxs, useNames = useNames)
    stopifnot(identical(y, y_truth))
    y2 <- colCollapse(t(x), idxs, useNames = useNames)
    stopifnot(identical(y2, y))
  }
}

idxs <- 2L
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(TRUE, FALSE)) {
    y_truth <- rowCollapse_R(x, idxs, useNames = useNames)
    y <- rowCollapse(x, idxs, useNames = useNames)
    stopifnot(identical(y, y_truth))
    y2 <- colCollapse(t(x), idxs, useNames = useNames)
    stopifnot(identical(y2, y))
  }
}


rowCollapse_R <- function(x, idxs, ..., useNames = TRUE) {
  res <- c(x[1:5, 1], x[6:9, 3])
  # Preserve names attribute?
  if (!useNames) names(res) <- NULL
  res
}

idxs <- c(1, 1, 1, 1, 1, 3, 3, 3, 3)
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(TRUE, FALSE)) {
    y_truth <- rowCollapse_R(x, idxs, useNames = useNames)
    y <- rowCollapse(x, idxs, useNames = useNames)
    stopifnot(identical(y, y_truth))
    y2 <- colCollapse(t(x), idxs, useNames = useNames)
    stopifnot(identical(y2, y))
  }
}


rowCollapse_R <- function(x, idxs, ..., useNames = TRUE) {
  res <- c(x[1, 1], x[2, 2], x[3, 3], x[4, 1], x[5, 2],
           x[6, 3], x[7, 1], x[8, 2], x[9, 3])
  # Preserve names attribute?
  if (useNames) {
    names <- rownames(x)
    if (!is.null(names)) names(res) <- names
  }
  res
}

idxs <- 1:3
# Test with and without dimnames on x
for (setDimnames in c(TRUE, FALSE)) {
  if (setDimnames) dimnames(x) <- dimnames
  else dimnames(x) <- NULL
  # Check names attribute
  for (useNames in c(TRUE, FALSE)) {
    y_truth <- rowCollapse_R(x, idxs, useNames = useNames)
    y <- rowCollapse(x, idxs, useNames = useNames)
    stopifnot(identical(y, y_truth))
    y2 <- colCollapse(t(x), idxs, useNames = useNames)
    stopifnot(identical(y2, y))
  }
}
