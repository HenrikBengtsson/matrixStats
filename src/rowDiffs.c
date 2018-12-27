/***************************************************************************
 Public methods:
 SEXP rowDiffs(SEXP x, ...)

 Authors: Henrik Bengtsson

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowDiffs_lowlevel.h"

SEXP rowDiffs(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP lag, SEXP differences, SEXP byRow) {
  int byrow;
  SEXP ans = NILSXP;
  R_xlen_t lagg, diff;
  R_xlen_t nrow, ncol;
  R_xlen_t nrow_ans, ncol_ans;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'lag': */
  lagg = asInteger(lag);
  if (lagg < 1) {
    error("Argument 'lag' must be a positive integer.");
  }

  /* Argument 'differences': */
  diff = asInteger(differences);
  if (diff < 1) {
    error("Argument 'differences' must be a positive integer.");
  }

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);


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
    rowDiffs_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, byrow, lagg, diff, REAL(ans), nrow_ans, ncol_ans);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    PROTECT(ans = allocMatrix(INTSXP, nrow_ans, ncol_ans));
    rowDiffs_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, byrow, lagg, diff, INTEGER(ans), nrow_ans, ncol_ans);
    UNPROTECT(1);
  }

  return(ans);
} /* rowDiffs() */


/***************************************************************************
 HISTORY:
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-12-29 [HB]
  o Created.
 **************************************************************************/
