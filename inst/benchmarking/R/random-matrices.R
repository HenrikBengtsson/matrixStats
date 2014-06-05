rmatrix <- function(nrow, ncol, mode=c("double", "integer")) {
  mode <- match.arg(mode)
  n <- nrow*ncol
  X <- runif(n, min=-100, max=+100)
  storage.mode(X) <- mode
  dim(X) <- c(nrow, ncol)
  X
}

set.seed(1)
mode <- "double"
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
