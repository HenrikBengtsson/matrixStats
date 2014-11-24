library("matrixStats")

x <- matrix(1:12+0, nrow=4, ncol=3)
y <- 1:4+0

a0 <- x * y
a1 <- x_OP_y(x,y, FUN="*", na.rm=TRUE)
a2 <- .Call("x_OP_y", as.numeric(x), as.numeric(y), dim(x), FALSE, TRUE, package="matrixStats")

