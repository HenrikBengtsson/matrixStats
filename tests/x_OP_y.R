library("matrixStats")

x_OP_y_R <- function(x, y, FUN, na.rm=FALSE) {
  if (na.rm) {
    xnok <- is.na(x)
    ynok <- is.na(y)
    anok <- xnok & ynok
    unit <- switch(FUN,
      "+" = 0,
      "-" = 0,
      "*" = 1,
      "/" = 1,
      stop("Unknown 'FUN' operator: ", FUN)
    )
    x[xnok] <- unit
    y[ynok] <- unit
  }

  ans <- switch(FUN,
    "+" = x + y,
    "-" = x - y,
    "*" = x * y,
    "/" = x / y,
    stop("Unknown 'FUN' operator: ", FUN)
  )

  if (na.rm) {
    ans[anok] <- NA_real_
  }

  ans
} # x_OP_y_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# No missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:12, nrow=4, ncol=3)
y <- 1:4
storage.mode(y) <- storage.mode(x)

for (FUN in c("+", "-", "*", "/")) {
  for (na.rm in c(FALSE, TRUE)) {
    cat(sprintf("FUN='%s', na.rm=%s\n", FUN, na.rm))
    a0 <- x_OP_y_R(x,y, FUN=FUN, na.rm=na.rm)
    a1 <- x_OP_y(x,y, FUN=FUN, na.rm=na.rm)
    str(a1)
    stopifnot(all.equal(a1, a0))
  }
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values in x, y, or both.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (which in c("x", "y", "both")) {
  x <- matrix(1:12, nrow=4, ncol=3)
  y <- 1:4
  storage.mode(y) <- storage.mode(x)
 
  if (which == "x") {
    x[3:6] <- NA_real_
  } else if (which == "y") {
    y[c(1,3)] <- NA_real_
  } else if (which == "both") {
    x[3:6] <- NA_real_
    y[c(1,3)] <- NA_real_
  }

  for (FUN in c("+", "-", "*", "/")) {
    for (na.rm in c(FALSE, TRUE)) {
      cat(sprintf("FUN='%s', na.rm=%s\n", FUN, na.rm))
      a0 <- x_OP_y_R(x,y, FUN=FUN, na.rm=na.rm)
      a1 <- x_OP_y(x,y, FUN=FUN, na.rm=na.rm)
      str(a1)
      stopifnot(all.equal(a1, a0))
    }
  }
}




