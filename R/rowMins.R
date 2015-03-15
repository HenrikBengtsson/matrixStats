###########################################################################/**
# @RdocFunction rowMins
# @alias colMins
#
# @title "Find the min elements for each row (column) in a matrix"
#
# \description{
#   @get "title".
# }
#
# \usage{
#  @usage rowMins_R
#  @usage colMins_R
#  @usage rowMins_C
#  @usage colMins_C
# }
#
# \arguments{
#  \item{x}{A NxK @matrix.}
#  \item{cols}{An @integer @vector specifying the columns considered}
#  \item{rows}{An @integer @vector specifying the rows considered}
#  \item{...}{Not used.}
# }
#
# \value{
#   Returns a @vector of length N.
# }
#
# \details{
#   The implementation of \code{rowMins_C()} is optimized for both speed
#   and memory by using C.
# }
#
# @author "Dongcan Jiang"
#
# \seealso{
#   @see "rowMins" and @see "colMins"
# }
#
# @keyword array
#*/###########################################################################
rowMins_R <- function(x, cols=1:dim(x)[2], ...) {
  suppressWarnings({
    apply(x[,cols], MARGIN=1L, FUN=min, ...)
  })
}

colMins_R <- function(x, rows=1:dim(x)[1], ...) {
  suppressWarnings({
    apply(x[rows,], MARGIN=2L, FUN=min, ...)
  })
}

rowMins_C.init <- function() {
  library(inline)
  sigFunc <- signature(x="array", cols="array")
  code <- '
    int N = length(cols);
    int M = INTEGER(GET_DIM(x))[0];
    SEXP res;
    if (isInteger(x)) PROTECT(res = allocVector(INTSXP, M));
    else if (isReal(x)) PROTECT(res = allocVector(REALSXP, M));
    else error("Only Integer and Real are supported.");
    for (int i = 0; i < M; ++ i) {
      int minValue_Integer;
      double minValue_Real;
      if (isInteger(x)) minValue_Integer = INTEGER(x)[i+M*(INTEGER(cols)[0]-1)];
      else if (isReal(x)) minValue_Real = REAL(x)[i+M*(INTEGER(cols)[0]-1)];

      for (int j = 1; j < N; ++ j) {
        if (isInteger(x)) {
          int value = INTEGER(x)[i+M*(INTEGER(cols)[j]-1)];
          if (value < minValue_Integer) {
            minValue_Integer = value;
          }
        } else if (isReal(x)) {
          double value = REAL(x)[i+M*(INTEGER(cols)[j]-1)];
          if (value < minValue_Real) {
            minValue_Real = value;
          }
        }
      }
      if (isInteger(x)) INTEGER(res)[i] = minValue_Integer;
      else if (isReal(x)) REAL(res)[i] = minValue_Real;
    }
    UNPROTECT(1);
    return res;
  '
  rowMins_C_Inline <- cfunction(sigFunc, code)
}

rowMins_C <- function(x, cols=dim(x)[2], ...) {
  rowMins_C_Inline <- rowMins_C.init()
  rowMins_C_Inline(x, cols)
}

colMins_C <- function(x, rows=1:dim(x)[1], ...) {
  # Not supported yet. Just use the R version.
  colMins_R(x, rows)
}

