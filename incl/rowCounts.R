x <- matrix(0:11, nrow = 4, ncol = 3)
x[2:3, 2:3] <- 2:5
x[3, 3] <- NA_integer_
print(x)

print(rowCounts(x, value = 2))
## [1]  0  1 NA  0
print(colCounts(x, value = 2))
## [1]  1  1 NA
print(colCounts(x, value = NA_integer_))
## [1] 0 0 1

print(rowCounts(x, value = 2, na.rm = TRUE))
## [1] 0 1 1 0
print(colCounts(x, value = 2, na.rm = TRUE))
## [1] 1 1 0

print(rowAnys(x, value = 2))
## [1] FALSE  TRUE  TRUE FALSE
print(rowAnys(x, value = NA_integer_))
## [1] FALSE FALSE  TRUE FALSE

print(colAnys(x, value = 2))
## [1] TRUE TRUE   NA
print(colAnys(x, value = 2, na.rm = TRUE))
## [1]  TRUE  TRUE FALSE

print(colAlls(x, value = 2))
## [1] FALSE FALSE FALSE
