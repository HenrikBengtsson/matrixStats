.psortKM <- function(x, k=length(x), m=1L, ...) {
  .Call("psortKM", as.numeric(x), k=as.integer(k), m=as.integer(m), PACKAGE="matrixStats"); 
} # .psortKM()


############################################################################
# HISTORY:
# 2012-09-10
# o Added internal .psortKM() method.
# o Created.
############################################################################  
