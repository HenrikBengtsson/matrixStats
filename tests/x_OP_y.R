library("matrixStats")

x_OP_y_R <- function(x, y, OP, na.rm = FALSE) {
  if (na.rm) {
    xnok <- is.na(x)
    ynok <- is.na(y)
    anok <- xnok & ynok
    unit <- switch(OP,
      "+" = 0,
      "-" = NA_real_,
      "*" = 1,
      "/" = NA_real_,
      stop("Unknown 'OP' operator: ", OP)
    )
    x[xnok] <- unit
    y[ynok] <- unit
  }

  ans <- switch(OP,
    "+" = x + y,
    "-" = x - y,
    "*" = x * y,
    "/" = x / y,
    stop("Unknown 'OP' operator: ", OP)
  )

  if (na.rm) {
    ans[anok] <- NA_real_
  }

  ans
} # x_OP_y_R()



t_tx_OP_y_R <- function(x, y, OP, na.rm = FALSE) {
  t(x_OP_y_R(x = t(x), y = y, OP = OP, na.rm = na.rm))
}



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# No missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:16, nrow = 4, ncol = 4)
y <- 1:nrow(x)
storage.mode(y) <- storage.mode(x)

for (OP in c("+", "-", "*", "/")) {
  for (na.rm in c(FALSE, TRUE)) {
    cat(sprintf("OP = '%s', na.rm = %s\n", OP, na.rm))

    a0 <- x_OP_y_R(x, y, OP, na.rm = na.rm)
    a1 <- x_OP_y(x, y, OP, na.rm = na.rm)
    str(a1)
    stopifnot(all.equal(a1, a0))

    b0 <- t_tx_OP_y_R(x, y, OP, na.rm = na.rm)
    b1 <- t_tx_OP_y(x, y, OP, na.rm = na.rm)
    str(b1)
    stopifnot(all.equal(b1, b0))
  }
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values in x, y, or both.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (which in c("x", "y", "both")) {
  x <- matrix(1:16, nrow = 4, ncol = 4)
  y <- 1:nrow(x)
  storage.mode(y) <- storage.mode(x)

  if (which == "x") {
    x[3:6] <- NA_real_
  } else if (which == "y") {
    y[c(1, 3)] <- NA_real_
  } else if (which == "both") {
    x[3:6] <- NA_real_
    y[c(1, 3)] <- NA_real_
  }

  for (OP in c("+", "-", "*", "/")) {
    for (na.rm in c(FALSE, TRUE)) {
      cat(sprintf("OP = '%s', na.rm = %s\n", OP, na.rm))
      a0 <- x_OP_y_R(x, y, OP, na.rm = na.rm)
      a1 <- x_OP_y(x, y, OP, na.rm = na.rm)
      str(a1)
      stopifnot(all.equal(a1, a0))

      b0 <- t_tx_OP_y_R(x, y, OP, na.rm = na.rm)
      b1 <- t_tx_OP_y(x, y, OP, na.rm = na.rm)
      str(b1)
      stopifnot(all.equal(b1, b0))
    }
  }
}



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Length differences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:8, nrow = 2, ncol = 4)
y <- 1:ncol(x)
storage.mode(y) <- storage.mode(x)

for (OP in c("+", "-", "*", "/")) {
  for (na.rm in c(FALSE, TRUE)) {
    cat(sprintf("OP = '%s', na.rm = %s\n", OP, na.rm))

    a0 <- x_OP_y_R(x, y, OP, na.rm = na.rm)
    a1 <- x_OP_y(x, y, OP, na.rm = na.rm)
    str(a1)
    stopifnot(all.equal(a1, a0))

    b0 <- t_tx_OP_y_R(x, y, OP, na.rm = na.rm)
    b1 <- t_tx_OP_y(x, y, OP, na.rm = na.rm)
    str(b1)
    stopifnot(all.equal(b1, b0))
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
xs <- list(
  A = matrix(1:2, nrow = 2, ncol = 2),
  B = matrix(NA_integer_, nrow = 2, ncol = 2)
)
ys <- list(
  A = 1L,
  B = NA_integer_
)

for (x in xs) {
  for (y in ys) {
    for (mode in c("integer", "double")) {
      storage.mode(x) <- mode
      storage.mode(y) <- mode
      str(list(x = x, y = y))

      for (OP in c("+", "-", "*", "/")) {
        for (na.rm in c(FALSE, TRUE)) {
          cat(sprintf("mode = '%s', OP = '%s', na.rm = %s\n", mode, OP, na.rm))
          suppressWarnings({
            z0 <- x_OP_y_R(x, y, OP, na.rm = na.rm)
            z <- x_OP_y(x, y, OP, na.rm = na.rm)
          })
          str(z)
          stopifnot(all.equal(z, z0))
        }
      }
    } # for (mode ...)
  } # for (y ...)
} # for (x ...)
