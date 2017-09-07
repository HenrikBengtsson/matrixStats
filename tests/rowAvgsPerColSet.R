library("matrixStats")

x <- matrix(rnorm(20 * 6), nrow = 20, ncol = 6)
rownames(x) <- LETTERS[1:nrow(x)]
colnames(x) <- letters[1:ncol(x)]
print(x)


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply rowMeans() for 3 sets of 2 columns
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 3L
s <- matrix(1:ncol(x), ncol = nbr_of_sets)
colnames(s) <- sprintf("s%d", 1:nbr_of_sets)
print(s)

z <- rowAvgsPerColSet(x, S = s)
print(z)

# Validation
z0 <- cbind(s1 = rowMeans(x[, 1:2]), s2 = rowMeans(x[, 3:4]),
            s3 = rowMeans(x[, 5:6]))
stopifnot(identical(drop(z), z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply colMeans() for 5 sets of 4 rows
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 5L
s <- matrix(1:nrow(x), ncol = nbr_of_sets)
colnames(s) <- sprintf("s%d", 1:nbr_of_sets)
print(s)

z <- colAvgsPerRowSet(x, S = s)
print(z)

# Validation
z0 <- rbind(s1 = colMeans(x[1:4, ]), s2 = colMeans(x[5:8, ]),
            s3 = colMeans(x[9:12, ]), s4 = colMeans(x[13:16, ]),
            s5 = colMeans(x[17:20, ]))
stopifnot(identical(drop(z), z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# When there is only one "complete" set
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 1L
s <- matrix(1:ncol(x), ncol = nbr_of_sets)
colnames(s) <- sprintf("s%d", 1:nbr_of_sets)
print(s)

z <- rowAvgsPerColSet(x, S = s, FUN = rowMeans)
print(z)

z0 <- rowMeans(x)
stopifnot(identical(drop(z), z0))


nbr_of_sets <- 1L
s <- matrix(1:nrow(x), ncol = nbr_of_sets)
colnames(s) <- sprintf("s%d", 1:nbr_of_sets)
print(s)

z <- colAvgsPerRowSet(x, S = s, FUN = colMeans)
print(z)

z0 <- colMeans(x)
stopifnot(identical(drop(z), z0))



# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Use weights
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 3L
s <- matrix(1:ncol(x), ncol = nbr_of_sets)
colnames(s) <- sprintf("s%d", 1:nbr_of_sets)
print(s)

w <- matrix(runif(length(x)), nrow = nrow(x), ncol = ncol(x))
z1 <- rowAvgsPerColSet(x, W = w, S = s, FUN = rowWeightedMeans)
print(z1)
z2 <- colAvgsPerRowSet(x, W = w, S = s, FUN = colWeightedMeans)
print(z2)

# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Result should always be a matrix, including when nrow(X) <= 1
# (https://github.com/HenrikBengtsson/matrixStats/issues/108)
# - - - - - - - - - - - - - - - - - - - - - - - - - -
X <- matrix(1:3, nrow = 1L, ncol = 3L)
S <- matrix(1, nrow = 1L, ncol = 1L)
z1 <- rowAvgsPerColSet(X, S = S)
stopifnot(is.matrix(z1))
z2 <- rowAvgsPerColSet(X, S = S, rows = 0)
stopifnot(is.matrix(z2))
