###########################################################################/**
# @RdocFunction rowSumsInLogspace
# @alias colSumsInLogspace
# \alias{rowSumsInLogspace,matrix-method}
# \alias{colSumsInLogspace,matrix-method}
#
# @title "Accurately computes log(sum(x)) of rows or columns"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  rowSumsInLogspace(lx, ...)
#  colSumsInLogspace(lx, ...)
# }
#
# \arguments{
#  \item{lx}{A @numeric NxK @matrix of \eqn{log(x)} values.}
#  \item{...}{Additional arguments passed to @see "sumInLogspace".}
# }
#
# \value{
#  A @numeric @vector of length N (K).
# }
#
# @author "HB, NX"
#
# \seealso{
#   Internally, @see "sumInLogspace".
# }
#
# @keyword array
# @keyword iteration
# @keyword univar
#*/###########################################################################
rowSumsInLogspace <- function(lx, ...) {
  n <- nrow(lx);
  res <- double(length=n);

  for (rr in seq(length=n)) {
    lxRR <- lx[rr,,drop=TRUE];
    res[rr] <- sumInLogspace(lxRR, ...);
  } # for cc;

  # Preserve names
  names <- rownames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # rowSumsInLogspace()

# original: res <- log( colSums(exp(lx)) )
colSumsInLogspace <- function(lx, ...) {
  n <- ncol(lx);
  res <- double(length=n);

  for (cc in seq(length=n)) {
    lxCC <- lx[,cc,drop=TRUE];
    res[cc] <- sumInLogspace(lxCC, ...);
  } # for cc;

  # Preserve names
  names <- colnames(lx);
  if (!is.null(names)) {
    names(res) <- names;
  }

  res;
} # colSumsInLogspace()



############################################################################
# HISTORY:
# 2013-04-29 [HB]
# o Added rowSumsInLogspace().
# o Renamed to colSumsInLogspace() which utilizes sumInLogspace().
# 2013-04-24 [HB]
# o Added colSumsP() adopted from log.colSums.exp() code contributed
#   by Nakayama ??? (???) on 2013-01-08.
# o Created.
############################################################################
