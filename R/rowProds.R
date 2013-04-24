###########################################################################/**
# @RdocFunction rowProds
# @alias rowProds
# @alias colProds
#
# @title "Calculates the product for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  rowProds(x, na.rm=FALSE, ...)
#  colProds(x, na.rm=FALSE, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{na.rm}{If @TRUE, missing values are ignored, otherwise not.}
#  \item{...}{Arguments passed to @see "base::rowSums".}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   Internally the product is calculated via the logarithmic transform,
#   treating zeros and negative values specially.  This enhance the
#   precision and lower the risk for overflow.
# }
#
# @author "HB"
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowProds <- function(x, na.rm=FALSE, ...) {
  # Preallocate result (zero:ed by default)
  modeX <- mode(x);
  n <- nrow(x);
  y <- vector(modeX, length=n);

  # Nothing todo?
  if (n == 0) {
    return(y);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Handle missing values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  isNA <- is.na(x);
  rowHasNA <- rowAnys(isNA);
  hasNAs <- any(rowHasNA);
  if (hasNAs) {
    if (na.rm) {
      oneValue <- 1;
      mode(oneValue) <- modeX;
      x[isNA] <- oneValue;
      rowHasNA <- logical(n); # Defaults to FALSE
      hasNAs <- FALSE;
    } else {
      # Among the rows with missing values, which has NaN:s?
      rowHasNaN <- logical(n); # Defaults to FALSE
      isNaN <- is.nan(x[rowHasNA,,drop=FALSE]);
      rowHasNaN[rowHasNA] <- rowAnys(isNaN);
    }
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Handle zeros
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Check for rows with at least one zero
  isZero <- (x == 0);
  rowHasZero <- rowAnys(isZero);

  # Only calculate the products on rows without zeros and missing values
  toCalc <- (!rowHasNA & !rowHasZero);
  x <- x[toCalc,,drop=FALSE];


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Calculate product via logarithmic sum
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Infer signs
  isNeg <- (x < 0);
  isNeg <- rowSums(isNeg);
  isNeg <- (isNeg %% 2);
  isNeg <- c(+1,-1)[isNeg+1];

  # Calculate the product via the log transform
  x <- abs(x);
  x <- log(x);
  x <- rowSums(x, ...);
  x <- exp(x);
  x <- isNeg*x;
  y[toCalc] <- x;


  # Missing values?
  if (hasNAs) {
    naValue <- NA;
    mode(naValue) <- modeX;
    y[rowHasNA] <- naValue;
    y[rowHasNaN] <- NaN;
  }

  y;
} # rowProds()

colProds <- function(x, na.rm=FALSE, ...) {
  x <- t(x);
  rowProds(x, na.rm=na.rm, ...);
} # colProds()

############################################################################
# HISTORY:
# 2012-06-25 [HB]
# o GENERALIZATION: Now row- and colProds() handles missing values.
# o BUG FIX: In certain cases, row- and colProds() would return NA instead
#   of 0 for some elements.  Thanks Brenton Kenkel at University of
#   Rochester for reporting on this.
# 2008-07-30 [HB]
# o Now it is only rows without zeros for which the calculation is
#   actually performed.
# 2008-03-26 [HB]
# o Created.
############################################################################
