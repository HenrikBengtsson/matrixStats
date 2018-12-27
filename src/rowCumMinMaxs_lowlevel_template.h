/***********************************************************************
 TEMPLATE:
  void rowCummins_<int|dbl>[rowsType][colsType](ARGUMENTS_LIST)

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

#if COMP == '<'
  #define OP <
#elif COMP == '>'
  #define OP >
#endif

RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  R_xlen_t ii, jj, kk, kk_prev, idx;
  R_xlen_t colBegin;
  ANS_C_TYPE value;
  int ok;
  int *oks = NULL;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  if (ncols == 0 || nrows == 0) return;

  if (byrow) {
    oks = (int *) R_alloc(nrows, sizeof(int));

    colBegin = R_INDEX_OP(COL_INDEX(ccols,0), *, nrow);
    for (kk=0; kk < nrows; kk++) {
      idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,kk));
      value = (ANS_C_TYPE) R_INDEX_GET(x, idx, X_NA);
      if (ANS_ISNAN(value)) {
        oks[kk] = 0;
        value = ANS_NA;
        ans[kk] = ANS_NA;
      } else {
        oks[kk] = 1;
        ans[kk] = value;
      }
    }

    kk_prev = 0;
    for (jj=1; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      for (ii=0; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        value = (ANS_C_TYPE) R_INDEX_GET(x, idx, X_NA);
        if (oks[ii]) {
          if (ANS_ISNAN(value)) {
            oks[ii] = 0;
            ans[kk] = ANS_NA;
          } else {
            if (value OP ans[kk_prev]) {
              ans[kk] = value;
            } else {
              ans[kk] = (ANS_C_TYPE) ans[kk_prev];
            }
          }
        } else {
          ans[kk] = ANS_NA;
        }
        kk++;
        kk_prev++;

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } else {
    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
      idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,0));
      value = (ANS_C_TYPE) R_INDEX_GET(x, idx, X_NA);
      if (ANS_ISNAN(value)) {
        ok = 0;
        value = ANS_NA;
        ans[kk] = ANS_NA;
      } else {
        ok = 1;
        ans[kk] = value;
      }
      kk_prev = kk;
      kk++;

      for (ii=1; ii < nrows; ii++) {
        idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
        value = (ANS_C_TYPE) R_INDEX_GET(x, idx, X_NA);
        if (ok) {
          if (ANS_ISNAN(value)) {
            ok = 0;
            value = ANS_NA;
            ans[kk] = ANS_NA;
          } else {
            if (value OP ans[kk_prev]) {
              ans[kk] = value;
            } else {
              ans[kk] = (ANS_C_TYPE) ans[kk_prev];
            }
          }
          kk++;
          kk_prev++;
        } else {
          ans[kk] = ANS_NA;
          kk++;
        }

        R_CHECK_USER_INTERRUPT(kk);
      } /* for (ii ...) */
    } /* for (jj ...) */
  } /* if (byrow) */
}

#undef OP


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-26 [HB]
  o Created from rowVars_TYPE-template.h.
 **************************************************************************/
