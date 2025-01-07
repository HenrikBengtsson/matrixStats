/***************************************************************************
 Public methods:
 SEXP rowRanksWithTies(SEXP x, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow)

 Authors: Hector Corrada Bravo, Peter Langfelder and Henrik Bengtsson

 TO DO: Add support for missing values.
 **************************************************************************/
#include <Rdefines.h>
#include "rowRanksWithTies_lowlevel.h"
#include "naming.h"

/* Peter Langfelder's modifications:
 * byrow: 0 => rank columns, !0 => rank rows
 * tiesMethod: 1: maximum, 2: average, 3:minimum
 * The returned rank is a REAL matrix to accommodate average ranks
 */
/* Brian Montgomery's modifications:
 * added tiesMethods first, last, random, and dense
 * reordered to match base::ranks
 * tiesMethod: 1: average, 2: first, 3: last, 5: random, 5: maximum, 6:minimum, 7:dense
 */

 // Arrange the elements from i to j of array in random order.
 // Used in tiesMethod "random".
 void SHUFFLE_INT(int *array, size_t i, size_t j) {
     if (j > i) {
         size_t k, l;
         for (k = i; k < j; k++) {
           l = k + (size_t) (unif_rand() * (j - k + 1));
           SWAP(int, array[l], array[k]);
         }
     }
 }

SEXP rowRanksWithTies(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP tiesMethod, SEXP byRow, SEXP useNames) {
  int tiesmethod, byrow, usenames;
  SEXP ans = NILSXP;
  R_xlen_t nrow, ncol;
  
  /* Coercion moved down to C */
  PROTECT(dim = coerceVector(dim, INTSXP));

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'tiesMethod': */
  tiesmethod = asInteger(tiesMethod);
  if (tiesmethod < 1 || tiesmethod > 7) {
    error("Argument 'tiesMethod' is out of range [1,7]: %d", tiesmethod);
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
  usenames = asLogicalNoNA(useNames, "useNames");

  /* Double matrices are more common to use. */
  if (isReal(x)) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanksWithTies_Average_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, REAL(ans));
          break;
        case 2:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_First_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Last_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 4:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          GetRNGstate();
          rowRanksWithTies_Random_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          PutRNGstate();
          break;
        case 5:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Max_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 6:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Min_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 7:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Dense_dbl(REAL(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
      } /* switch */
  } else if (isInteger(x)) {
      switch (tiesmethod) {
        case 1:
          PROTECT(ans = allocMatrix(REALSXP, nrows, ncols));
          rowRanksWithTies_Average_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, REAL(ans));
          break;
        case 2:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_First_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 3:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Last_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 4:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          GetRNGstate();
          rowRanksWithTies_Random_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          PutRNGstate();
          break;
        case 5:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Max_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 6:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Min_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
        case 7:
          PROTECT(ans = allocMatrix(INTSXP, nrows, ncols));
          rowRanksWithTies_Dense_int(INTEGER(x), nrow, ncol, crows, nrows, rowsHasNA, ccols, ncols, colsHasNA, byrow, INTEGER(ans));
          break;
      } /* switch */
  }
  
  if (usenames) {
    SEXP dimnames = getAttrib(x, R_DimNamesSymbol);
    if (dimnames != R_NilValue) {
      setDimnames(ans, dimnames, nrows, crows, ncols, ccols, FALSE);
    }
  }
  UNPROTECT(2); /* PROTECT(dim = ...) and PROTECT(ans = allocMarix(...))*/

  return(ans);
} // rowRanksWithTies()


/***************************************************************************
 HISTORY:
 2019-4-23 [BKM]
  o Added more tiesMethods: first, last, random, and dense
 2015-06-12 [DJ]
  o Supported subsetted computation.
 2013-01-13 [HB]
  o Added argument 'tiesMethod' to rowRanks().
 **************************************************************************/
