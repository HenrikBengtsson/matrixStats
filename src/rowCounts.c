/***************************************************************************
 Public methods:
 SEXP rowCounts(SEXP x, ...)

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowCounts_lowlevel.h"
#include "naming.h"

SEXP rowCounts(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP value, SEXP what, SEXP naRm, SEXP hasNA, SEXP useNames) {
  SEXP ans;
  int narm, hasna, what2, usenames;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' & 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'value': */
  if (length(value) != 1)
    error("Argument 'value' must be a single value");

  if (!isNumeric(value))
    error("Argument 'value' must be a numeric or a logical value");

  /* Argument 'what': */
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("INTERNAL ERROR: Unknown value of 'what' for rowCounts: %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsHasNA;
  int colsHasNA;
  R_xlen_t *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsHasNA);
  R_xlen_t *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsHasNA);
  
  /* R allocate a double vector of length 'nrow' */
  PROTECT(ans = allocVector(INTSXP, nrows));

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    rowCounts_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, asReal(value), what2, narm, hasna, INTEGER(ans));
  } else if (isInteger(x)) {
    rowCounts_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, asInteger(value), what2, narm, hasna, INTEGER(ans));
  } else if (isLogical(x)) {
    rowCounts_lgl(LOGICAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, asLogical(value), what2, narm, hasna, INTEGER(ans));
  }
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);
  
  if (usenames != NA_LOGICAL && usenames) {
    SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
    if (dimnames != R_NilValue) {
      SEXP namesVec = VECTOR_ELT(dimnames, 0);
      if (namesVec != R_NilValue) {
        setNames(ans, namesVec, nrows, crows);
      }
    }
  }

  UNPROTECT(2);

  return(ans);
} // rowCounts()


/***************************************************************************
 HISTORY:
 2015-04-13 [DJ]
  o Supported subsetted computation.
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
