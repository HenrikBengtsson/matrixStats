library("matrixStats")


for (mode in c("integer", "double")) {
  # Missing values
  x <- matrix(c(1,NA,NaN,1, 1,0,1,0), nrow=4, ncol=2)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode 
  str(x)

  y <- rowProds(x, na.rm=TRUE)
  print(y)
  stopifnot(all.equal(y, x[,2]))

  # Missing values
  y <- rowProds(x, na.rm=FALSE)
  print(y)
  z <- x[,1]*x[,2]
  print(z)
  # Computations involving NaN may return NaN or NA, cf. ?is.nan
  y[is.nan(y)] <- NA_real_
  z[is.nan(z)] <- NA_real_
  stopifnot(all.equal(y, z))

  # "Empty" rows
  y <- rowProds(x[integer(0),,drop=FALSE], na.rm=FALSE)
  print(y)
  stopifnot(length(y) == 0)
} # for (mode ...)


# Bug report 2012-06-25
x <- matrix(c(1,1,1,1, 1,0,1,0), nrow=4, ncol=2)
y <- rowProds(x)
print(y)
stopifnot(all.equal(y, x[,1]*x[,2]))

# Bug report 2014-03-25 ("all rows contains a zero")
x <- matrix(c(0,1,1,0), nrow=2, ncol=2)
y <- rowProds(x)
print(y)
stopifnot(all.equal(y, c(0,0)))
