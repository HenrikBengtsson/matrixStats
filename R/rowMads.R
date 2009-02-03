rowMads <- function(x, centers=NULL, constant=1.4826, ...) {
  if (is.null(centers)) {
    centers <- rowMedians(x, ...);
  }
  x <- x - centers;
  x <- abs(x);
  x <- rowMedians(x, ...);
  x <- constant*x;
  x;
}


colMads <- function(x, ...) {
  x <- t(x);
  rowMads(x, ...);
}

############################################################################
# HISTORY:
# 2008-03-26 [HB] 
# o Created.
############################################################################
