sdDiff <- function(x, na.rm=FALSE, diff=1L, trim=0, ...) {
  if (na.rm)
    x <- x[!is.na(x)];

  # Nothing to do?
  n <- length(x);
  if (n == 0L)
    return(NA_real_);

  # Calculate differences?
  if (diff > 0L) {
    x <- diff(x, differences=diff);

    # Nothing to do?
    n <- length(x);
    if (n == 0L)
      return(NA_real_);
  }

  # Trim?
  if (trim > 0 && n > 0L) {
    if (anyMissing(x)) return(NA_real_);
    lo <- floor(n*trim)+1;
    hi <- (n+1)-lo;
    partial <- unique(c(lo, hi))
    x <- sort.int(x, partial=partial);
    x <- x[lo:hi];
  }

  # Estimate
  sd <- sd(x, na.rm=FALSE);
  x <- NULL; # Not needed anymore
  sd/(sqrt(2)^diff);
} # sdDiff()


############################################################################
# HISTORY:
# 2014-11-10
# o Turned sdDiff() into a function.
# 2014-05-24
# o Turned sdDiff() into an S3 method (was S4).
# 2014-04-26
# o Added argument 'trim' to madDiff(), sdDiff() and varDiff().
# 2013-11-23
# o MEMORY: Now sdDiff() cleans out allocated objects sooner.
# 2008-04-13
# o Added varDiff().
# 2008-04-10 [on UA930 SFO-LHR]
# o Created.
############################################################################
