set.seed(1)

x <- matrix(rnorm(50*40), nrow=50, ncol=40)
str(x)

# Row IQRs
q <- rowIQRs(x)
print(q)
q0 <- apply(x, MARGIN=1, FUN=IQR)
stopifnot(all.equal(q0, q))

# Column IQRs
q <- colIQRs(x)
print(q)
q0 <- apply(x, MARGIN=2, FUN=IQR)
stopifnot(all.equal(q0, q))
