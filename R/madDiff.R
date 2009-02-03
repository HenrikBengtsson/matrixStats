setGeneric("madDiff", function(x, na.rm=FALSE, diff=1, ...) {
  standardGeneric("madDiff");
})

setMethod("madDiff", signature(x="numeric"), function(x, na.rm=FALSE, diff=1, ...) {
  if (na.rm)
    x <- x[!is.na(x)];
  if (diff > 0)
    x <- diff(x, differences=diff);
  mad(x, na.rm=FALSE, ...)/(sqrt(2)^diff);
})



############################################################################
# HISTORY:
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################  
