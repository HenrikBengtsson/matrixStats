library("matrixStats")

# Empty vector
x <- integer(0)
y <- prod(x, na.rm=TRUE)
print(y)
z <- product(x, na.rm=TRUE)
print(z)
stopifnot(identical(z, y))

# Test missing values
x <- c(1,NA,NaN,2)
y <- prod(x, na.rm=TRUE)
print(y)
z <- product(x, na.rm=TRUE)
print(z)
stopifnot(identical(z, y))

x <- c(1,NA,NaN,2)
y <- prod(x, na.rm=FALSE)
print(y)
z <- product(x, na.rm=FALSE)
print(z)
stopifnot(identical(z, y))

x <- c(1,NaN,2)
y <- prod(x, na.rm=FALSE)
print(y)
stopifnot(identical(y, NaN))
z <- product(x, na.rm=FALSE)
print(z)
stopifnot(identical(z, NA_real_))
stopifnot(!identical(z, y))
