.psortKM <- function(x, k=length(x), m=1L, ...) {
  .Call(C_psortKM, as.numeric(x), k=as.integer(k), m=as.integer(m)); 
} # .psortKM()


############################################################################
# HISTORY:
# 2012-09-10
# o Added internal .psortKM() method.
# o Created.
############################################################################  
