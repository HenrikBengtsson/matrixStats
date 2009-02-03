set.seed(1)

x <- matrix(rnorm(20), nrow=5, ncol=4)
print(x)

# Row averages
print(rowMeans(x))
print(rowMedians(x))

# Column averages
print(colMeans(x))
print(colMedians(x))


# Row variabilities
print(rowVars(x))
print(rowSds(x))
print(rowMads(x))
print(rowIQRs(x))

# Column variabilities
print(rowVars(x))
print(colSds(x))
print(colMads(x))
print(colIQRs(x))


# Row ranges
print(rowRanges(x))
print(cbind(rowMins(x), rowMaxs(x)))
print(cbind(rowOrderStats(x, 1), rowOrderStats(x, ncol(x))))

# Column ranges
print(colRanges(x))
print(cbind(colMins(x), colMaxs(x)))
print(cbind(colOrderStats(x, 1), colOrderStats(x, nrow(x))))


x <- matrix(rnorm(2400), nrow=50, ncol=40)

# Row standard deviations
d <- rowDiffs(x)
s1 <- rowSds(d)/sqrt(2)
s2 <- rowSds(x)
print(summary(s1-s2))

# Column standard deviations
d <- colDiffs(x)
s1 <- colSds(d)/sqrt(2)
s2 <- colSds(x)
print(summary(s1-s2))
