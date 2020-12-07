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


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Works with many, one or zero columns / rows
# (https://github.com/HenrikBengtsson/matrixStats/issues/172)
# - - - - - - - - - - - - - - - - - - - - - - - - - -
S <- cbind(1:2, 3:4, 5:6)
X <- matrix(rnorm(2 * 6), nrow = 6, ncol = 2)
Z2 <- colAvgsPerRowSet(X, S = S, FUN = colSums2)
Z2_ref <- rbind(colSums2(X[S[,1], ,drop=FALSE]),
                colSums2(X[S[,2], ,drop=FALSE]),
                colSums2(X[S[,3], ,drop=FALSE]))
stopifnot(identical(Z2, Z2_ref))
X <- matrix(rnorm(6), nrow = 6, ncol = 1)
Z1 <- colAvgsPerRowSet(X, S = S, FUN = colSums2)
Z1_ref <- rbind(colSums2(X[S[,1], ,drop=FALSE]),
                colSums2(X[S[,2], ,drop=FALSE]),
                colSums2(X[S[,3], ,drop=FALSE]))
stopifnot(identical(Z1, Z1_ref))
X <- matrix(numeric(0), nrow = 6, ncol = 0)
Z0 <- colAvgsPerRowSet(X, S = S, FUN = colSums2)
Z0_ref <- matrix(numeric(0), nrow = ncol(S), ncol = 0)
stopifnot(identical(Z0, unname(Z0_ref)))


S <- rbind(1:4, 5:8)
X <- matrix(rnorm(n = 2 * 8), nrow = 2, ncol = 8)
Z2 <- rowAvgsPerColSet(X, S = S, FUN = rowMeans2)
Z2_ref <- cbind(rowMeans2(X[,S[,1],drop=FALSE]),
                rowMeans2(X[,S[,2],drop=FALSE]),
                rowMeans2(X[,S[,3],drop=FALSE]),
                rowMeans2(X[,S[,4],drop=FALSE]))
stopifnot(identical(Z2, Z2_ref))
X <- matrix(rnorm(n = 8), nrow = 1, ncol = 8)
Z1 <- rowAvgsPerColSet(X, S = S, FUN = rowMeans2)
Z1_ref <- cbind(rowMeans2(X[,S[,1],drop=FALSE]),
                rowMeans2(X[,S[,2],drop=FALSE]),
                rowMeans2(X[,S[,3],drop=FALSE]),
                rowMeans2(X[,S[,4],drop=FALSE]))
stopifnot(identical(Z1, Z1_ref))
X <- matrix(numeric(0), nrow = 0, ncol = 8)
Z0 <- rowAvgsPerColSet(X, S = S, FUN = rowMeans2)
Z0_ref <- matrix(numeric(0), nrow = 0, ncol = ncol(S))
stopifnot(identical(Z0, Z0_ref))
