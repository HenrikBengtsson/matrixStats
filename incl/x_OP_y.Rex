x <- matrix(c(1,2,3,NA,5,6), nrow=3, ncol=2)

# Add 'y' to each column
y <- 1:2
z0 <- x + y
z1 <- x_OP_y(x, y, OP="+")
print(z1)
stopifnot(all.equal(z1, z0))


# Add 'y' to each row
y <- 1:3
z0 <- t(t(x) + y)
z1 <- t_tx_OP_y(x, y, OP="+")
print(z1)
stopifnot(all.equal(z1, z0))





