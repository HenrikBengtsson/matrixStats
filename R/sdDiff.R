setGeneric("sdDiff", function(x, na.rm=FALSE, diff=1L, ...) {
  standardGeneric("sdDiff");
})

setMethod("sdDiff", signature(x="numeric"), function(x, na.rm=FALSE, diff=1L, ...) {
  if (na.rm)
    x <- x[!is.na(x)];
  if (diff > 0L)
    x <- diff(x, differences=diff);
  sd <- sd(x, na.rm=FALSE)
  x <- NULL; # Not needed anymore
  sd/(sqrt(2)^diff);
})




############################################################################
# HISTORY:
# 2013-11-23
# o MEMORY: Now sdDiff() cleans out allocated objects sooner.
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
