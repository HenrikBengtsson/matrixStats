x <- matrix(1:12, nrow=4, ncol=3)
print(x)

yr <- rowCumsums(x)
print(yr)

yc <- colCumsums(x)
print(yc)
