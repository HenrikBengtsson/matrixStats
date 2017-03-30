/***************************************************************************
 Public methods:
 SEXP rowRanksWithTies(SEXP x, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow)

 Authors: Hector Corrada Bravo, Peter Langfelder and Henrik Bengtsson

 TO DO: Add support for missing values.
 **************************************************************************/
#include <Rdefines.h>
#include "rowRanksWithTies_lowlevel.h"

/* Peter Langfelder's modifications:
 * byrow: 0 => rank columns, !0 => rank rows
 * tiesMethod: 1: maximum, 2: average, 3:minimum
 * The returned rank is a REAL matrix to accomodate average ranks
 */
SEXP rowRanksWithTies(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow) {
  int tiesmethod, byrow;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'tiesMethod': */
  tiesmethod = asInteger(tiesMethod);
  if (tiesmethod < 1 || tiesmethod > 3) {
    error("Argument 'tiesMethod' is out of range [1,3]: %d", tiesmethod);
  }

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  /* Argument 'byRow': */
  byrow = asLogical(byRow);

  /* Double matrices are more common to use. */
  if (isReal(x)) {
    if (byrow) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Max_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanksWithTies_Average_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Min_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    } else {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanksWithTies_Max_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          colRanksWithTies_Average_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanksWithTies_Min_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    }
  } else if (isInteger(x)) {
    if (byrow) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Max_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanksWithTies_Average_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Min_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    } else {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanksWithTies_Max_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
        case 2:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          colRanksWithTies_Average_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, REAL(ans));
          UNPROTECT(1);
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          colRanksWithTies_Min_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, INTEGER(ans));
          UNPROTECT(1);
          break;
      } /* switch */
    }
  }

  return(ans);
} // rowRanksWithTies()


/***************************************************************************
 HISTORY:
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2013-01-13 [HB]
  o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
