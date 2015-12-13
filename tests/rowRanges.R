library("matrixStats")

rowMins_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=min, ...)
  })
} # rowMins_R()

rowMaxs_R <- function(x, ...) {
  suppressWarnings({
    apply(x, MARGIN=1L, FUN=max, ...)
  })
} # rowMaxs_R()

rowRanges_R <- function(x, ...) {
  suppressWarnings({
    ans <- t(apply(x, MARGIN=1L, FUN=range, ...))
  })
  dim(ans) <- c(dim(x)[1], 2)
  ans
} # rowRanges_R()


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")

  for (addNA in c(FALSE, TRUE)) {
    cat("addNA=", addNA, "\n", sep="")

    x <- matrix(1:100+0.1, nrow=20, ncol=5)
    if (addNA) {
      x[13:17,c(2,4)] <- NA_real_
    }
    storage.mode(x) <- mode
    str(x)

    # Row/column extremes
    for (na.rm in c(FALSE, TRUE)) {
      cat("na.rm=", na.rm, "\n", sep="")

      # Ranges
      cat("range:\n")
      r0 <- rowRanges_R(x, na.rm=na.rm)
      r1 <- rowRanges(x, na.rm=na.rm)
      r2 <- colRanges(t(x), na.rm=na.rm)
      stopifnot(all.equal(r1, r2))
      stopifnot(all.equal(r1, r0))

      # Min
      cat("min:\n")
      m0 <- rowMins_R(x, na.rm=na.rm)
      m1 <- rowMins(x, na.rm=na.rm)
      m2 <- colMins(t(x), na.rm=na.rm)
      stopifnot(all.equal(m1, m2))
      stopifnot(all.equal(m1, m0))

      # Max
      cat("max:\n")
      m0 <- rowMaxs_R(x, na.rm=na.rm)
      m1 <- rowMaxs(x, na.rm=na.rm)
      m2 <- colMaxs(t(x), na.rm=na.rm)
      stopifnot(all.equal(m1, m2))
      stopifnot(all.equal(m1, m0))
    }
  } # for (addNA ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  cat("mode: ", mode, "\n", sep="")
  x <- matrix(NA_real_, nrow=20, ncol=5)
  storage.mode(x) <- mode
  str(x)

  for (na.rm in c(FALSE, TRUE)) {
    cat("na.rm=", na.rm, "\n", sep="")
    r0 <- rowRanges_R(x, na.rm=na.rm)
    r1 <- rowRanges(x, na.rm=na.rm)
    r2 <- colRanges(t(x), na.rm=na.rm)
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
  }
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Special cases
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Nx0 matrix
x <- matrix(double(0L), nrow=5L, ncol=0L)
r0 <- rowRanges_R(x)
#r1 <- rowRanges(x)
#rT <- matrix(c(Inf,-Inf), nrow=nrow(x), ncol=2L, byrow=TRUE)
#stopifnot(all.equal(r1,rT))

# 0xN matrix
x <- t(x)
#r1 <- colRanges(x)
#stopifnot(all.equal(r1,rT))

# Nx1 matrix
x <- matrix(1:5, nrow=5L, ncol=1L)
r1 <- rowRanges(x)
rT <- matrix(1:5, nrow=nrow(x), ncol=2L, byrow=FALSE)
stopifnot(all.equal(r1,rT))

# 1xN matrix
x <- t(x)
r1 <- colRanges(x)
stopifnot(all.equal(r1,rT))



# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Additional tests with NA_integer_, NA_real, NaN, -Inf, +Inf
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(1:12, nrow=4, ncol=3)

naList <- list(
  "integer"       = matrix(1:12, nrow=4, ncol=3),
  "integer w/ NA" = matrix(NA_integer_, nrow=4, ncol=3),
  "real"          = matrix(as.double(1:12), nrow=4, ncol=3),
  "real w/ NA"    = matrix(NA_real_, nrow=4, ncol=3)
)

na <- naList[["real"]]
na[2,2] <- NA
naList[["real + NA cell"]] <- na

na <- naList[["real"]]
na[2,] <- NA
naList[["real + NA row"]] <- na

na <- naList[["real"]]
na[2,] <- NaN
naList[["real + NaN row"]] <- na

na <- naList[["real"]]
na[2,2] <- Inf
naList[["real + Inf cell"]] <- na

na <- naList[["real"]]
na[2,] <- Inf
naList[["real + Inf row"]] <- na

na <- naList[["real"]]
na[2,2] <- NaN
naList[["real + NaN cell"]] <- na

na <- naList[["real w/ NA"]]
na[2,2] <- NaN
naList[["real w/ NA + NaN cell"]] <- na

na <- naList[["real w/ NA"]]
na[2,] <- NaN
naList[["real w/ NA + NaN row"]] <- na


for (na.rm in c(FALSE, TRUE)) {
  for (name in names(naList)) {
    na <- naList[[name]]
    cat(sprintf("%s (%s) w/ na.rm=%s:\n", name, typeof(na), na.rm))
    print(na)

    cat("  min:\n")
    y0 <- rowMins_R(na, na.rm=na.rm)
    str(y0)
    y1 <- rowMins(na, na.rm=na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colMins(t(na), na.rm=na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))

    cat("  max:\n")
    y0 <- rowMaxs_R(na, na.rm=na.rm)
    str(y0)
    y1 <- rowMaxs(na, na.rm=na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colMaxs(t(na), na.rm=na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))

    cat("  range:\n")
    y0 <- rowRanges_R(na, na.rm=na.rm)
    str(y0)
    y1 <- rowRanges(na, na.rm=na.rm)
    str(y1)
    stopifnot(all.equal(y1, y0))
    y1c <- colRanges(t(na), na.rm=na.rm)
    str(y1c)
    stopifnot(all.equal(y1c, y1))
  } # for (name ...)
} # for (na.rm ...)
