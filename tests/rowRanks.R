library("matrixStats")

set.seed(1)

cat("Consistency checks:\n")
x <- vector('list', 4)
for (kk in 1:4) {
  
  # Simulate data in a matrix of any shape - store in list
  dim <- sample(40:80, size = 2L)
  n <- prod(dim)
  x[[kk]] <- rnorm(n, sd = 10)
  dim(x[[kk]]) <- dim
  
  # Add NAs?
  if ((kk %% 4) %in% c(3, 0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size = 1L)
    x[[kk]][sample(length(x[[kk]]), size = nna)] <- NA_real_
  }
  
  # Integer or double?
  if ((kk %% 4) %in% c(2, 0)) {
    cat("Coercing to integers\n")
    storage.mode(x[[kk]]) <- "integer"
  }
} # for (kk ...)
str(x)

for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep = "")
  for (ties in c("max", "min", "average", "first", "last")) {
    cat(sprintf("ties.method = %s\n", ties))
    # rowRanks():
    y1 <- matrixStats::rowRanks(x[[kk]], ties.method = ties)
    y2 <- t(apply(x[[kk]], MARGIN = 1L, FUN = rank, na.last = "keep",
                  ties.method = ties))
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::colRanks(t(x[[kk]]), ties.method = ties)
    stopifnot(identical(y1, y3))
    
    # colRanks():
    y1 <- matrixStats::colRanks(x[[kk]], ties.method = ties)
    y2 <- t(apply(x[[kk]], MARGIN = 2L, FUN = rank, na.last = "keep",
                  ties.method = ties))
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::rowRanks(t(x[[kk]]), ties.method = ties)
    stopifnot(identical(y1, y3))
  }
} # for (kk ...)

cat("Consistency checks for random:\n")
for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep = "")
  
  for (ties in c("random")) {
    cat(sprintf("ties.method = %s\n", ties))
    # rowRanks():
    y1 <- matrixStats::rowRanks(x[[kk]], ties.method = ties)
    y2min <- t(apply(x[[kk]], MARGIN = 1L, FUN = rank, na.last = "keep",
                     ties.method = "min"))
    y2max <- t(apply(x[[kk]], MARGIN = 1L, FUN = rank, na.last = "keep",
                     ties.method = "max"))
    stopifnot(all(y1 >= y2min, na.rm = TRUE) && all(y1 <= y2max, na.rm = TRUE))
    y1list <- Map(function(...) matrixStats::rowRanks(x[[kk]], ties.method = ties), 1:10000)
    y1mean <- Reduce(`+`, y1list) / length(y1list)
    y2avg <- t(apply(x[[kk]], MARGIN = 1L, FUN = rank, na.last = "keep",
                     ties.method = "average"))
    stopifnot(!(abs(y1mean - y2avg) < 0.1) %in% FALSE)
    
    y3min <- matrixStats::colRanks(t(x[[kk]]), ties.method = 'min')
    y3max <- matrixStats::colRanks(t(x[[kk]]), ties.method = 'max')
    stopifnot(all(y1 >= y3min, na.rm = TRUE) && all(y1 <= y3max, na.rm = TRUE))
    y3avg <- matrixStats::colRanks(t(x[[kk]]), ties.method = 'average')
    stopifnot(!(abs(y1mean - y3avg) < 0.1) %in% FALSE)
    # colRanks():
    y1 <- matrixStats::colRanks(x[[kk]], ties.method = ties)
    y2min <- t(apply(x[[kk]], MARGIN = 2L, FUN = rank, na.last = "keep",
                     ties.method = "min"))
    y2max <- t(apply(x[[kk]], MARGIN = 2L, FUN = rank, na.last = "keep",
                     ties.method = "max"))
    stopifnot(all(y1 >= y2min, na.rm = TRUE) && all(y1 <= y2max, na.rm = TRUE))
    y1list <- Map(function(...) matrixStats::colRanks(x[[kk]], ties.method = ties), 1:10000)
    y1mean <- Reduce(`+`, y1list) / length(y1list)
    y2avg <- t(apply(x[[kk]], MARGIN = 2L, FUN = rank, na.last = "keep",
                     ties.method = "average"))
    stopifnot(!(abs(y1mean - y2avg) < 0.1) %in% FALSE)
    
    y3min <- matrixStats::rowRanks(t(x[[kk]]), ties.method = "min")
    y3max <- matrixStats::rowRanks(t(x[[kk]]), ties.method = "max")
    stopifnot(all(y1 >= y3min, na.rm = TRUE) && all(y1 <= y3max, na.rm = TRUE))
    y3avg <- matrixStats::rowRanks(t(x[[kk]]), ties.method = "average")
    stopifnot(!(abs(y1mean - y3avg) < 0.1) %in% FALSE)
  }
} # for (kk ...)

cat("Consistency checks for dense:\n")

dense_rank <- function(x){
  ans <- rank(x, na.last = "keep", ties.method = "min")
  #squeeze the ranks to make them "dense"
  r <- 2L
  while (any(ans > r, na.rm = TRUE)) {
    if (length(ans[ans %in% r]) == 0) {
      ans[!is.na(ans) & ans > r] <- ans[!is.na(ans) & ans > r] - 1L
    } else {
      r <- r + 1L
    }
  }
  ans
}

for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep = "")
  for (ties in c("dense")) {
    cat(sprintf("ties.method = %s\n", ties))
    # rowRanks():
    y1 <- matrixStats::rowRanks(x[[kk]], ties.method = ties)
    y2 <- t(apply(x[[kk]], MARGIN = 1L, FUN = dense_rank))
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::colRanks(t(x[[kk]]), ties.method = ties)
    stopifnot(identical(y1, y3))
    
    # colRanks():
    y1 <- matrixStats::colRanks(x[[kk]], ties.method = ties)
    y2 <- t(apply(x[[kk]], MARGIN = 2L, FUN = dense_rank))
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::rowRanks(t(x[[kk]]), ties.method = ties)
    stopifnot(identical(y1, y3))
  }
} # for (kk ...)


## Exception handling
m <- matrix(1:12, nrow = 3L)
y <- try(rowRanks(m, ties.method = "unknown"), silent = TRUE)
stopifnot(inherits(y, "try-error"))

y <- try(colRanks(m, ties.method = "unknown"), silent = TRUE)
stopifnot(inherits(y, "try-error"))
