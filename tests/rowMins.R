library("matrixStats")
# When R CMD check runs tests, it sets R_TESTS. When the tests
# themeselves run R CMD xxxx, as is the case with the tests in
# devtools, having R_TESTS set causes errors because it confuses
# the R subprocesses. Unsetting it here avoids those problems.
Sys.setenv("R_TESTS" = "")

# Test for Integer
x <- matrix(1:100+0.1, nrow=20, ncol=5)
m0 <- rowMins(x[,4:2], na.rm=1)
m1 <- rowMins_R(x, 2:4)
m2 <- colMins_R(t(x), 4:2)
m3 <- rowMins_C(x, 4:2)
m4 <- colMins_C(t(x), 2:4)
stopifnot(all.equal(m0, m1))
stopifnot(all.equal(m0, m2))
stopifnot(all.equal(m0, m3))
stopifnot(all.equal(m0, m4))

# Test for Real
x <- matrix(1:100, nrow=20, ncol=5)
m0 <- rowMins(x[,4:2], na.rm=1)
m1 <- rowMins_R(x, 2:4)
m2 <- colMins_R(t(x), 4:2)
m3 <- rowMins_C(x, 4:2)
m4 <- colMins_C(t(x), 2:4)
stopifnot(all.equal(m0, m1))
stopifnot(all.equal(m0, m2))
stopifnot(all.equal(m0, m3))
stopifnot(all.equal(m0, m4))

# Test with sapply
X <- matrix(1:50, nrow = 5, ncol = 10)
factors <- as.factor(c(3,1,1,2,2,1,1,2,3,1))
groups <- split(seq(along=factors), factors)
Y0 <- sapply(groups, FUN=function(idxs) rowMins(X[,idxs]))
Y1 <- sapply(groups, FUN=function(idxs) rowMins_C(X, cols=idxs))
stopifnot(all.equal(Y0, Y1))

