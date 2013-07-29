###########################################################################/**
# @RdocFunction rowRanges
# @alias colRanges
# \alias{rowRanges,matrix-method}
# \alias{colRanges,matrix-method}
# @alias rowMins
# \alias{rowMins,matrix-method}
# @alias rowMaxs
# \alias{rowMaxs,matrix-method}
# @alias colMins
# \alias{colMins,matrix-method}
# @alias colMaxs
# \alias{colMaxs,matrix-method}
#
# @title "Gets the range of values in each row (column) of a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#   rowRanges(x, na.rm=FALSE, ...)
#   colRanges(x, na.rm=FALSE, ...)
#   rowMins(x, na.rm=FALSE, ...)
#   colMins(x, na.rm=FALSE, ...)
#   rowMaxs(x, na.rm=FALSE, ...)
#   colMaxs(x, na.rm=FALSE, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{na.rm}{If @TRUE, @NAs are excluded first, otherwise not.}
#  \item{...}{Not used.}
# }
#
# \value{
#   \code{rowRanges()} (\code{colRanges()}) returns a
#   @numeric Nx2 (Kx2) @matrix, where
#   N (K) is the number of rows (columns) for which the ranges are
#   calculated.
#
#   \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a
#   @numeric @vector of length N (K).
# }
#
# \details{
#   The \code{rowRanges()} function uses the much faster @see "rowOrderStats"
#   if there are no missing values.
# }
#
# @author "HB"
#
# \seealso{
#   @see "rowOrderStats" and @see "rowRanges".
# }
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
setGeneric("rowRanges", function(x, na.rm=FALSE, ...) {
  standardGeneric("rowRanges")
})

setMethod("rowRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  na.rm <- as.logical(na.rm);
  ncol <- ncol(x);
  nrow <- nrow(x);

  # Special cases: Nx0 and Nx1 matrices
  if (ncol == 0L) {
    # Default range is (+Inf,-Inf).  See explanation in help(min)
    xRange <- matrix(c(Inf,-Inf), nrow=nrow, ncol=2L, byrow=TRUE);
    return(xRange);
  } else if (ncol == 1L) {
    xRange <- matrix(x[,1L,drop=TRUE], nrow=nrow, ncol=2L);
    if (na.rm) {
      todo <- which(is.na(xRange[,1L]));
      ntodo <- length(todo);
      if (ntodo > 0L) {
        xRange[todo,] <- matrix(c(Inf,-Inf),
                                nrow=ntodo, ncol=2L, byrow=TRUE);
      }
    }
    return(xRange);
  }

  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(x)) {
    xRange <- rowOrderStats(x, which=1L);
    xRange <- c(xRange, rowOrderStats(x, which=ncol(x)));
    dim(xRange) <- c(nrow(x), 2L);
    return(xRange);
  }


  # Default range is (+Inf,-Inf).  See explanation in help(min)
  xRange <- matrix(c(Inf,-Inf), nrow=nrow, ncol=2L, byrow=TRUE);

  if (na.rm) {
    anyMissing <- TRUE;  # Either none or both of xMin & xMax are NAs.
    for (cc in 1:ncol) {
      xValues <- x[,cc];

      # Always update the elements with missing ranges.
      if (anyMissing) {
        todo <- is.na(xRange[,1L]);  # Don't need column 2.
        anyMissing <- (sum(todo) > 0L);
        if (anyMissing) {
          xRange[todo,1:2] <- xValues[todo];
        }

        # Compare the rest for which there are non-missing values
        todo <- !(todo | is.na(xValues));
      } else {
        # Compare the rest for which there are non-missing values
        todo <- !is.na(xValues);
      }

      idxs <- which(todo);
      xValues <- xValues[idxs];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1L]);
      xRange[idxs[isExtreme],1L] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2L]);
      xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
    }
  } else {
    for (cc in 1:ncol) {
      # Update only elements with non-missing extremes
      idxs <- which(!is.na(xRange[,1L]));

      # Done?
      if (length(idxs) == 0L)
        break;

      # Assign NAs?
      xValues <- x[idxs,cc];
      isMissing <- is.na(xValues);
      xRange[idxs[isMissing],1:2] <- NA;

      # Finally, compare non-missing values
      idxs <- idxs[!isMissing];

      # Done?
      if (length(idxs) == 0L)
        break;

      xValues <- x[idxs,cc];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1L]);
      xRange[idxs[isExtreme],1L] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2L]);
      xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
    }
  }

  # Return data type consistent with range()
  if (storage.mode(x) %in% c("logical", "integer")) {
    if (!any(is.infinite(xRange)))
      storage.mode(xRange) <- "integer";
  }

  xRange;
}) # rowRanges()


