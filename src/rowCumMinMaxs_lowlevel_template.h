/***********************************************************************
 TEMPLATE:
  void rowCummins_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int byrow, ANS_C_TYPE *ans

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
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN)
 */
#include "000.templates-types.h"

#if COMP == '<'
  #define OP <
#elif COMP == '>'
  #define OP >
#endif

void CONCAT_MACROS(METHOD, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA,
                        int byrow, ANS_C_TYPE *ans) {
  R_xlen_t ii, jj, kk, kk_prev, idx;
  R_xlen_t colBegin;
  X_C_TYPE xvalue;
  ANS_C_TYPE value;
  int ok;
  int *oks = NULL;
  int norows, nocols;
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  if (ncols == 0 || nrows == 0) return;

  if (byrow) {
    oks = (int *) R_alloc(nrows, sizeof(int));
      if (nocols) {
          colBegin = 0;
      } else {
          R_xlen_t colsFirstElement = cols[0];
          if (!colsHasNA || colsFirstElement != NA_R_XLEN_T) {
              colBegin = colsFirstElement * nrow;
          } else {
              colBegin = NA_R_XLEN_T;
          }
      }
    for (kk=0; kk < nrows; kk++) {
        if (norows) {
            if (!colsHasNA || colBegin != NA_R_XLEN_T){
                /*
                 * In this special case, we can eliminate
                 * the possibility of having NA indices
                 */
                idx = colBegin + kk;
                xvalue = x[idx];
            } else {
                xvalue = X_NA;
            }
        } else if (!rowsHasNA && !colsHasNA) {
            idx = colBegin + rows[kk];
            xvalue = x[idx];
        } else {
            idx = R_INDEX_OP(colBegin, +, (rows[kk]), 1, 1);
            xvalue = R_INDEX_GET(x, idx, X_NA, 1);
        }
        value = (ANS_C_TYPE) xvalue;
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
        if (nocols) {
            colBegin = jj * nrow;
        } else {
            R_xlen_t colsElement = cols[jj];
            if (!colsHasNA || colsElement != NA_R_XLEN_T) {
                colBegin = colsElement * nrow;
            } else {
                colBegin = NA_R_XLEN_T;
            }
        }
      for (ii=0; ii < nrows; ii++) {
          if (norows) {
              if (!colsHasNA || colBegin != NA_R_XLEN_T){
                  /*
                   * In this special case, we can eliminate
                   * the possibility of having NA indices
                   */
                  idx = colBegin + ii;
                  xvalue = x[idx];
              } else {
                  xvalue = X_NA;
              }
          } else if (!rowsHasNA && !colsHasNA) {
              idx = colBegin + rows[ii];
              xvalue = x[idx];
          } else {
              idx = R_INDEX_OP(colBegin, +, (rows[ii]), 1, 1);
              xvalue = R_INDEX_GET(x, idx, X_NA, 1);
          }
        value = (ANS_C_TYPE) xvalue;
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
        if (nocols) {
            colBegin = jj * nrow;
        } else {
            R_xlen_t colsElement = cols[jj];
            if (!colsHasNA || colsElement != NA_R_XLEN_T) {
                colBegin = colsElement * nrow;
            } else {
                colBegin = NA_R_XLEN_T;
            }
        }
      if (norows) {
            if (!colsHasNA || colBegin != NA_R_XLEN_T) {
                idx = colBegin;
                xvalue = x[idx];
            } else {
                xvalue = X_NA;
            }
            
      } else if (!rowsHasNA && !colsHasNA) {
          idx = colBegin + rows[0];
          xvalue = x[idx];
      } else {
          idx = R_INDEX_OP(colBegin, +, (rows[0]), 1, 1);
          xvalue = R_INDEX_GET(x, idx, X_NA, 1);
      }
      value = (ANS_C_TYPE) xvalue;
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
          if (norows) {
              if (!colsHasNA || colBegin != NA_R_XLEN_T){
                  /*
                   * In this special case, we can eliminate
                   * the possibility of having NA indices
                   */
                  idx = colBegin + ii;
                  xvalue = x[idx];
              } else {
                  xvalue = X_NA;
              }
          } else if (!rowsHasNA && !colsHasNA) {
              idx = colBegin + rows[ii];
              xvalue = x[idx];
          } else {
              idx = R_INDEX_OP(colBegin, +, (rows[ii]), 1, 1);
              xvalue = R_INDEX_GET(x, idx, X_NA, 1);
          }
        value = (ANS_C_TYPE) xvalue;
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
