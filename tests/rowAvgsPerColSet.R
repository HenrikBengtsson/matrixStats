library("matrixStats")

X <- matrix(rnorm(20*6), nrow=20, ncol=6)
rownames(X) <- LETTERS[1:nrow(X)]
colnames(X) <- letters[1:ncol(X)]
print(X)


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply rowMeans() for 3 sets of 2 columns
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 3
S <- matrix(1:ncol(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s%d", 1:nbrOfSets)
print(S)

Z <- rowAvgsPerColSet(X, S=S)
print(Z)

# Validation
Z0 <- cbind(s1=rowMeans(X[,1:2]), s2=rowMeans(X[,3:4]),
            s3=rowMeans(X[,5:6]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Apply colMeans() for 5 sets of 4 rows
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 5
S <- matrix(1:nrow(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s%d", 1:nbrOfSets)
print(S)

Z <- colAvgsPerRowSet(X, S=S)
print(Z)

# Validation
Z0 <- rbind(s1=colMeans(X[1:4,]), s2=colMeans(X[5:8,]),
            s3=colMeans(X[9:12,]), s4=colMeans(X[13:16,]),
            s5=colMeans(X[17:20,]))
stopifnot(identical(drop(Z), Z0))


# - - - - - - - - - - - - - - - - - - - - - - - - - -
# When there is only one "complete" set
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 1
S <- matrix(1:ncol(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s%d", 1:nbrOfSets)
print(S)

Z <- rowAvgsPerColSet(X, S=S, FUN=rowMeans)
print(Z)

Z0 <- rowMeans(X)
stopifnot(identical(drop(Z), Z0))


nbrOfSets <- 1
S <- matrix(1:nrow(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s%d", 1:nbrOfSets)
print(S)

Z <- colAvgsPerRowSet(X, S=S, FUN=colMeans)
print(Z)

Z0 <- colMeans(X)
stopifnot(identical(drop(Z), Z0))



# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Use weights
# - - - - - - - - - - - - - - - - - - - - - - - - - -
nbrOfSets <- 3
S <- matrix(1:ncol(X), ncol=nbrOfSets)
colnames(S) <- sprintf("s%d", 1:nbrOfSets)
print(S)

W <- matrix(runif(length(X)), nrow=nrow(X), ncol=ncol(X))
Z1 <- rowAvgsPerColSet(X, W=W, S=S, FUN=rowWeightedMeans)
print(Z1)
Z2 <- colAvgsPerRowSet(X, W=W, S=S, FUN=colWeightedMeans)
print(Z2)



# - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")
X <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
#W <- matrix(runif(6*6, min=-6, max=6), nrow=6, ncol=6)
for (rows in indexCases) {
  for (cols in indexCases) {
    if (is.null(rows)) {
      rows <- seq_len(nrow(X))
      rows. <- rows
    } else {
      rows. <- rows[is.finite(rows)]
    }

    if (is.null(cols)) {
      cols <- seq_len(ncol(X))
      cols. <- cols
    } else {
      cols. <- cols[is.finite(cols)]
    }

    suppressWarnings({
      actual <- tryCatch(rowAvgsPerColSet(X, rows=rows, S=matrix(cols, ncol=1), FUN=rowMeans), error=function(c) "error")
      expect <- tryCatch(rowMeans(X[rows,cols.,drop=FALSE], na.rm=TRUE), error=function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))

    suppressWarnings({
      actual <- tryCatch(colAvgsPerRowSet(X, cols=cols, S=matrix(rows, ncol=1), FUN=colMeans), error=function(c) "error")
      expect <- tryCatch(colMeans(X[rows.,cols,drop=FALSE], na.rm=TRUE), error=function(c) "error")
    })
    stopifnot(all.equal(as.vector(actual), expect))
  }
}
