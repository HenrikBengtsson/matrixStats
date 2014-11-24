x_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  na.rm <- as.logical(na.rm)
  if (na.rm) {
    dim <- dim(x)
    x <- as.vector(x)
    y <- as.vector(y)
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
    ans <- switch(FUN,
      "+" = x + y,
      "-" = x - y,
      "*" = x * y,
      "/" = x / y,
      stop("Unknown 'FUN' operator: ", FUN)
    )
#    ans[anok] <- NA_real_
    dim(ans) <- dim
  } else {
    ans <- switch(FUN,
      "+" = x + y,
      "-" = x - y,
      "*" = x * y,
      "/" = x / y,
      stop("Unknown 'FUN' operator: ", FUN)
    )
  }
  ans
} # x_OP_y()




t_tx_OP_y <- function(x, y, FUN, na.rm=FALSE) {
  x <- t(x)
  ans <- x_OP_y(x, y, FUN=FUN, na.rm=na.rm)
  ans <- t(ans)
  ans
} # t_tx_OP_y()


############################################################################
# HISTORY:
# 2014-11-24 [HB]
# o Created.
############################################################################
