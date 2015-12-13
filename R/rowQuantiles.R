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
#  \item{rows, cols}{A @vector indicating subset of rows (and/or columns)
#    to operate over. If @NULL, no subsetting is done.}
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
rowQuantiles <- function(x, rows=NULL, cols=NULL, probs=seq(from=0, to=1, by=0.25), na.rm=FALSE, type=7L, ..., drop=TRUE) {
  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps,1+eps]")
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  if (nrow > 0L && ncol > 0L) {
    naRows <- rowAnyMissings(x)
    hasNA <- any(naRows)
    if (!hasNA) na.rm <- FALSE

    if (!hasNA && type == 7L) {
      n <- ncol
      idxs <- 1 + (n-1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN=1L, FUN=sort, partial=partial)
      if (is.null(dim(xp))) dim(xp) <- c(1L, length(xp))

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
      naValue <- NA_real_
      storage.mode(naValue) <- storage.mode(x)
      q <- matrix(naValue, nrow=nrow, ncol=length(probs))

      # For each row...
      rows <- seq_len(nrow)

      # Rows with NAs should return all NAs (so skip those)
      if (hasNA && !na.rm) rows <- rows[!naRows]

      for (kk in rows) {
        xkk <- x[kk,]
        if (na.rm) xkk <- xkk[!is.na(xkk)]
        q[kk,] <- quantile(xkk, probs=probs, na.rm=FALSE, type=type, ...)
      }
    } # if (type ...)
  } else {
    naValue <- NA_real_
    storage.mode(naValue) <- storage.mode(x)
    q <- matrix(naValue, nrow=nrow, ncol=length(probs))
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

colQuantiles <- function(x, rows=NULL, cols=NULL, probs=seq(from=0, to=1, by=0.25), na.rm=FALSE, type=7L, ..., drop=TRUE) {
  # Argument 'probs':
  if (anyMissing(probs)) {
    stop("Argument 'probs' contains missing values")
  }
  eps <- 100 * .Machine$double.eps
  if (any((probs < -eps | probs > 1 + eps))) {
    stop("Argument 'probs' is out of range [0-eps,1+eps]")
  }

  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Argument 'x':
  nrow <- nrow(x)
  ncol <- ncol(x)

  if (nrow > 0L && ncol > 0L) {
    naCols <- colAnyMissings(x)
    hasNA <- any(naCols)
    if (!hasNA) na.rm <- FALSE

    if (!hasNA && type == 7L) {
      n <- nrow
      idxs <- 1 + (n-1) * probs
      idxs_lo <- floor(idxs)
      idxs_hi <- ceiling(idxs)
      partial <- sort(unique(c(idxs_lo, idxs_hi)))

      xp <- apply(x, MARGIN=2L, FUN=sort, partial=partial)
      if (is.null(dim(xp))) dim(xp) <- c(1L, length(xp))

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
      naValue <- NA_real_
      storage.mode(naValue) <- storage.mode(x)
      q <- matrix(naValue, nrow=ncol, ncol=length(probs))

      # For each column...
      cols <- seq_len(ncol)

      # Columns with NAs should return all NAs (so skip those)
      if (hasNA && !na.rm) cols <- cols[!naCols]

      for (kk in cols) {
        xkk <- x[,kk]
        if (na.rm) xkk <- xkk[!is.na(xkk)]
        q[kk,] <- quantile(xkk, probs=probs, na.rm=FALSE, type=type, ...)
      }
    } # if (type ...)
  } else {
    naValue <- NA_real_
    storage.mode(naValue) <- storage.mode(x)
    q <- matrix(naValue, nrow=ncol, ncol=length(probs))
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
# 2015-05-29 [DJ]
# o Supported subsetted computation.
# 2015-01-26
# o CONSISTENCY: Now rowQuantiles(x, na.rm=TRUE) returns all NAs for rows
#   with missing values.  Analogously for colQuantiles().  Previously, an
#   error was thrown saying missing values are not allowed.
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
