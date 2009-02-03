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
#  rowProds(x, ...)
#  colProds(x, ...)
# }
#
# \arguments{
#  \item{x}{A @numeric NxK @matrix.}
#  \item{...}{Arguments passed to @see "base::rowSums".}
# }
#
# \value{
#   Returns a @numeric @vector of length N (K).
# }
#
# \details{
#   Internally the product is calculated via the logarithmic transform,
#   treating zeros and negative values specially.
# }
#
# @author
#
# @keyword array
# @keyword iteration
# @keyword robust
# @keyword univar
#*/########################################################################### 
rowProds <- function(x, ...) {
  # Check for rows with at least one zero
  s <- (x == 0);
  s <- rowSums(s);

  # Only calculate the products on rows without zeros
  ok <- (s == 0);
  rm(s);
  x <- x[ok,,drop=FALSE];

  # Preallocate result (zero:ed by default)
  y <- vector(mode(x), nrow(x));

  # Infer signs
  s <- (x < 0);
  s <- rowSums(s);
  s <- (s %% 2);
  s <- c(+1,-1)[s+1];

  # Calculate the product via the log transform
  x <- abs(x);
  x <- log(x);
  x <- rowSums(x, ...);
  x <- exp(x);
  x <- s*x;
  y[ok] <- x;

  rm(ok, s, x);

  y;
}

colProds <- function(x, ...) {
  x <- t(x);
  rowProds(x, ...);
}

############################################################################
# HISTORY:
# 2008-07-30 [HB] 
# o Now it is only rows without zeros for which the calculation is
#   actually performed.
# 2008-03-26 [HB] 
# o Created.
############################################################################
