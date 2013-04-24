library("matrixStats")

ctime <- function(which, t0, t1, t2, ...) {
  cat(sprintf("%s: t1/t0=%.3g, t2/t0=%.3g, t2/t1=%.3g\n", which, (t1/t0)[3], (t2/t0)[3], (t2/t1)[3]))
}

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
    fcn <- if (MARGIN == 1) rowRanks else colRanks

    for (ties in c("max", "min", "average")) {
      key <- sprintf("'%s' (mode='%s', MARGIN=%d)", ties, mode, MARGIN)

      t0 <- system.time({
        y0 <- t(apply(x, MARGIN=MARGIN, FUN=rank, na.last="keep", ties.method=ties))
      })

      if (ties != "average") {
        t1 <- system.time({
          y1 <- rowRanksX(x, ties.method=ties, fcn=fcn)
        })
        stopifnot(identical(y1,y0))
      } else {
        t1 <- NA
      }

      t2 <- system.time({
        y2 <- fcn(x, ties.method=ties, flavor="v2")
      })
      stopifnot(identical(y2,y0))
      ctime(key, t0, t1, t2)
    } # for (ties ...)

  } # for (MARGIN ...)
} # for (mode ...)
