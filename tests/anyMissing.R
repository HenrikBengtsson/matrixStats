library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Setup
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
data <- data.frame(
  logical = c(TRUE, FALSE, TRUE, FALSE),
  integer = 1:4,
  double = seq(from = 1.0, to = 4.0, by = 1.0),
  complex = seq(from = 1.0, to = 4.0, by = 1.0) + 1.0i,
  character = I(letters[1:4])
)

modes <- names(data)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("NULL...\n")
stopifnot(identical(anyMissing(NULL), FALSE))
cat("NULL...done\n")

cat("raw...\n")
stopifnot(identical(anyMissing(as.raw(0:3)), FALSE))
cat("raw...done\n")

cat("list(NULL)...\n")
stopifnot(identical(anyMissing(list(NULL)), FALSE))
cat("list(NULL)...done\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Scalars, vectors, and matrices of various modes
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in modes) {
  cat(sprintf("Mode: %s...\n", mode))
  values <- data[[mode]]

  # Scalars
  cat(" scalar\n")
  x <- values[1L]
  print(x)
  stopifnot(identical(anyMissing(x), FALSE))
  is.na(x) <- TRUE
  print(x)
  stopifnot(identical(anyMissing(x), TRUE))

  # Vectors
  cat(" vector\n")
  x <- values
  print(x)
  stopifnot(identical(anyMissing(x), FALSE))
  is.na(x)[2L] <- TRUE
  print(x)
  stopifnot(identical(anyMissing(x), TRUE))

  # Matrices
  cat(" matrix\n")
  x <- matrix(c(values, values), ncol = 2L)
  print(x)
  stopifnot(identical(anyMissing(x), FALSE))
  is.na(x)[2L] <- TRUE
  print(x)
  stopifnot(identical(anyMissing(x), TRUE))

  cat(sprintf("Mode: %s...done\n", mode))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data frames
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("data.frame...\n")
x <- data
stopifnot(identical(anyMissing(x), FALSE))
for (mode in modes) {
  x <- data
  is.na(x[[mode]])[2L] <- TRUE
  print(x)
  stopifnot(identical(anyMissing(x), TRUE))
} # for (mode ...)
cat("data.frame...done\n")


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Lists
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
cat("list...\n")
x <- as.list(data)
stopifnot(identical(anyMissing(x), FALSE))
for (mode in modes) {
  x <- as.list(data)
  is.na(x[[mode]])[2L] <- TRUE
  print(x)
  stopifnot(identical(anyMissing(x), TRUE))
} # for (mode ...)
cat("list...done\n")
