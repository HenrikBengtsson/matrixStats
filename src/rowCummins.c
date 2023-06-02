/***************************************************************************
 Public methods:
 SEXP rowCummins(SEXP x, ...)
 SEXP colCummins(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowCummins_lowlevel.h"
#include "naming.h"

SEXP rowCummins(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP byRow, SEXP useNames) {
  int byrow, usenames;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_LGL | R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsHasNA;
  int colsHasNA;
  R_xlen_t *crows = validateIndicesCheckNA(rows, nrow, 0, &nrows, &rowsHasNA);
  R_xlen_t *ccols = validateIndicesCheckNA(cols, ncol, 0, &ncols, &colsHasNA);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);
  
  /* Argument 'useNames': */ 
  usenames = asLogical(useNames);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
    rowCummins_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, REAL(ans));
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        setDimnames(ans, dimnames, nrows, crows, ncols, ccols, FALSE);
      }
    }
    UNPROTECT(1);
  } else if (isInteger(x) | isLogical(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
    rowCummins_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        setDimnames(ans, dimnames, nrows, crows, ncols, ccols, FALSE);
      }
    }
    UNPROTECT(1);
  }
  
  UNPROTECT(1); /* PROTECT(dim = ...) */

  return(ans);
} /* rowCummins() */

#undef COMP
#undef METHOD


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-26 [HB]
 o Created from rowVars.c.
 **************************************************************************/
