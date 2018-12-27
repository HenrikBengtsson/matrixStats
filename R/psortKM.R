.psortKM <- function(x, k = length(x), m = 1L, ...) {
  .Call(C_psortKM, as.numeric(x), k = as.integer(k), m = as.integer(m))
}
