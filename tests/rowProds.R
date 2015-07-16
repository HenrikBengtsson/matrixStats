library("matrixStats")

rowProds_R <- function(x, FUN=prod, na.rm=FALSE, ...) {
  y <- apply(x, MARGIN=1L, FUN=FUN, na.rm=na.rm)
  y
}

all.equal.na <- function(target, current, ...) {
  # Computations involving NaN may return NaN or NA, cf. ?is.nan
  current[is.nan(current)] <- NA_real_
  target[is.nan(target)] <- NA_real_
  all.equal(target, current, ...)
}

for (mode in c("integer", "double")) {
  # Missing values
  x <- matrix(c(1,NA,NaN,1, 1,0,1,0), nrow=4, ncol=2)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode
  str(x)

  y0 <- rowProds_R(x, na.rm=TRUE)
  print(y0)
  y1 <- rowProds(x, na.rm=TRUE)
  print(y1)
  y2 <- colProds(t(x), na.rm=TRUE)
  print(y2)
  stopifnot(all.equal(y1, y0))
  stopifnot(all.equal(y1, x[,2]))
  stopifnot(all.equal(y2, y1))

  # Missing values
  y0 <- rowProds_R(x, na.rm=FALSE)
  print(y0)
  y1 <- rowProds(x, na.rm=FALSE)
  print(y1)
  y2 <- colProds(t(x), na.rm=FALSE)
  print(y2)
  stopifnot(all.equal.na(y1, y0))
  stopifnot(all.equal(y2, y1))
  y3 <- x[,1]*x[,2]
  print(y3)
  stopifnot(all.equal.na(y1, y3))

  # "Empty" rows
  y0 <- rowProds_R(x[integer(0),,drop=FALSE], na.rm=FALSE)
  print(y0)
  y1 <- rowProds(x[integer(0),,drop=FALSE], na.rm=FALSE)
  print(y1)
  y2 <- colProds(t(x[integer(0),,drop=FALSE]), na.rm=FALSE)
  print(y2)
  stopifnot(all.equal.na(y1, y0))
  stopifnot(all.equal(y2, y1))
  stopifnot(length(y1) == 0L)

  # Using product()
  y1 <- rowProds(x, method="expSumLog", na.rm=FALSE)
  print(y1)
  y2 <- colProds(t(x), method="expSumLog", na.rm=FALSE)
  print(y2)
  stopifnot(all.equal(y2, y1))
} # for (mode ...)


# Bug report 2012-06-25
x <- matrix(c(1,1,1,1, 1,0,1,0), nrow=4, ncol=2)
y0 <- rowProds_R(x)
print(y0)
y1 <- rowProds(x)
print(y1)
y2 <- colProds(t(x))
print(y2)
stopifnot(all.equal.na(y1, y0))
stopifnot(all.equal.na(y1, x[,1]*x[,2]))
stopifnot(all.equal.na(y2, y1))

# Bug report 2014-03-25 ("all rows contains a zero")
x <- matrix(c(0,1,1,0), nrow=2, ncol=2)
y0 <- rowProds_R(x)
print(y0)
y1 <- rowProds(x)
print(y1)
y2 <- colProds(t(x))
print(y2)
stopifnot(all.equal.na(y1, y0))
stopifnot(all.equal.na(y1, c(0,0)))
stopifnot(all.equal.na(y2, y1))
