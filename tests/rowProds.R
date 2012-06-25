library("matrixStats")

x <- matrix(c(1,1,1,1, 1,0,1,0), nrow=4, ncol=2)
y <- rowProds(x)
stopifnot(identical(y, x[,1]*x[,2]))
