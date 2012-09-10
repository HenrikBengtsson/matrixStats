library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Local functions
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
psortKM0 <- function(x, k, m) {
  x <- sort(x)
  x[(k-m+1):k]
} # psortKM0()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

cat("Consistency checks:\n")
x <- 1:1000
x[498:500] <- 500
y <- sample(x)
cat("x:\n")
str(x)
cat("sample(x):\n")
str(y)

for (k in c(1, 2, 500, 501, length(x))) {
  for (m in 1:min(5,k)) {
    px0 <- psortKM0(x, k=k, m=m)
    px <- matrixStats:::.psortKM(x, k=k, m=m)
    cat(sprintf(".psortKM(x, k=%d, m=%d):\n", k, m))
    print(px)
    stopifnot(identical(px, px0))
  
    py0 <- psortKM0(y, k=k, m=m)
    py <- matrixStats:::.psortKM(y, k=k, m=m)
    cat(sprintf(".psortKM(y, k=%d, m=%d):\n", k, m))
    print(py)
    stopifnot(identical(py, py0))
    stopifnot(identical(py, px))
  } # for (m ...)
} # for (k ...)
