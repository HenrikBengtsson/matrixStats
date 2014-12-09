library("matrixStats")

rowAlls_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=all, na.rm=na.rm)
}

rowAnys_R <- function(x, na.rm=FALSE, ...) {
  apply(x, MARGIN=1L, FUN=any, na.rm=na.rm)
}

rowAnyMissings_R <- function(x, ...) {
  apply(x, MARGIN=1L, FUN=anyMissing)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# all() and any()
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(FALSE, nrow=20, ncol=5)
x[13:17,c(2,4)] <- TRUE
x[2:4,] <- TRUE
x[,1] <- TRUE
x[5,] <- FALSE
x[,5] <- FALSE

for (kk in 1:3) {
  if (kk == 2) {
    x[2,2] <- NA
  } else if (kk == 3) {
    x[,2] <- NA
    x[2,] <- NA
  }

  # Row/column all
  for (na.rm in c(FALSE, TRUE)) {
    m0 <- rowAlls_R(x, na.rm=na.rm)
    m1 <- rowAlls(x, na.rm=na.rm)
    m2 <- colAlls(t(x), na.rm=na.rm)
    str(list("all()", m0=m0, m1=m1, m2=m2))
    stopifnot(identical(m1, m0))
    stopifnot(identical(m2, m0))
  }

  # Row/column any
  for (na.rm in c(FALSE, TRUE)) {
    m0 <- rowAnys_R(x, na.rm=na.rm)
    m1 <- rowAnys(x, na.rm=na.rm)
    m2 <- colAnys(t(x), na.rm=na.rm)
    str(list("any()", m0=m0, m1=m1, m2=m2))
    stopifnot(identical(m1, m0))
    stopifnot(identical(m2, m0))

    m0 <- rowAnyMissings_R(x)
    m1 <- rowAnyMissings(x)
    m2 <- colAnyMissings(t(x))
    str(list("anyMissing()", m0=m0, m1=m1, m2=m2))
    stopifnot(identical(m1, m0))
    stopifnot(identical(m2, m0))

  }
} # for (kk ...)
