library("matrixStats")

nrow <- 6L
ncol <- 5L
data <- matrix(0:4, nrow = nrow, ncol = ncol)

# To check names attribute
dimnames <- list(letters[1:6], LETTERS[1:5])

modes <- c("integer", "logical", "raw")
for (mode in modes) {
  cat(sprintf("Mode: %s...\n", mode))

  x <- data
  if (mode == "logical") x <- x - 2L
  if (mode != "raw") x[c(2,5,7)] <- NA_integer_
  storage.mode(x) <- mode
  print(x)

  unique_values <- unique(as.vector(x))
  nbr_of_unique_values <- length(unique_values)

  y <- rowTabulates(x)
  print(y)
  stopifnot(
    identical(dim(y), c(nrow, nbr_of_unique_values)),
    all(y >= 0)
  )
  if (mode != "raw") {
    y0 <- t(table(x, row(x), useNA = "always")[, seq_len(nrow(x))])
    stopifnot(all(y == y0))
  }
  # Check names attribute
  dimnames(x) <- dimnames
  y1 <- rowTabulates(x, useNames = FALSE)
  stopifnot(all.equal(y1, y))
  y <- rowTabulates(x, useNames = TRUE)
  stopifnot(identical(rownames(y), rownames(x)))
  dimnames(x) <- NULL

  y <- colTabulates(x)
  print(y)
  stopifnot(
    identical(dim(y), c(ncol, nbr_of_unique_values)),
    all(y >= 0)
  )
  if (mode != "raw") {
    y0 <- t(table(x, col(x), useNA = "always")[, seq_len(ncol(x))])
    stopifnot(all(y == y0))
  }
  # Check names attribute
  dimnames(x) <- dimnames
  y1 <- colTabulates(x, useNames = FALSE)
  stopifnot(all.equal(y1, y))
  y <- colTabulates(x, useNames = TRUE)
  stopifnot(identical(rownames(y), colnames(x)))
  dimnames(x) <- NULL

  # Count only certain values
  if (mode == "integer") {
    subset <- c(0:2, NA_integer_)
  } else if (mode == "logical") {
    subset <- c(TRUE, FALSE, NA)
  } else {
    subset <- c(0:2)
  }
  y <- rowTabulates(x, values = subset)
  print(y)
  stopifnot(identical(dim(y), c(nrow, length(subset))))
  # Check names attribute
  dimnames(x) <- dimnames
  y1 <- rowTabulates(x, values = subset, useNames = FALSE)
  stopifnot(all.equal(y1, y))
  y <- rowTabulates(x, values = subset, useNames = TRUE)
  stopifnot(identical(rownames(y), rownames(x)))
  dimnames(x) <- NULL

  y <- colTabulates(x, values = subset)
  print(y)
  stopifnot(identical(dim(y), c(ncol, length(subset))))
  # Check names attribute
  dimnames(x) <- dimnames
  y1 <- colTabulates(x, values = subset, useNames = FALSE)
  stopifnot(all.equal(y1, y))
  y <- colTabulates(x, values = subset, useNames = TRUE)
  stopifnot(identical(rownames(y), colnames(x)))
  dimnames(x) <- NULL

  # Raw
  if (mode %in% c("integer", "raw")) {
    subset <- c(0:2)
    
    y <- rowTabulates(x, values = as.raw(subset))
    print(y)
    stopifnot(identical(dim(y), c(nrow, length(subset))))
    # Check names attribute
    dimnames(x) <- dimnames
    y1 <- rowTabulates(x, values = as.raw(subset), useNames = FALSE)
    stopifnot(all.equal(y1, y))
    y3 <- rowTabulates(x, values = as.raw(subset), useNames = TRUE)
    stopifnot(identical(rownames(y3), rownames(x)))
    dimnames(x) <- NULL
    
    y2 <- colTabulates(t(x), values = as.raw(subset))
    print(y2)
    stopifnot(
      identical(dim(y2), c(nrow, length(subset))),
      identical(y2, y)
    )
    # Check names attribute
    dimnames(x) <- dimnames
    y1 <- colTabulates(t(x), values = as.raw(subset), useNames = FALSE)
    stopifnot(all.equal(y1, y))
    y <- colTabulates(t(x), values = as.raw(subset), useNames = TRUE)
    stopifnot(identical(rownames(y), colnames(t(x))))
    dimnames(x) <- NULL
  }

  cat(sprintf("Mode: %s...done\n", mode))
} # for (mode ...)

# Independent scalar counts keep duplicate columns, names, and missing bins.
checkBins <- function(x, keys) {
  for (byRow in c(TRUE, FALSE)) {
    count <- if (byRow) rowCounts else colCounts
    tabulate <- if (byRow) rowTabulates else colTabulates
    groups <- if (byRow) nrow(x) else ncol(x)
    expected <- matrix(0L, groups, length(keys))
    for (k in seq_along(keys)) {
      expected[, k] <- count(x, value = keys[k], na.rm = anyNA(x))
    }
    labels <- if (is.raw(keys)) paste0("0x", sprintf("%x", as.integer(keys))) else as.character(keys)
    colnames(expected) <- labels
    rn <- if (byRow) rownames(x) else colnames(x)
    if (!is.null(rn)) rownames(expected) <- rn
    stopifnot(identical(tabulate(x, values = keys), expected))
    rownames(expected) <- NULL
    stopifnot(identical(tabulate(x, values = keys, useNames = FALSE), expected))
  }
}
x <- matrix(c(NA_integer_, 0L, -17L, .Machine$integer.max, 0L, 8L),
            nrow = 2L, dimnames = list(c("a", "b"), c("x", "y", "z")))
checkBins(x, c(8L, NA_integer_, -17L, 8L, 7L, NA_integer_))
checkBins(x, c(0.9, 0, -17.3, 0))
checkBins(x[c(2L, NA_integer_, 2L), c(3L, 1L), drop = FALSE], c(0L, 8L, NA_integer_))
checkBins(x[, integer(), drop = FALSE], c(0L, 8L, 0L))
checkBins(matrix(c(TRUE, NA, FALSE, TRUE), 2L), c(2L, 0L, NA_integer_, 1L))
checkBins(matrix(as.raw(c(0, 255, 0, 7)), 2L), as.raw(c(255, 0, 7, 0)))
