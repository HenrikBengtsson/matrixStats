/***************************************************************************
 Public methods:
 SEXP rowDiffs(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowDiffs_lowlevel.h"
#include "naming.h"

SEXP rowDiffs(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP lag, SEXP differences, SEXP byRow, SEXP useNames) {
  int byrow, usenames;
  SEXP ans = NILSXP;
  R_xlen_t lagg, diff;
  R_xlen_t nrow, ncol;
  R_xlen_t nrow_ans, ncol_ans;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'lag': */
  lagg = asInteger(lag);
  if (lagg < 1) {
    error("Argument 'lag' must be a positive integer");
  }

  /* Argument 'differences': */
  diff = asInteger(differences);
  if (diff < 1) {
    error("Argument 'differences' must be a positive integer");
  }

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

  /* Dimension of result matrix */
  if (byrow) {
    nrow_ans = nrows;
    ncol_ans = (R_xlen_t)((double)ncols - ((double)diff*(double)lagg));
    if (ncol_ans < 0) ncol_ans = 0;
  } else {
    nrow_ans = (R_xlen_t)((double)nrows - ((double)diff*(double)lagg));
    if (nrow_ans < 0) nrow_ans = 0;
    ncol_ans = ncols;
  }

  if (isReal(x)) {
    PROTECT(ans = allocMatrix(REALSXP, nrow_ans, ncol_ans));
    rowDiffs_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, lagg, diff, REAL(ans), nrow_ans, ncol_ans);
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        if (byrow) {
          set_rowDiffs_Dimnames(ans, dimnames, nrows, crows, ncols, ncol_ans, ccols);
        } else {
          set_colDiffs_Dimnames(ans, dimnames, nrows, nrow_ans, crows, ncols, ccols);
        }
      }
    }
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrow_ans, ncol_ans));
    rowDiffs_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, lagg, diff, INTEGER(ans), nrow_ans, ncol_ans);
    if (usenames != NA_LOGICAL && usenames) {
      SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
      if (dimnames != R_NilValue) {
        if (byrow) {
          set_rowDiffs_Dimnames(ans, dimnames, nrows, crows, ncols, ncol_ans, ccols);
        } else {
          set_colDiffs_Dimnames(ans, dimnames, nrows, nrow_ans, crows, ncols, ccols);
        }
      }
    }
    UNPROTECT(1);
  }
  
  UNPROTECT(1); /* PROTECT(dim = ...) */

  return(ans);
} /* rowDiffs() */


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
