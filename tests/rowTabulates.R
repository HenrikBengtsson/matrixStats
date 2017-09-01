library("matrixStats")

nrow <- 6L
ncol <- 5L
data <- matrix(0:4, nrow = nrow, ncol = ncol)

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

  y <- colTabulates(x)
  print(y)
  stopifnot(
    identical(dim(y), c(ncol, nbr_of_unique_values)),
    all(y >= 0)
  )

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

  y <- colTabulates(x, values = subset)
  print(y)
  stopifnot(identical(dim(y), c(ncol, length(subset))))

  # Raw
  if (mode %in% c("integer", "raw")) {
    subset <- c(0:2)
    y <- rowTabulates(x, values = as.raw(subset))
    print(y)
    stopifnot(identical(dim(y), c(nrow, length(subset))))
  
    y2 <- colTabulates(t(x), values = as.raw(subset))
    print(y2)
    stopifnot(
      identical(dim(y2), c(nrow, length(subset))),
      identical(y2, y)
    )
  }

  cat(sprintf("Mode: %s...done\n", mode))
} # for (mode ...)
