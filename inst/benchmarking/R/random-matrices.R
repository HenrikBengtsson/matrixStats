rmatrix <- function(nrow, ncol) {
  matrix(sample(1e6, size=nrow*ncol, replace=TRUE), nrow=nrow, ncol=ncol)
}

set.seed(1)
data <- list(
  "Tiny square" = rmatrix(nrow=  40, ncol=  40),
  "Square"      = rmatrix(nrow= 400, ncol= 400),
  "Tall"        = rmatrix(nrow=4000, ncol=  40),
  "Wide"        = rmatrix(nrow=  40, ncol=4000),
  "Wide-tall"   = rmatrix(nrow= 400, ncol=4000)
)

############################################################################
# HISTORY:
# 2014-06-02
# o Created.
############################################################################
