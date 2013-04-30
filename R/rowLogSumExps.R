###########################################################################/**
# @RdocFunction rowLogSumExps
# @alias colLogSumExps
# \alias{rowLogSumExps,matrix-method}
# \alias{colLogSumExps,matrix-method}
#
# @title "Accurately computes the logarithm of the sum of exponentials across rows or columns"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  rowLogSumExps(lx, ...)
#  colLogSumExps(lx, ...)
# }
#
# \arguments{
#  \item{lx}{A @numeric NxK @matrix.
#   Typically \code{lx} are \eqn{log(x)} values.}
#  \item{...}{Additional arguments passed to @see "logSumExp".}
# }
#
# \value{
#  A @numeric @vector of length N (K).
# }
#
# @author "HB, NX"
#
# \seealso{
#   Internally, @see "logSumExp" is used.
# }
#
# @keyword array
# @keyword internal
#*/###########################################################################
rowLogSumExps <- function(lx, ...) {
  n <- nrow(lx);
  res <- double(length=n);

  for (rr in seq(length=n)) {
    lxRR <- lx[rr,,drop=TRUE];
    res[rr] <- logSumExp(lxRR, ...);
  } # for cc;

  # Preserve names
  names <- rownames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # rowLogSumExps()

# original: res <- log( colSums(exp(lx)) )
colLogSumExps <- function(lx, ...) {
  n <- ncol(lx);
  res <- double(length=n);

  for (cc in seq(length=n)) {
    lxCC <- lx[,cc,drop=TRUE];
    res[cc] <- logSumExp(lxCC, ...);
  } # for cc;

  # Preserve names
  names <- colnames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # colLogSumExps()



############################################################################
# HISTORY:
# 2013-04-30 [HB]
# o Renamed to (col|row)LogSumExps().
# 2013-04-29 [HB]
# o Added rowSumsInLogspace().
# o Renamed to colSumsInLogspace() which utilizes logSumExp().
# 2013-04-24 [HB]
# o Added colSumsP() adopted from log.colSums.exp() code contributed
#   by Nakayama ??? (???) on 2013-01-08.
# o Created.
############################################################################
