library("matrixStats")
library("utils")

rowRanksX <- function(x, ties.method, fcn, ...) {
  if (ties.method == "max") {
    y <- fcn(x, ties.method="max", flavor="v1")
  } else if (ties.method == "min") {
    y <- fcn(-x, ties.method="max", flavor="v1")
    y <- ncol(y) - y + 1L
  } else if (ties.method == "average") {
    y <- NULL
  }
  y
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Consistency checks
# - - - - - - - - - - - - - - - - - - - - - - - - - - - -
set.seed(1)

# Simulate data in a matrix of any shape
dim <- sample(300:1000, size=2)
n <- prod(dim)
x <- round(rnorm(n, sd=20), digits=2)
dim(x) <- dim
str(x)

# Integer or double?
for (mode in c("double", "integer")) {
  if (mode == "integer") {
    cat("Coercing to integers\n")
    storage.mode(x) <- "integer"
  }

  for (MARGIN in 1:2) {
    fcn <- if (MARGIN == 1L) rowRanks else colRanks

    for (ties in c("max", "min", "average")) {
      y0 <- t(apply(x, MARGIN=MARGIN, FUN=rank, na.last="keep", ties.method=ties))
      if (ties != "average") {
        y1 <- rowRanksX(x, ties.method=ties, fcn=fcn)
        stopifnot(identical(y1,y0))
      }

      y2 <- fcn(x, ties.method=ties, flavor="v2")
      stopifnot(identical(y2,y0))
    } # for (ties ...)

  } # for (MARGIN ...)
} # for (mode ...)
