/***************************************************************************
 Public methods:
 SEXP rowRanges(SEXP x, ...)

 Authors: Henrik Bengtsson.

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "000.types.h"
#include "rowRanges_lowlevel.h"

SEXP rowRanges(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP, ans2 = NILSXP;
  int *mins, *maxs;
  double *mins2, *maxs2;
  int *is_counted, all_counted = 0;
  int what2, narm, hasna;
  R_xlen_t nrow, ncol, ii;

  /* Argument 'x' and 'dim': */
  assertArgMatrix(x, dim, (R_TYPE_INT | R_TYPE_REAL), "x");
  nrow = asR_xlen_t(dim, 0);
  ncol = asR_xlen_t(dim, 1);

  /* Argument 'what': */
  if (length(what) != 1)
    error("Argument 'what' must be a single number.");
  if (!isNumeric(what))
    error("Argument 'what' must be a numeric number.");
  what2 = asInteger(what);
  if (what2 < 0 || what2 > 2)
    error("Invalid value of 'what': %d", what2);

  /* Argument 'naRm': */
  narm = asLogicalNoNA(naRm, "na.rm");

  /* Argument 'hasNA': */
  hasna = asLogicalNoNA(hasNA, "hasNA");

  /* Argument 'rows' and 'cols': */
  R_xlen_t nrows, ncols;
  int rowsType, colsType;
  void *crows = validateIndices(rows, nrow, 0, &nrows, &rowsType);
  void *ccols = validateIndices(cols, ncol, 0, &ncols, &colsType);

  is_counted = (int *) R_alloc(nrows, sizeof(int));

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, nrows, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, nrows));
    }
    rowRanges_dbl[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, what2, narm, hasna, REAL(ans), is_counted);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, nrows, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, nrows));
    }
    rowRanges_int[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, what2, narm, hasna, INTEGER(ans), is_counted);

    /* Any entries with zero non-missing values? */
    all_counted = 1;
    for (ii=0; ii < nrows; ii++) {
      if (!is_counted[ii]) {
        all_counted = 0;
        break;
      }
    }

    if (!all_counted) {
      /* Handle zero non-missing values */
      /* Instead of return INTSXP, we must return REALSXP (to hold -Inf, and Inf) */
      if (what2 == 0) {
        PROTECT(ans2 = allocVector(REALSXP, nrows));
        mins = INTEGER(ans);
        mins2 = REAL(ans2);
        for (ii=0; ii < nrows; ii++) {
          if (is_counted[ii]) {
            mins2[ii] = (double)mins[ii];
          } else {
            mins2[ii] = R_PosInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 1) {
        PROTECT(ans2 = allocVector(REALSXP, nrows));
        maxs = INTEGER(ans);
        maxs2 = REAL(ans2);
        for (ii=0; ii < nrows; ii++) {
          if (is_counted[ii]) {
            maxs2[ii] = (double)maxs[ii];
          } else {
            maxs2[ii] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 2) {
        PROTECT(ans2 = allocMatrix(REALSXP, nrows, 2));
        mins = INTEGER(ans);
        maxs = &INTEGER(ans)[nrows];
        mins2 = REAL(ans2);
        maxs2 = &REAL(ans2)[nrows];
        for (ii=0; ii < nrows; ii++) {
          if (is_counted[ii]) {
            mins2[ii] = (double)mins[ii];
            maxs2[ii] = (double)maxs[ii];
          } else {
            mins2[ii] = R_PosInf;
            maxs2[ii] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      }

      ans = ans2;
    }

    UNPROTECT(1); /* ans */
  }

  return(ans);
} // rowRanges()


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
