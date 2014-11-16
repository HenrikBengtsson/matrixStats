library("matrixStats")

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

# Simulate data in a matrix of any shape
dim <- sample(300:1000, size=2)
n <- prod(dim)
x <- round(rnorm(n, sd=20), digits=2)
dim(x) <- dim

# Integer or double?
for (mode in c("double", "integer")) {
  cat(sprintf("Mode: %s\n", mode))
  if (mode == "integer") {
    storage.mode(x) <- "integer"
  }
  str(x)

  for (MARGIN in 1:2) {
    fcn <- if (MARGIN == 1L) rowRanks else colRanks

    for (ties in c("max", "min", "average")) {
      y0 <- t(apply(x, MARGIN=MARGIN, FUN=rank, na.last="keep", ties.method=ties))

      y1 <- fcn(x, ties.method=ties)
      stopifnot(identical(y1,y0))
    } # for (ties ...)

  } # for (MARGIN ...)
} # for (mode ...)
