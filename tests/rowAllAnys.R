library("matrixStats")

rowAlls_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    apply(is.na(x), MARGIN=1L, FUN=all, na.rm=na.rm)
  } else {
    y <- x == value
    dim(y) <- dim(x) # for 0×N and M×0 cases
    apply(y, MARGIN=1L, FUN=all, na.rm=na.rm)
  }
}

rowAnys_R <- function(x, value=TRUE, na.rm=FALSE, ...) {
  if (is.na(value)) {
    apply(is.na(x), MARGIN=1L, FUN=any, na.rm=na.rm)
  } else {
    y <- x == value
    dim(y) <- dim(x) # for 0×N and M×0 cases
    apply(y, MARGIN=1L, FUN=any, na.rm=na.rm)
  }
}

rowAnyMissings_R <- function(x, ...) {
  apply(x, MARGIN=1L, FUN=anyMissing)
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: logical
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(FALSE, nrow=20, ncol=5)
x[13:17,c(2,4)] <- TRUE
x[2:4,] <- TRUE
x[,1] <- TRUE
x[5,] <- FALSE
x[,5] <- FALSE
x[3,] <- FALSE
x[4,] <- TRUE

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


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: integer
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(rep(1:28, length.out=20*5), nrow=20, ncol=5)
x[2,] <- 7L
x[3,1] <- 7L
x[2:3,3:4] <- NA_integer_

# Row/column counts
value <- 7L
for (na.rm in c(FALSE, TRUE)) {
  ## All
  r0 <- rowAlls_R(x, value=value, na.rm=na.rm)
  r1 <- rowAlls(x, value=value, na.rm=na.rm)
  r2 <- colAlls(t(x), value=value, na.rm=na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r1))

  for (rr in seq_len(nrow(x))) {
    c <- allValue(x[rr,], value=value, na.rm=na.rm)
    stopifnot(identical(c,r1[rr]))
    c <- allValue(x[rr,], value=value, na.rm=na.rm)
    stopifnot(identical(c,r1[rr]))
  }

  ## Any
  r0 <- rowAnys_R(x, value=value, na.rm=na.rm)
  r1 <- rowAnys(x, value=value, na.rm=na.rm)
  r2 <- colAnys(t(x), value=value, na.rm=na.rm)
  stopifnot(identical(r1, r0))
  stopifnot(identical(r2, r1))

  for (rr in seq_len(nrow(x))) {
    c <- anyValue(x[rr,], value=value, na.rm=na.rm)
    stopifnot(identical(c,r1[rr]))
    c <- anyValue(x[rr,], value=value, na.rm=na.rm)
    stopifnot(identical(c,r1[rr]))
  }
}


all_R <- function(x, value=TRUE, ...) {
  if (is.na(value)) {
    all(is.na(x), ...)
  } else {
    all(x == value, ...)
  }
}

any_R <- function(x, value=TRUE, ...) {
  if (is.na(value)) {
    any(is.na(x), ...)
  } else {
    any(x == value, ...)
  }
}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Data type: character (not sure if this should be supported)
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(rep(letters, length.out=20*5), nrow=20, ncol=5)
x[2,] <- "g"
x[2:4,3:4] <- NA_character_

# Row/column counts
for (value in c("g", NA_character_)) {
  for (na.rm in c(FALSE, TRUE)) {
    ## All
    r0 <- rowAlls_R(x, value=value, na.rm=na.rm)
    r1 <- rowAlls(x, value=value, na.rm=na.rm)
    r2 <- colAlls(t(x), value=value, na.rm=na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r1))

    for (rr in seq_len(nrow(x))) {
      c0 <- all_R(x[rr,], value, na.rm=na.rm)
      c <- allValue(x[rr,], value=value, na.rm=na.rm)
      stopifnot(identical(c,r1[rr]))
      stopifnot(identical(c,c0))
    }

    ## Any
    r0 <- rowAnys_R(x, value=value, na.rm=na.rm)
    r1 <- rowAnys(x, value=value, na.rm=na.rm)
    r2 <- colAnys(t(x), value=value, na.rm=na.rm)
    stopifnot(identical(r1, r0))
    stopifnot(identical(r2, r1))

    for (rr in seq_len(nrow(x))) {
      c0 <- any_R(x[rr,], value, na.rm=na.rm)
      c <- anyValue(x[rr,], value=value, na.rm=na.rm)
      stopifnot(identical(c,c0))
      stopifnot(identical(c,r1[rr]))
    }
  }
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# NA 0 test
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow=3, ncol=3)
x[1,] <- c(NA_real_, NA_real_, 0)
x[3,] <- c(1, 0, 1)

r0 <- rowAnys_R(x, value=0)
r1 <- rowAnys(x, value=0)
stopifnot(identical(r0, r1))
