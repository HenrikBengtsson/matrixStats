library("matrixStats")

# Test missing values
x <- matrix(c(1,NA,NaN,1, 1,0,1,0), nrow=4, ncol=2)
y <- rowProds(x, na.rm=TRUE)
print(y)
stopifnot(identical(y, x[,2]))

y <- rowProds(x, na.rm=FALSE)
print(y)
stopifnot(identical(y, x[,1]*x[,2]))


# Bug report 2012-06-25
x <- matrix(c(1,1,1,1, 1,0,1,0), nrow=4, ncol=2)
y <- rowProds(x)
print(y)
stopifnot(identical(y, x[,1]*x[,2]))
