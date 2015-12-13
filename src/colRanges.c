/***************************************************************************
 Public methods:
 SEXP colRanges(SEXP x, ...)

 Authors: Henrik Bengtsson.

 Copyright Henrik Bengtsson, 2014
 **************************************************************************/
#include <Rdefines.h>
#include "types.h"
#include "utils.h"

#define METHOD colRanges
#define RETURN_TYPE void
#define ARGUMENTS_LIST X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int what, int narm, int hasna, X_C_TYPE *ans, int *is_counted

#define X_TYPE 'i'
#include "templates-gen-matrix.h"
#define X_TYPE 'r'
#include "templates-gen-matrix.h"


SEXP colRanges(SEXP x, SEXP dim, SEXP rows, SEXP cols, SEXP what, SEXP naRm, SEXP hasNA) {
  SEXP ans = NILSXP, ans2 = NILSXP;
  int *mins, *maxs;
  double *mins2, *maxs2;
  int *is_counted, all_counted = 0;
  int what2, narm, hasna;
  R_xlen_t nrow, ncol, jj;

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

  is_counted = (int *) R_alloc(ncols, sizeof(int));

  if (isReal(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(REALSXP, ncols, 2));
    } else {
      PROTECT(ans = allocVector(REALSXP, ncols));
    }
    colRanges_Real[rowsType][colsType](REAL(x), nrow, ncol, crows, nrows, ccols, ncols, what2, narm, hasna, REAL(ans), is_counted);
    UNPROTECT(1);
  } else if (isInteger(x)) {
    if (what2 == 2) {
      PROTECT(ans = allocMatrix(INTSXP, ncols, 2));
    } else {
      PROTECT(ans = allocVector(INTSXP, ncols));
    }
    colRanges_Integer[rowsType][colsType](INTEGER(x), nrow, ncol, crows, nrows, ccols, ncols, what2, narm, hasna, INTEGER(ans), is_counted);

    /* Any entries with zero non-missing values? */
    all_counted = 1;
    for (jj=0; jj < ncols; jj++) {
      if (!is_counted[jj]) {
        all_counted = 0;
        break;
      }
    }

    if (!all_counted) {
      /* Handle zero non-missing values */
      /* Instead of return INTSXP, we must return REALSXP (to hold -Inf, and Inf) */
      if (what2 == 0) {
        PROTECT(ans2 = allocVector(REALSXP, ncols));
        mins = INTEGER(ans);
        mins2 = REAL(ans2);
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
          } else {
            mins2[jj] = R_PosInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 1) {
        PROTECT(ans2 = allocVector(REALSXP, ncols));
        maxs = INTEGER(ans);
        maxs2 = REAL(ans2);
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            maxs2[jj] = (double)maxs[jj];
          } else {
            maxs2[jj] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      } else if (what2 == 2) {
        PROTECT(ans2 = allocMatrix(REALSXP, ncols, 2));
        mins = INTEGER(ans);
        maxs = &INTEGER(ans)[ncols];
        mins2 = REAL(ans2);
        maxs2 = &REAL(ans2)[ncols];
        for (jj=0; jj < ncols; jj++) {
          if (is_counted[jj]) {
            mins2[jj] = (double)mins[jj];
            maxs2[jj] = (double)maxs[jj];
          } else {
            mins2[jj] = R_PosInf;
            maxs2[jj] = R_NegInf;
          }
        }
        UNPROTECT(1); /* ans2 */
      }

      ans = ans2;
    }

    UNPROTECT(1); /* ans */
  }

  return(ans);
} // colRanges()


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
