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
#  \item{idxs, rows, cols}{A @vector indicating subset of elements (or rows and/or columns)
#     to operate over. If @NULL, no subsetting is done.}
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
#   If \code{method="expSumLog"}, then then @see "product" function
#   is used, which calculates the produce via the logarithmic transform
#   (treating negative values specially).  This improves the precision
#   and lowers the risk for numeric overflow.
#   If \code{method="direct"}, the direct product is calculated via
#   the @see "base::prod" function.
# }
#
# \section{Missing values}{
#   Note, if \code{method="expSumLog"}, \code{na.rm=FALSE}, and \code{x}
#   contains missing values (@NA or @NaN), then the calculated value
#   is also missing value.
#   Note that it depends on platform whether @NaN or @NA is returned
#   when an @NaN exists, cf. @see "base::is.nan".
# }
#
# @author "HB"
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/###########################################################################
rowProds <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, method=c("direct", "expSumLog"), ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Preallocate result (zero:ed by default)
  n <- nrow(x)
  y <- double(length=n)

  # Nothing todo?
  if (n == 0L) return(y)

  # Argument 'method':
  method <- method[1L]

  # How to calculate product?
  if (method == "expSumLog") {
    prod <- product
  } else if (method == "direct") {
  } else {
    stop("Unknown value of argument 'method': ", method)
  }

  for (ii in seq_len(n)) {
    y[ii] <- prod(x[ii,,drop=TRUE], na.rm=na.rm)
  }

  y;
} # rowProds()

colProds <- function(x, rows=NULL, cols=NULL, na.rm=FALSE, method=c("direct", "expSumLog"), ...) {
  # Apply subset
  if (!is.null(rows) && !is.null(cols)) x <- x[rows,cols,drop=FALSE]
  else if (!is.null(rows)) x <- x[rows,,drop=FALSE]
  else if (!is.null(cols)) x <- x[,cols,drop=FALSE]

  # Preallocate result (zero:ed by default)
  n <- ncol(x)
  y <- double(length=n)

  # Nothing todo?
  if (n == 0L) return(y)

  # Argument 'method':
  method <- method[1L]

  # How to calculate product?
  if (method == "expSumLog") {
    prod <- product
  } else if (method == "direct") {
  } else {
    stop("Unknown value of argument 'method': ", method)
  }

  for (ii in seq_len(n)) {
    y[ii] <- prod(x[,ii,drop=TRUE], na.rm=na.rm)
  }

  y
} # colProds()


############################################################################
# HISTORY:
# 2015-06-03 [DJ]
# o Supported subsetted computation.
# 2014-11-15 [HB]
# o SPEEDUP: No longer using match.arg() due to its overhead.
# 2014-06-04 [HB]
# o Now col- and rowProds() utilizes new product() function.
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
