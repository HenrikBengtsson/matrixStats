###########################################################################/**
# @RdocFunction rowQuantiles
# @alias colQuantiles
#
# @title "Estimates quantiles for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowQuantiles
#  @usage colQuantiles
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix with N >= 0.}
#  \item{probs}{A @numeric @vector of J probabilities in [0,1].}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{type}{An @integer specify the type of estimator.
#    See @see "stats::quantile" for more details.}
#  \item{...}{Additional arguments passed to @see "stats::quantile".}
#  \item{drop}{If TRUE, singleton dimensions in the result are dropped,
#    otherwise not.}
# }
#
# \value{
#   Returns a @numeric NxJ (KxJ) @matrix, where
#   N (K) is the number of rows (columns) for which the J quantiles are
#   calculated.
# }
#
# @examples "../incl/rowQuantiles.Rex"
#
# @author "HB"
#
# \seealso{
#   @see "stats::quantile".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowQuantiles <- function(x, probs=seq(from=0, to=1, by=0.25), na.rm=FALSE, type=7L, ..., drop=TRUE) {
  # Argument 'x':
  hasNA <- anyMissing(x)
  if (hasNA && !na.rm) {
    stop("Argument 'na.rm' is FALSE and 'x' contains missing values")
  }
  nrow <- nrow(x)

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps,1+eps]")
  }

  if (nrow > 0L) {
    if (!hasNA && type == 7L) {
      n <- ncol(x)
      idxs <- 1 + (n-1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN=1L, FUN=sort, partial=partial)
      q <- apply(xp, MARGIN=2L, FUN=.subset, idxs_lo)
      if (is.null(dim(q))) dim(q) <- c(1L, length(q))

      # Adjust
      idxs_adj <- which(idxs > idxs_lo)
      if (length(idxs_adj) > 0L) {
        qL <- q[idxs_adj,,drop=FALSE]
        idxs_hi <- idxs_hi[idxs_adj]
        qH <- apply(xp, MARGIN=2L, FUN=.subset, idxs_hi)
        w <- (idxs - idxs_lo)[idxs_adj]
        q[idxs_adj,] <- (1-w)*qL + w*qH
        # Not needed anymore
        xp <- qL <- qH <- NULL
      }

      # Backward compatibility
      q <- t(q)
    } else {
      # Allocate result
      naValue <- NA
      storage.mode(naValue) <- storage.mode(x)
      q <- matrix(naValue, nrow=nrow, ncol=length(probs))
      # For each row...
      for (rr in seq_len(nrow)) {
        q[rr,] <- quantile(x[rr,], probs=probs, na.rm=na.rm, type=type, ...)
      }
    } # if (type ...)
  } else {
    naValue <- NA
    storage.mode(naValue) <- storage.mode(x)
    q <- matrix(naValue, nrow=0L, ncol=length(probs))
  }

  # Add names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100*probs)
  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
} # rowQuantiles()

colQuantiles <- function(x, probs=seq(from=0, to=1, by=0.25), na.rm=FALSE, type=7L, ..., drop=TRUE) {
  # Argument 'x':
  hasNA <- anyMissing(x)
  if (hasNA && !na.rm) {
    stop("Argument 'na.rm' is FALSE and 'x' contains missing values")
  }
  ncol <- ncol(x)

  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps,1+eps]")
  }

  if (ncol > 0L) {
    if (!hasNA && type == 7L) {
      n <- nrow(x)
      idxs <- 1 + (n-1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN=2L, FUN=sort, partial=partial)
      q <- apply(xp, MARGIN=2L, FUN=.subset, idxs_lo)
      if (is.null(dim(q))) dim(q) <- c(1L, length(q))

      # Adjust
      idxs_adj <- which(idxs > idxs_lo)
      if (length(idxs_adj) > 0L) {
        qL <- q[idxs_adj,,drop=FALSE]
        idxs_hi <- idxs_hi[idxs_adj]
        qH <- apply(xp, MARGIN=2L, FUN=.subset, idxs_hi)
        w <- (idxs - idxs_lo)[idxs_adj]
        q[idxs_adj,] <- (1-w)*qL + w*qH
        # Not needed anymore
        xp <- qL <- qH <- NULL
      }

      # Backward compatibility
      q <- t(q)
    } else {
      # Allocate result
      naValue <- NA
      storage.mode(naValue) <- storage.mode(x)
      q <- matrix(naValue, nrow=ncol, ncol=length(probs))
      # For each row...
      for (cc in seq_len(ncol)) {
        q[cc,] <- quantile(x[,cc], probs=probs, na.rm=na.rm, type=type, ...)
      }
    } # if (type ...)
  } else {
    naValue <- NA
    storage.mode(naValue) <- storage.mode(x)
    q <- matrix(naValue, nrow=0L, ncol=length(probs))
  }

  # Add names
  digits <- max(2L, getOption("digits"))
  colnames(q) <- sprintf("%.*g%%", digits, 100*probs)

  # Drop singleton dimensions?
  if (drop) {
    q <- drop(q)
  }

  q
}


############################################################################
# HISTORY:
# 2014-11-18 [HB]
# o SPEEDUP: Made (col|row)Quantiles(x) faster for 'x' without missing
#   values (and default type=7L quantiles).
# 2014-11-16 [HB]
# o SPEEDUP: colQuantiles(x) is no longer using colQuantiles(t(x)).
# 2013-07-29 [HB]
# o DOCUMENTATION: The dimension of the return value was swapped
#   in help("rowQuantiles").  Noticed by PL.
# 2011-11-29 [HB]
# o Added an Rdoc example.
# 2010-10-06 [HB]
# o Now the result of {row|col}Quantiles() contains column names.
# 2008-03-26 [HB]
# o Created.
############################################################################
