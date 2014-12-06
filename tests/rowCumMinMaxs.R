library("matrixStats")

rowCummins_R <- function(x) {
  suppressWarnings({
    t(apply(x, MARGIN=1L, FUN=cummin))
  })
}

colCummins_R <- function(x) {
  suppressWarnings({
    apply(x, MARGIN=2L, FUN=cummin)
  })
}

rowCummaxs_R <- function(x) {
  suppressWarnings({
    t(apply(x, MARGIN=1L, FUN=cummax))
  })
}

colCummaxs_R <- function(x) {
  suppressWarnings({
    apply(x, MARGIN=2L, FUN=cummax)
  })
}


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# With and without some NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  for (addNA in c(FALSE, TRUE)) {
    cat("addNA=", addNA, "\n", sep="")
  
    x <- matrix(1:100, nrow=20, ncol=5)
    if (addNA) {
      x[13:17,c(2,4)] <- NA_real_
    }
    cat("mode: ", mode, "\n", sep="")
    storage.mode(x) <- mode 
    str(x)
  
    # Row/column ranges
    r0 <- rowCummins_R(x)
    r1 <- rowCummins(x)
    r2 <- t(colCummins(t(x)))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  
    r0 <- rowCummaxs_R(x)
    r1 <- rowCummaxs(x)
    r2 <- t(colCummaxs(t(x)))
    stopifnot(all.equal(r1, r2))
    stopifnot(all.equal(r1, r0))
    stopifnot(all.equal(r2, r0))
  } # for (addNA ...)
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# All NAs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
for (mode in c("integer", "double")) {
  x <- matrix(NA_real_, nrow=20, ncol=5)
  cat("mode: ", mode, "\n", sep="")
  storage.mode(x) <- mode 
  str(x)

  r0 <- rowCummins_R(x)
  r1 <- rowCummins(x)
  r2 <- t(colCummins(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
  
  r0 <- rowCummaxs_R(x)
  r1 <- rowCummaxs(x)
  r2 <- t(colCummaxs(t(x)))
  stopifnot(all.equal(r1, r2))
  stopifnot(all.equal(r1, r0))
  stopifnot(all.equal(r2, r0))
} # for (mode ...)


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A 1x1 matrix
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
x <- matrix(0, nrow=1, ncol=1)
r0 <- rowCummins_R(x)
r1 <- rowCummins(x)
r2 <- t(colCummins(t(x)))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))

r0 <- rowCummaxs_R(x)
r1 <- rowCummaxs(x)
r2 <- t(colCummaxs(t(x)))
stopifnot(all.equal(r1, r2))
stopifnot(all.equal(r1, r0))
stopifnot(all.equal(r2, r0))

