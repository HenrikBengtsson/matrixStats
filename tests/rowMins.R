library("matrixStats")

x <- matrix(1:100+0.1, nrow=20, ncol=5)

m0 <- rowMins(x[,4:2], na.rm=1)
m1 <- rowMins_R(x, 2:4)
m2 <- colMins_R(t(x), 4:2)
stopifnot(all.equal(m1, m0))
stopifnot(all.equal(m1, m2))

