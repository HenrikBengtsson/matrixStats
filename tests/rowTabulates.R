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


message("Allow for 'x' of type double only for some special case ...")

message(" - Allow for double, i.e. real values, when 'values' is specified")
X <- matrix(rnorm(n = 12L), nrow = 3L)
print(X)
T <- rowTabulates(X, values = X[1:3])
print(T)
T <- colTabulates(X, values = X[1:3])
print(T)

message(" - Allow for double, i.e. real values, when they are ranks")
X <- matrix(c(1, 1, 1, 1, 4, 3, 2, 4, 2, 1, 2, 2), nrow = 3L)
R <- rowRanks(X, ties.method = "average")
print(R)
T <- rowTabulates(R)
print(T)
stopifnot(any(grepl("[.]5$", colnames(T))))
T <- colTabulates(R)
print(T)
stopifnot(any(grepl("[.]5$", colnames(T))))

message(" - In all other cases, passing real values is an error")
X <- matrix(rnorm(n = 12L), nrow = 3L)
res <- tryCatch(colTabulates(X), error = identity)
print(res)
stopifnot(inherits(res, "error"))
res <- tryCatch(rowTabulates(X), error = identity)
print(res)
stopifnot(inherits(res, "error"))

message("Allow for 'x' of type double only for some special case ... done")
