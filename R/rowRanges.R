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
#   @numeric Nx2 (Kx2) @matrix.
#   \code{rowMins()/rowMaxs()} (\code{colMins()/colMaxs()}) returns a 
#   @numeric @vector of length N (K).
# }
#
# \details{
#   The \code{rowRanges()} function uses the much faster @see "rowOrderStats"
#   if there are no missing values.
# }
#
# @author
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
  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(as.vector(x))) {
    xRange <- rowOrderStats(x, which=1);
    xRange <- cbind(xRange, rowOrderStats(x, which=ncol(x)));
    return(xRange);
  }

  na.rm <- as.logical(na.rm);
  ncol <- ncol(x);
  nrow <- nrow(x);

  if (ncol == 0) {
    # Default range is (+Inf,-Inf).  See explanation in help(min)
    xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2, byrow=TRUE);
    return(xRange);
  } else if (ncol == 1) {
    xRange <- matrix(x[,1,drop=TRUE], nrow=nrow, ncol=2);
    if (na.rm) {
      todo <- which(is.na(xRange[,1]));
      if (length(todo) > 0) {
        xRange[todo,] <- matrix(c(Inf,-Inf), 
                             nrow=length(todo), ncol=2, byrow=TRUE);
      }
    }
    return(xRange);
  }

  # Default range is (+Inf,-Inf).  See explanation in help(min)
  xRange <- matrix(c(Inf,-Inf), nrow=nrow, ncol=2, byrow=TRUE);

  if (na.rm) {
    anyMissing <- TRUE;  # Either none or both of xMin & xMax are NAs.
    for (cc in 1:ncol) {
      xValues <- x[,cc];

      # Always update the elements with missing ranges.
      if (anyMissing) {
        todo <- is.na(xRange[,1]);  # Don't need column 2.
        anyMissing <- (sum(todo) > 0);
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
      isExtreme <- (xValues < xRange[idxs,1]);
      xRange[idxs[isExtreme],1] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2]);
      xRange[idxs[isExtreme],2] <- xValues[isExtreme];
    }
  } else {
    for (cc in 1:ncol) {
      # Update only elements with non-missing extremes
      idxs <- which(!is.na(xRange[,1]));

      # Done?
      if (length(idxs) == 0)
        break;

      # Assign NAs?
      xValues <- x[idxs,cc];
      isMissing <- is.na(xValues);
      xRange[idxs[isMissing],1:2] <- NA;

      # Finally, compare non-missing values
      idxs <- idxs[!isMissing];

      # Done?
      if (length(idxs) == 0)
        break;

      xValues <- x[idxs,cc];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1]);
      xRange[idxs[isExtreme],1] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2]);
      xRange[idxs[isExtreme],2] <- xValues[isExtreme];
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
  # Use the much faster rowOrderStats() if possible
  if (!anyMissing(as.vector(x))) {
    xRange <- rowOrderStats(x, which=1);
    xRange <- cbind(xRange, rowOrderStats(x, which=ncol(x)));
    return(xRange);
  }

  na.rm <- as.logical(na.rm);
  ncol <- ncol(x);
  nrow <- nrow(x);

  if (nrow == 0) {
    # Default range is (+Inf,-Inf).  See explanation in help(min)
    xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2, byrow=TRUE);
    return(xRange);
  } else if (nrow == 1) {
    xRange <- matrix(x[1,,drop=TRUE], nrow=ncol, ncol=2);
    if (na.rm) {
      todo <- which(is.na(xRange[,1]));
      if (length(todo) > 0) {
        xRange[todo,] <- matrix(c(Inf,-Inf), 
                             nrow=length(todo), ncol=2, byrow=TRUE);
      }
    }
    return(xRange);
  }

  # Default range is (+Inf,-Inf).  See explanation in help(min)
  xRange <- matrix(c(Inf,-Inf), nrow=ncol, ncol=2, byrow=TRUE);

  if (na.rm) {
    anyMissing <- TRUE;  # Either none or both of xMin & xMax are NAs.
    for (rr in 1:nrow) {
      xValues <- x[rr,];

      # Always update the elements with missing ranges.
      if (anyMissing) {
        todo <- is.na(xRange[,1]);  # Don't need column 2.
        anyMissing <- (sum(todo) > 0);
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
      isExtreme <- (xValues < xRange[idxs,1]);
      xRange[idxs[isExtreme],1] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2]);
      xRange[idxs[isExtreme],2] <- xValues[isExtreme];
    }
  } else {
    for (rr in 1:nrow) {
      # Update only elements with non-missing extremes
      idxs <- which(!is.na(xRange[,1]));

      # Done?
      if (length(idxs) == 0)
        break;

      # Assign NAs?
      xValues <- x[rr,idxs];
      isMissing <- is.na(xValues);
      xRange[idxs[isMissing],1:2] <- NA;

      # Finally, compare non-missing values
      idxs <- idxs[!isMissing];

      # Done?
      if (length(idxs) == 0)
        break;

      xValues <- x[rr,idxs];

      # Identify smaller values
      isExtreme <- (xValues < xRange[idxs,1]);
      xRange[idxs[isExtreme],1] <- xValues[isExtreme];

      # Identify greater values
      isExtreme <- (xValues > xRange[idxs,2]);
      xRange[idxs[isExtreme],2] <- xValues[isExtreme];
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
  rowRanges(x, na.rm=na.rm, ...)[,1];
}

rowMaxs <- function(x, na.rm=FALSE, ...) {
  rowRanges(x, na.rm=na.rm, ...)[,2];
}

colMins <- function(x, na.rm=FALSE, ...) {
  colRanges(x, na.rm=na.rm, ...)[,1];
}

colMaxs <- function(x, na.rm=FALSE, ...) {
  colRanges(x, na.rm=na.rm, ...)[,2];
}


############################################################################
# HISTORY:
# 2009-02-01
# o BUG FIX: colRanges(x) would give an error if nrow(x) == 0.
# 2008-03-25
# o Since colOrderStats() cannot handle missing values we use the slower
#   colRanges() for the case when na.rm=TRUE.
# o Added {row|col}{Min|Max}s().
# o Created {row|col}Ranges() for scratch. Handles NAs.
############################################################################
