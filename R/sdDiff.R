setGeneric("sdDiff", function(x, na.rm=FALSE, diff=1L, ...) {
  standardGeneric("sdDiff");
})

setMethod("sdDiff", signature(x="numeric"), function(x, na.rm=FALSE, diff=1L, ...) {
  if (na.rm)
    x <- x[!is.na(x)];
  if (diff > 0L)
    x <- diff(x, differences=diff);
  sd(x, na.rm=FALSE)/(sqrt(2)^diff);
})




############################################################################
# HISTORY:
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
