library("matrixStats")

# Empty vector
x <- integer(0)
y <- prod(x, na.rm=TRUE)
print(y)
z <- product(x, na.rm=TRUE)
print(z)
stopifnot(all.equal(z, y))

# Test missing values
x <- c(1,NA,NaN,2)
y <- prod(x, na.rm=TRUE)
print(y)
z <- product(x, na.rm=TRUE)
print(z)
stopifnot(all.equal(z, y))

x <- c(1,NA,NaN,2)
y <- prod(x, na.rm=FALSE)
print(y)
z <- product(x, na.rm=FALSE)
print(z)
stopifnot(all(is.na(z), is.na(y)))

x <- c(1,NaN,2)
y <- prod(x, na.rm=FALSE)
print(y)
stopifnot(is.na(y))
z <- product(x, na.rm=FALSE)
print(z)
stopifnot(is.na(z))


