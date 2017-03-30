/***********************************************************************
 TEMPLATE:
  void rowCumsums_<int|dbl>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int byrow, ANS_C_TYPE *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "000.templates-types.h"


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  R_xlen_t ii, jj, kk, kk_prev, idx;
  R_xlen_t colBegin;
  X_C_TYPE xvalue;
  LDOUBLE value;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

#if ANS_TYPE == 'i'
  double R_INT_MIN_d = (double)R_INT_MIN,
         R_INT_MAX_d = (double)R_INT_MAX;
  /* OK, i.e. no integer overflow yet? */
  int warn = 0, ok, *oks = NULL;
#endif

  if (ncols == 0 || nrows == 0) return;

  if (byrow) {
#if ANS_TYPE == 'i'
    oks = (int *) R_alloc(nrows, sizeof(int));
#endif

    colBegin = R_INDEX_OP(COL_INDEX(ccols,0), *, nrow);
    for (kk=0; kk < nrows; kk++) {
      idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,kk));
      xvalue = R_INDEX_GET(x, idx, X_NA);
      ans[kk] = (ANS_C_TYPE) xvalue;
#if ANS_TYPE == 'i'
      oks[kk] = !X_ISNA(xvalue);
#endif
    }

    kk_prev = 0;
    for (jj=1; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        xvalue = R_INDEX_GET(x, idx, X_NA);
#if ANS_TYPE == 'i'
        if (oks[ii]) {
          /* Missing value? */
          if (X_ISNA(xvalue)) {
            oks[ii] = 0;
            ans[kk] = ANS_NA;
          } else {
            value = (LDOUBLE) ans[kk_prev] + (LDOUBLE) xvalue;
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              oks[ii] = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
            }
          }
        } else {
          ans[kk] = ANS_NA;
        }
#else
        ans[kk] = (ANS_C_TYPE) ((LDOUBLE) ans[kk_prev] + (LDOUBLE) xvalue);
#endif

        kk++;
        kk_prev++;

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      value = 0;
#if ANS_TYPE == 'i'
      ok = 1;
#endif
      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        xvalue = R_INDEX_GET(x, idx, X_NA);
#if ANS_TYPE == 'i'
        if (ok) {
          /* Missing value? */
          if (X_ISNA(xvalue)) {
            ok = 0;
            ans[kk] = ANS_NA;
          } else {
            value += (LDOUBLE) xvalue;
            /* Integer overflow? */
            if (value < R_INT_MIN_d || value > R_INT_MAX_d) {
              ok = 0;
              warn = 1;
              ans[kk] = ANS_NA;
            } else {
              ans[kk] = (ANS_C_TYPE) value;
            }
          }
        } else {
          ans[kk] = ANS_NA;
        }
#else
        value += xvalue;
        ans[kk] = (ANS_C_TYPE) value;
#endif

        kk++;

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */

#if ANS_TYPE == 'i'
  /* Warn on integer overflow? */
  if (warn) {
    warning("Integer overflow. Detected one or more elements whose absolute values were out of the range [%d,%d] that can be used to for integers. Such values are set to NA_integer_.", R_INT_MIN, R_INT_MAX);
  }
#endif
}


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-26 [HB]
  o Created from rowVars_TYPE-template.h.
 **************************************************************************/
