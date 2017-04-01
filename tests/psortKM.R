library("matrixStats")
library("utils")  ## utils::str

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
psortKM_R <- function(x, k, m) {
  x <- sort(x)
  x[(k - m + 1):k]
}

psortKM_R2 <- function(x, k, m) {
  partial <- (k - m + 1):k
  x <- sort.int(x, partial = partial)
  x[partial]
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

cat("Consistency checks:\n")
x <- 1:500
x[298:300] <- 300
y <- sample(x)
cat("x:\n")
str(x)
cat("sample(x):\n")
str(y)

for (k in c(1, 2, 300, 301, length(x))) {
  for (m in 1:min(5, k)) {
    px0 <- psortKM_R(x, k = k, m = m)
    px0b <- psortKM_R2(x, k = k, m = m)
    stopifnot(identical(px0b, px0))
    px1 <- matrixStats:::.psortKM(x, k = k, m = m)
    cat(sprintf(".psortKM(x, k = %d, m = %d):\n", k, m))
    print(px1)
    stopifnot(identical(px1, px0))

    py0 <- psortKM_R(y, k = k, m = m)
    py0b <- psortKM_R2(y, k = k, m = m)
    stopifnot(identical(py0b, py0))
    py1 <- matrixStats:::.psortKM(y, k = k, m = m)
    cat(sprintf(".psortKM(y, k = %d, m = %d):\n", k, m))
    print(py1)
    stopifnot(identical(py1, py0))
    stopifnot(identical(py1, px1))
  } # for (m ...)
} # for (k ...)
