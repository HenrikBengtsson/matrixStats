library("matrixStats")

X <- matrix(rnorm(20 * 6), nrow = 20, ncol = 6)
rownames(X) <- LETTERS[1:nrow(X)]
colnames(X) <- letters[1:ncol(X)]
print(X)


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply rowMeans() for 3 sets of 2 columns
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 3L
S <- matrix(1:ncol(X), ncol = nbr_of_sets)
colnames(S) <- sprintf("s%d", 1:nbr_of_sets)
print(S)

Z <- rowAvgsPerColSet(X, S = S)
print(Z)

# Validation
Z0 <- cbind(s1 = rowMeans(X[, 1:2]), s2 = rowMeans(X[, 3:4]),
            s3 = rowMeans(X[, 5:6]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply colMeans() for 5 sets of 4 rows
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 5L
S <- matrix(1:nrow(X), ncol = nbr_of_sets)
colnames(S) <- sprintf("s%d", 1:nbr_of_sets)
print(S)

Z <- colAvgsPerRowSet(X, S = S)
print(Z)

# Validation
Z0 <- rbind(s1 = colMeans(X[1:4, ]), s2 = colMeans(X[5:8, ]),
            s3 = colMeans(X[9:12, ]), s4 = colMeans(X[13:16, ]),
            s5 = colMeans(X[17:20, ]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# When there is only one "complete" set
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 1L
S <- matrix(1:ncol(X), ncol = nbr_of_sets)
colnames(S) <- sprintf("s%d", 1:nbr_of_sets)
print(S)

Z <- rowAvgsPerColSet(X, S = S, FUN = rowMeans)
print(Z)

Z0 <- rowMeans(X)
stopifnot(identical(drop(Z), Z0))


nbr_of_sets <- 1L
S <- matrix(1:nrow(X), ncol = nbr_of_sets)
colnames(S) <- sprintf("s%d", 1:nbr_of_sets)
print(S)

Z <- colAvgsPerRowSet(X, S = S, FUN = colMeans)
print(Z)

Z0 <- colMeans(X)
stopifnot(identical(drop(Z), Z0))



# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Use weights
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbr_of_sets <- 3L
S <- matrix(1:ncol(X), ncol = nbr_of_sets)
colnames(S) <- sprintf("s%d", 1:nbr_of_sets)
print(S)

W <- matrix(runif(length(X)), nrow = nrow(X), ncol = ncol(X))
Z1 <- rowAvgsPerColSet(X, W = W, S = S, FUN = rowWeightedMeans)
print(Z1)
Z2 <- colAvgsPerRowSet(X, W = W, S = S, FUN = colWeightedMeans)
print(Z2)

# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Result should always be a matrix, including when nrow(X) <= 1
# (https://github.com/HenrikBengtsson/matrixStats/issues/108)
# - - - - - - - - - - - - - - - - - - - - - - - - - -
X <- matrix(1:3, nrow = 1L, ncol = 3L)
S <- matrix(1, nrow = 1L, ncol = 1L)
Z1 <- rowAvgsPerColSet(X, S = S)
stopifnot(is.matrix(Z1))
Z2 <- rowAvgsPerColSet(X, S = S, rows = 0)
stopifnot(is.matrix(Z2))