setGeneric("colRanges", function(x, na.rm=FALSE, ...) {
  standardGeneric("colRanges")
})

setMethod("colRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  na.rm <- as.logical(na.rm);
  ncol <- ncol(x);
  nrow <- nrow(x);

  # Special cases: 0xN and 1xN matrices
  if (nrow == 0L) {
    # Default range is (+Inf,-Inf).  See explanation in help(min)
    xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2L, byrow=TRUE);
    return(xRange);
  } else if (nrow == 1L) {
    xRange <- matrix(x[1,,drop=TRUE], nrow=ncol, ncol=2L);
    if (na.rm) {
      todo <- which(is.na(xRange[,1L]));
      ntodo <- length(todo);
      if (ntodo > 0L) {
        xRange[todo,] <- matrix(c(Inf,-Inf),
                                nrow=ntodo, ncol=2L, byrow=TRUE);
      }
    }
    return(xRange);
  }

  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(x)) {
    x <- t(x);
    xRange <- rowOrderStats(x, which=1L);
    xRange <- c(xRange, rowOrderStats(x, which=ncol(x)));
    dim(xRange) <- c(nrow(x), 2L);
    return(xRange);
  }

  # Default range is (+Inf,-Inf).  See explanation in help(min)
  xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2L, byrow=TRUE);

  if (na.rm) {
    anyMissing <- TRUE;  # Either none or both of xMin & xMax are NAs.
    for (rr in 1:nrow) {
      xValues <- x[rr,];

      # Always update the elements with missing ranges.
      if (anyMissing) {
        todo <- is.na(xRange[,1L]);  # Don't need column 2.
        anyMissing <- (sum(todo) > 0L);
        if (anyMissing) {
          xRange[todo,1:2] <- xValues[todo];
        }

        # Compare the rest for which there are non-missing values
        todo <- !(todo | is.na(xValues));
      } else {
        # Compare the rest for which there are non-missing values
        todo <- !is.na(xValues);
      }

      idxs <- which(todo);
      xValues <- xValues[idxs];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1L]);
      xRange[idxs[isExtreme],1L] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2L]);
      xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
    }
  } else {
    for (rr in 1:nrow) {
      # Update only elements with non-missing extremes
      idxs <- which(!is.na(xRange[,1L]));

      # Done?
      if (length(idxs) == 0L)
        break;

      # Assign NAs?
      xValues <- x[rr,idxs];
      isMissing <- is.na(xValues);
      xRange[idxs[isMissing],1:2] <- NA;

      # Finally, compare non-missing values
      idxs <- idxs[!isMissing];

      # Done?
      if (length(idxs) == 0L)
        break;

      xValues <- x[rr,idxs];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1L]);
      xRange[idxs[isExtreme],1L] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2L]);
      xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
    }
  }

  # Return data type consistent with range()
  if (storage.mode(x) %in% c("logical", "integer")) {
    if (!any(is.infinite(xRange)))
      storage.mode(xRange) <- "integer";
  }

  xRange;
}) # colRanges()




rowMins <- function(x, na.rm=FALSE, ...) {
  rowRanges(x, na.rm=na.rm, ...)[,1L];
}

rowMaxs <- function(x, na.rm=FALSE, ...) {
  rowRanges(x, na.rm=na.rm, ...)[,2L];
}

colMins <- function(x, na.rm=FALSE, ...) {
  colRanges(x, na.rm=na.rm, ...)[,1L];
}

colMaxs <- function(x, na.rm=FALSE, ...) {
  colRanges(x, na.rm=na.rm, ...)[,2L];
}


############################################################################
# HISTORY:
# 2013-07-28
# o BUG FIX: rowRanges(x) on an Nx0 matrix 'x' would give an error.
#   Ditto for colRanges(x).
# 2009-02-01
# o BUG FIX: colRanges(x) would give an error if nrow(x) == 0.
# 2008-03-25
# o Since colOrderStats() cannot handle missing values we use the slower
#   colRanges() for the case when na.rm=TRUE.
# o Added {row|col}{Min|Max}s().
# o Created {row|col}Ranges() for scratch. Handles NAs.
############################################################################
