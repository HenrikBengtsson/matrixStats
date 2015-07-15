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
