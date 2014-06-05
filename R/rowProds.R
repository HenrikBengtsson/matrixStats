###########################################################################/**
# @RdocFunction rowProds
# @alias rowProds
# @alias colProds
# @alias product
#
# @title "Calculates the product for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowProds
#  @usage colProds
#  @usage product
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{na.rm}{If @TRUE, missing values are ignored, otherwise not.}
#  \item{method}{A @character string specifying how each product
#   is calculated.}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   If \code{method="expSumLog"}, then the product is calculated via
#   the logarithmic transform (treating zeros and negative values
#   specially).  This improves the precision and lowers the risk
#   for numeric overflow.
#   If \code{method="direct"}, the direct product is calculated
#   via @see "base::prod".
# }
#
# @author "HB"
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowProds <- function(x, na.rm=FALSE, method=c("expSumLog", "direct"), ...) {
  # Argument 'method':
  method <- match.arg(method);
  if (method == "direct") stop("Not implemented.");

  # Preallocate result (zero:ed by default)
  modeX <- mode(x);
  n <- nrow(x);
  y <- vector(modeX, length=n);

  # Nothing todo?
  if (n == 0L) {
    return(y);
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Handle missing values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  rowHasNA <- is.na(rowCounts(x, na.rm=FALSE));
  hasNAs <- any(rowHasNA);
  if (hasNAs) {
    if (na.rm) {
      oneValue <- 1;
      mode(oneValue) <- modeX;
      x[is.na(x)] <- oneValue; # EXPENSIVE: Copy matrix
      rowHasNA <- logical(n); # Defaults to FALSE
      hasNAs <- FALSE;
    } else {
      # Among the rows with missing values, which has NaN:s?
      rowHasNaN <- logical(n); # Defaults to FALSE
      isNaN <- is.nan(x[rowHasNA,,drop=FALSE]);
      rowHasNaN[rowHasNA] <- rowAnys(isNaN);
    }
  }
  isNA <- NULL; # Not needed anymore


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Handle zeros
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Check for rows with at least one zero
  rowHasZero <- rowAnys(x, value=0);


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Only calculate the products on rows without zeros and missing values
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  toCalc <- which(!rowHasNA & !rowHasZero);
  rowHasZero <- NULL; # Not needed anymore

  # Subset?
  if (length(toCalc) < n) {
    x <- x[toCalc,,drop=FALSE]; # EXPENSIVE: Coerce/copy matrix
  }


  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  # Calculate product via logarithmic sum
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if (nrow(x) > 0L) {
    # Infer signs
    isNeg <- (x < 0); # EXPENSIVE: Coerce/copy matrix
    isNeg <- rowCounts(isNeg, na.rm=FALSE);
    isNeg <- (isNeg %% 2);
    isNeg <- c(+1,-1)[isNeg+1];

    # Calculate the product via the log transform
    x <- abs(x);  # EXPENSIVE: Copy matrix
#    x <- log(x);  # EXPENSIVE: Copy matrix
    x <- log2(x);  # EXPENSIVE: Copy matrix
    x <- rowSums(x, na.rm=FALSE, ...);
#    x <- exp(x);
    x <- 2^x;
    x <- isNeg*x;
    isNeg <- NULL; # Not needed anymore

    y[toCalc] <- x;
  } # if (nrow(x) > 0L)
  toCalc <- NULL; # Not needed anymore

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
# 2014-06-04 [HB]
# o Added argument 'method' to col- and rowProds().
# 2014-06-02 [HB]
# o Now rowProds() uses rowCounts(x) when 'x' is logical.
# o Now rowProds() avoids subsetting rows unless needed.
# 2014-03-31 [HB]
# o BUG FIX: rowProds() would throw "Error in rowSums(isNeg) : 'x' must
#   be an array of at least two dimensions" on matrices where all rows
#   contained at least on zero.  Thanks to Roel Verbelen at KU Leuven
#   for the report.
# 2013-11-23 [HB]
# o MEMORY: rowProbs() does a better job cleaning out allocated
#   objects sooner.
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
