library("matrixStats")

x_OP_y_R <- function(x, y, OP, na.rm=FALSE) {
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



t_tx_OP_y_R <- function(x, y, OP, na.rm=FALSE) {
  t(x_OP_y_R(x=t(x), y=y, OP=OP, na.rm=na.rm))
}



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# No missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:16, nrow=4, ncol=4)
y <- 1:nrow(x)
storage.mode(y) <- storage.mode(x)

for (OP in c("+", "-", "*", "/")) {
  for (na.rm in c(FALSE, TRUE)) {
    cat(sprintf("OP='%s', na.rm=%s\n", OP, na.rm))

    a0 <- x_OP_y_R(x,y, OP, na.rm=na.rm)
    a1 <- x_OP_y(x,y, OP, na.rm=na.rm)
    str(a1)
    stopifnot(all.equal(a1, a0))

    b0 <- t_tx_OP_y_R(x,y, OP, na.rm=na.rm)
    b1 <- t_tx_OP_y(x,y, OP, na.rm=na.rm)
    str(b1)
    stopifnot(all.equal(b1, b0))
  }
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Missing values in x, y, or both.
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (which in c("x", "y", "both")) {
  x <- matrix(1:16, nrow=4, ncol=4)
  y <- 1:nrow(x)
  storage.mode(y) <- storage.mode(x)

  if (which == "x") {
    x[3:6] <- NA_real_
  } else if (which == "y") {
    y[c(1,3)] <- NA_real_
  } else if (which == "both") {
    x[3:6] <- NA_real_
    y[c(1,3)] <- NA_real_
  }

  for (OP in c("+", "-", "*", "/")) {
    for (na.rm in c(FALSE, TRUE)) {
      cat(sprintf("OP='%s', na.rm=%s\n", OP, na.rm))
      a0 <- x_OP_y_R(x,y, OP, na.rm=na.rm)
      a1 <- x_OP_y(x,y, OP, na.rm=na.rm)
      str(a1)
      stopifnot(all.equal(a1, a0))

      b0 <- t_tx_OP_y_R(x,y, OP, na.rm=na.rm)
      b1 <- t_tx_OP_y(x,y, OP, na.rm=na.rm)
      str(b1)
      stopifnot(all.equal(b1, b0))
    }
  }
}



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Length differences
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:8, nrow=2, ncol=4)
y <- 1:ncol(x)
storage.mode(y) <- storage.mode(x)

for (OP in c("+", "-", "*", "/")) {
  for (na.rm in c(FALSE, TRUE)) {
    cat(sprintf("OP='%s', na.rm=%s\n", OP, na.rm))

    a0 <- x_OP_y_R(x,y, OP, na.rm=na.rm)
    a1 <- x_OP_y(x,y, OP, na.rm=na.rm)
    str(a1)
    stopifnot(all.equal(a1, a0))

    b0 <- t_tx_OP_y_R(x,y, OP, na.rm=na.rm)
    b1 <- t_tx_OP_y(x,y, OP, na.rm=na.rm)
    str(b1)
    stopifnot(all.equal(b1, b0))
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All missing values
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_integer_, nrow=2, ncol=2)
  y <- 1L
  storage.mode(x) <- mode
  storage.mode(y) <- mode
  str(list(x=x, y=y))

  for (OP in c("+", "-", "*", "/")) {
    for (na.rm in c(FALSE, TRUE)) {
      cat(sprintf("mode='%s', OP='%s', na.rm=%s\n", mode, OP, na.rm))
      z0 <- x_OP_y_R(x, y, OP)
      z <- x_OP_y(x, y, OP)
      str(z)
      stopifnot(all.equal(z, z0))
    }
  }
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Subsetted tests
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
source("utils/validateIndicesFramework.R")

for (OP in c("+", "-", "*", "/")) {
  for (mode in c("numeric", "integer")) {
    x <- matrix(runif(6*6, min=-6, max=6), nrow=6L, ncol=6L)
    y <- runif(6, min=0, max=6)
    storage.mode(x) <- mode
    storage.mode(y) <- mode
    if (mode == "numeric") y[1] <- Inf

    for (xrows in indexCases) {
      for (xcols in indexCases) {
        if (is.null(xrows)) xrows <- seq_len(nrow(x))
        if (is.null(xcols)) xcols <- seq_len(ncol(x))

        for (yidxs in list(xrows,xcols)) {
          for (na.rm in c(TRUE, FALSE)) {
            if (is.element(OP, c("-", "/"))) next

            suppressWarnings({
              actual <- tryCatch(
                x_OP_y(x, y, OP, xrows=xrows, xcols=xcols, yidxs=yidxs, na.rm=na.rm),
                error=function(c) "error"
              )

              expect <- tryCatch(
                x_OP_y_R(x[xrows,xcols,drop=FALSE], y[yidxs], OP, na.rm=na.rm),
                error=function(c) "error"
              )
            })
            stopifnot(all.equal(as.vector(actual), as.vector(expect)))

            suppressWarnings({
              actual <- tryCatch(
                t_tx_OP_y(x, y, OP, xrows=xrows, xcols=xcols, yidxs=yidxs, na.rm=na.rm),
                error=function(c) "error"
              )

              expect <- tryCatch(
                t_tx_OP_y_R(x[xrows,xcols,drop=FALSE], y[yidxs], OP, na.rm=na.rm),
                error=function(c) "error"
              )
            })
            stopifnot(all.equal(as.vector(actual), as.vector(expect)))
          }
        }
      }
    }
  }
}
