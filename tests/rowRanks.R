library("matrixStats")

dense_rank <- function(x) match(x, table = sort(unique(x)))

rowRanks_R <- function(x, ties.method, ..., useNames = TRUE) {
  if (ties.method == "dense") {
    res <- t(apply(x, MARGIN = 1L, FUN = dense_rank))
  } else {
    res <- t(apply(x, MARGIN = 1L, FUN = rank, na.last = "keep", ties.method = ties.method))
  }
  
  # Preserve dimnames attribute?
  dim(res) <- dim(x)
  dimnames(res) <- if (useNames) dimnames(x) else NULL
  
  res
}

colRanks_R <- function(x, ties.method, preserveShape = FALSE, ..., useNames = TRUE) {
  if (ties.method == "dense") {
    res <- t(apply(x, MARGIN = 2L, FUN = dense_rank))
  } else {
    res <- t(apply(x, MARGIN = 2L, FUN = rank, na.last = "keep", ties.method = ties.method))
  }
  
  # Preserve dimnames attribute?
  tx <- t(x)
  dim(res) <- dim(tx)
  dimnames(res) <- if (useNames) dimnames(tx) else NULL
  
  if (preserveShape) res <- t(res)
  res
}

set.seed(1)

cat("Consistency checks:\n")
xs <- vector("list", length = 4L)
for (kk in 1:4) {
  
  # Simulate data in a matrix of any shape
  dim <- sample(40:80, size = 2L)
  n <- prod(dim)
  x <- rnorm(n, sd = 10)
  dim(x) <- dim
  
  # Add NAs?
  if ((kk %% 4) %in% c(3, 0)) {
    cat("Adding NAs\n")
    nna <- sample(n, size = 1L)
    x[sample(length(x), size = nna)] <- NA_real_
  }
  
  # Integer or double?
  if ((kk %% 4) %in% c(2, 0)) {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  xs[[kk]] <- x
} # for (kk ...)
str(xs)

for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep = "")
  x <- xs[[kk]]
  tx <- t(x)
  
  for (ties in c("max", "min", "average", "first", "last", "dense")) {
    cat(sprintf("ties.method = %s\n", ties))
    # rowRanks():
    y1 <- matrixStats::rowRanks(x, ties.method = ties)
    y2 <- rowRanks_R(x, ties.method = ties)
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::colRanks(tx, ties.method = ties)
    stopifnot(identical(y1, y3))
    
    # colRanks():
    y1 <- matrixStats::colRanks(x, ties.method = ties)
    y2 <- colRanks_R(x, ties.method = ties)
    stopifnot(identical(y1, y2))
    
    y3 <- matrixStats::rowRanks(tx, ties.method = ties)
    stopifnot(identical(y1, y3))
  }
} # for (kk ...)

# Note, below we know ties.method %in% c("min", "max", "average") is correct

cat("Consistency checks for random:\n")
tolerance <- 0.1
nsamples <- 10000
for (kk in 1:4) {
  cat("Random test #", kk, "\n", sep = "")
  x <- xs[[kk]]
  tx <- t(x)

  for (ties in c("random")) {
    cat(sprintf("ties.method = %s\n", ties))
    
    ## rowRanks():
    y0 <- rowRanks_R(x, ties.method = ties)
    y1 <- matrixStats::rowRanks(x, ties.method = ties)
    
    ## Assert symmetric rank differences
    d <- y1 - y0
    stopifnot(all(rowSums(d) == 0, na.rm = TRUE))
    
    ## Assert within [min, max]
    y2min <- matrixStats::rowRanks(x, ties.method = "min")
    y2max <- matrixStats::rowRanks(x, ties.method = "max")
    stopifnot(all(y1 >= y2min, na.rm = TRUE) && all(y1 <= y2max, na.rm = TRUE))
    ## Assert near average
    y1list <- replicate(nsamples, matrixStats::rowRanks(x, ties.method = ties), simplify = FALSE)
    y1mean <- Reduce(`+`, y1list) / nsamples
    y2avg <- matrixStats::rowRanks(x, ties.method = "average")
    stopifnot(all(abs(y1mean - y2avg) < tolerance, na.rm = TRUE))

    ## colRanks():
    y0 <- colRanks_R(x, ties.method = ties)
    y1 <- matrixStats::colRanks(x, ties.method = ties)

    ## Assert symmetric rank differences
    d <- y1 - y0
    stopifnot(all(rowSums(d) == 0, na.rm = TRUE))

    ## Assert within [min, max]
    y2min <- matrixStats::colRanks(x, ties.method = "min")
    y2max <- matrixStats::colRanks(x, ties.method = "max")
    stopifnot(all(y1 >= y2min, na.rm = TRUE) && all(y1 <= y2max, na.rm = TRUE))
    y1list <- replicate(nsamples, matrixStats::colRanks(x, ties.method = ties), simplify = FALSE)
    y1mean <- Reduce(`+`, y1list) / nsamples
    ## Assert near average
    y2avg <- matrixStats::colRanks(x, ties.method = "average")
    stopifnot(all(abs(y1mean - y2avg) < tolerance, na.rm = TRUE))
  }
} # for (kk ...)


## Exception handling
x <- matrix(1:12, nrow = 3L, ncol = 4L)
y <- try(rowRanks(x, ties.method = "unknown"), silent = TRUE)
stopifnot(inherits(y, "try-error"))

y <- try(colRanks(x, ties.method = "unknown"), silent = TRUE)
stopifnot(inherits(y, "try-error"))

dimnames <- list(letters[1:3], LETTERS[1:4])
for (mode in c("integer", "double")){
  storage.mode(x) <- mode
  # Test with and without dimnames on x
  for (setDimnames in c(TRUE, FALSE)) {
    if (setDimnames) dimnames(x) <- dimnames
    else dimnames(x) <- NULL
    # Check names attribute
    for (useNames in c(TRUE, FALSE)) {
      for (ties in c("max", "min", "average", "first", "last", "dense", "random")) {
        cat(sprintf("ties.method = %s\n", ties))
        # rowRanks():
        y1 <- matrixStats::rowRanks(x, ties.method = ties, useNames = useNames)
        y2 <- rowRanks_R(x, ties.method = ties, useNames = useNames)
        stopifnot(identical(y1, y2))
        
        y3 <- matrixStats::colRanks(t(x), ties.method = ties, useNames = useNames)
        stopifnot(identical(y1, y3))
        
        # colRanks():
        y1 <- matrixStats::colRanks(x, ties.method = ties, useNames = useNames)
        y2 <- colRanks_R(x, ties.method = ties, useNames = useNames)
        stopifnot(identical(y1, y2))
        
        y3 <- matrixStats::rowRanks(t(x), ties.method = ties, useNames = useNames)
        stopifnot(identical(y1, y3))
        
        # Check preserveShape
        y1 <- matrixStats::colRanks(x, ties.method = ties, preserveShape = TRUE, useNames = useNames)
        y2 <- colRanks_R(x, ties.method = ties, preserveShape = TRUE, useNames = useNames)
        stopifnot(identical(y1, y2))
      }
    }
  }
}
