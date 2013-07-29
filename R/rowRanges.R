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
#   @usage rowRanges
#   @usage colRanges
#   @usage rowMins
#   @usage colMins
#   @usage rowMaxs
#   @usage colMaxs
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
#   @see "rowOrderStats" and @see "base::pmin.int".
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

setGeneric("colRanges", function(x, na.rm=FALSE, ...) {
  standardGeneric("colRanges")
})

setMethod("rowRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  .rowRanges(x, na.rm=na.rm, which=1:2, ...);
}) # rowRanges()

setMethod("colRanges", signature(x="matrix"), function(x, na.rm=FALSE, ...) {
  .colRanges(x, na.rm=na.rm, which=1:2, drop=FALSE, ...);
}) # colRanges()


rowMins <- function(x, na.rm=FALSE, ...) {
  .rowRanges(x, na.rm=na.rm, which=1L, drop=TRUE, ...);
}

rowMaxs <- function(x, na.rm=FALSE, ...) {
  .rowRanges(x, na.rm=na.rm, which=2L, drop=TRUE, ...);
}

colMins <- function(x, na.rm=FALSE, ...) {
  .colRanges(x, na.rm=na.rm, which=1L, drop=TRUE, ...);
}

colMaxs <- function(x, na.rm=FALSE, ...) {
  .colRanges(x, na.rm=na.rm, which=2L, drop=TRUE, ...);
}

.rowRanges <- function(x, na.rm=FALSE, which=1:2, drop=TRUE, ...) {
  na.rm <- as.logical(na.rm);
  dim <- dim(x);
  nrow <- dim[1L];
  ncol <- dim[2L];

  # Default range is (+Inf,-Inf). See explanation in help(min)

  # Special cases: Nx0 and Nx1 matrices
  if (ncol == 0L) {
    xRange <- matrix(c(Inf,-Inf), nrow=nrow, ncol=2L, byrow=TRUE);
    xRange <- xRange[,which,drop=drop];
    return(xRange);
  } else if (ncol == 1L) {
    xValues <- x[,1L,drop=TRUE];
    xRange <- matrix(xValues, nrow=nrow, ncol=2L);
    if (na.rm) {
      todo <- which(is.na(xValues));
      ntodo <- length(todo);
      if (ntodo > 0L) {
        xRange[todo,] <- matrix(c(Inf,-Inf), nrow=ntodo, ncol=2L, byrow=TRUE);
      }
    }
    xRange <- xRange[,which,drop=drop];
    return(xRange);
  }

  min <- (is.element(1L, which));
  max <- (is.element(2L, which));

  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(x)) {
    xRange <- NULL;
    if (min) {
      xRange <- c(xRange, rowOrderStats(x, which=1L))
    }
    if (max) {
      xRange <- c(xRange, rowOrderStats(x, which=ncol));
    }
    if (!drop || length(which) > 1L) {
      dim(xRange) <- c(nrow(x), length(which));
    }
    return(xRange);
  }


  # Default range is (+Inf,-Inf).  See explanation in help(min)
  xRange <- matrix(c(Inf,-Inf), nrow=nrow, ncol=2L, byrow=TRUE);

  if (na.rm) {
    anyMissing <- TRUE;  # Either none or both of xMin & xMax are NAs.
    for (cc in 1:ncol) {
      xValues <- x[,cc,drop=TRUE];

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

      # Identify smaller values?
      if (min) {
        isExtreme <- (xValues < xRange[idxs,1L]);
        xRange[idxs[isExtreme],1L] <- xValues[isExtreme];
      }

      # Identify greater values?
      if (max) {
        isExtreme <- (xValues > xRange[idxs,2L]);
        xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
      }
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

      # Identify smaller values?
      if (min) {
        isExtreme <- (xValues < xRange[idxs,1L]);
        xRange[idxs[isExtreme],1L] <- xValues[isExtreme];
      }

      # Identify greater values?
      if (max) {
        isExtreme <- (xValues > xRange[idxs,2L]);
        xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
      }
    }
  }

  xRange <- xRange[,which,drop=drop];

  # Return data type consistent with range()
  if (storage.mode(x) %in% c("logical", "integer")) {
    if (!any(is.infinite(xRange)))
      storage.mode(xRange) <- "integer";
  }

  xRange;
} # .rowRanges()

.colRanges <- function(x, na.rm=FALSE, which=1:2, drop=TRUE, ...) {
  na.rm <- as.logical(na.rm);
  dim <- dim(x);
  nrow <- dim[1L];
  ncol <- dim[2L];

  # Default range is (+Inf,-Inf). See explanation in help(min)

  # Special cases: 0xN and 1xN matrices
  if (nrow == 0L) {
    xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2L, byrow=TRUE);
    xRange <- xRange[,which,drop=drop];
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
    xRange <- xRange[,which,drop=drop];
    return(xRange);
  }

  min <- (is.element(1L, which));
  max <- (is.element(2L, which));

  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(x)) {
    x <- t(x);
    xRange <- NULL;
    if (min) {
      xRange <- c(xRange, rowOrderStats(x, which=1L));
    }
    if (max) {
      xRange <- c(xRange, rowOrderStats(x, which=ncol(x)));
    }
    if (!drop || length(which) > 1L) {
      dim(xRange) <- c(nrow(x), length(which));
    }
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

      # Identify smaller values?
      if (min) {
        isExtreme <- (xValues < xRange[idxs,1L]);
        xRange[idxs[isExtreme],1L] <- xValues[isExtreme];
      }

      # Identify greater values?
      if (max) {
        isExtreme <- (xValues > xRange[idxs,2L]);
        xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
      }
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

      # Identify smaller values?
      if (min) {
        isExtreme <- (xValues < xRange[idxs,1L]);
        xRange[idxs[isExtreme],1L] <- xValues[isExtreme];
      }

      # Identify greater values?
      if (max) {
        isExtreme <- (xValues > xRange[idxs,2L]);
        xRange[idxs[isExtreme],2L] <- xValues[isExtreme];
      }
    }
  }

  xRange <- xRange[,which,drop=drop];

  # Return data type consistent with range()
  if (storage.mode(x) %in% c("logical", "integer")) {
    if (!any(is.infinite(xRange)))
      storage.mode(xRange) <- "integer";
  }

  xRange;
} # .colRanges()




############################################################################
# HISTORY:
# 2013-07-28
# o SPEEDUP: Made (col|row)Mins() and (col|row)Maxs() faster.
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
