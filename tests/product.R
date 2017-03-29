library("matrixStats")

for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep = "")

  # Empty vector
  x <- 0
  storage.mode(x) <- mode
  y <- prod(x, na.rm = TRUE)
  print(y)
  z <- product(x, na.rm = TRUE)
  print(z)
  stopifnot(all.equal(z, y))

  # Test negative values
  x <- c(1, -4, 2)
  storage.mode(x) <- mode
  y <- prod(x, na.rm = TRUE)
  print(y)
  z <- product(x, na.rm = TRUE)
  print(z)
  stopifnot(all.equal(z, y))

  # Test missing values
  x <- c(1, NA, NaN, 2)
  storage.mode(x) <- mode
  y <- prod(x, na.rm = TRUE)
  print(y)
  z <- product(x, na.rm = TRUE)
  print(z)
  stopifnot(all.equal(z, y))

  x <- c(1, NA, NaN, 2)
  storage.mode(x) <- mode
  y <- prod(x, na.rm = FALSE)
  print(y)
  z <- product(x, na.rm = FALSE)
  print(z)
  stopifnot(all(is.na(z), is.na(y)))

  x <- c(1, NaN, 2)
  storage.mode(x) <- mode
  y <- prod(x, na.rm = FALSE)
  print(y)
  stopifnot(is.na(y))
  z <- product(x, na.rm = FALSE)
  print(z)
  stopifnot(is.na(z))

} # for (mode ...)


# NAs following 0s
x <- c(0L, NA_integer_)
y <- prod(x, na.rm = FALSE)
print(y)
z <- product(x, na.rm = FALSE)
print(z)
stopifnot(identical(z, y))
