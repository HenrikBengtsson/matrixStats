/***********************************************************************
 TEMPLATE:
  void colRanges_<int|dbl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, int what, int narm, int hasna, X_C_TYPE *ans, int *is_counted

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i' or 'r'
  - ANS_TYPE: 'i' or 'r'

 Authors:
  Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <R_ext/Memory.h>
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(colRanges, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, 
                        int what, int narm, int hasna, X_C_TYPE *ans, int *is_counted) {
  R_xlen_t ii, jj;
  R_xlen_t colBegin, idx;
  X_C_TYPE xvalue, *mins = NULL, *maxs = NULL;
  int norows, nocols;
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  /* Rprintf("(nrow,ncol)=(%d,%d), what=%d\n", nrow, ncol, what); */

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  if (hasna) {
    for (jj=0; jj < ncols; jj++) is_counted[jj] = 0;

    /* Missing values */
    if (what == 0) {
      /* colMins() */
      mins = ans;

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

          if (X_ISNAN(xvalue)) {
            if (!narm) {
              mins[jj] = xvalue;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(xvalue)) break;
#endif
            }
          } else if (!is_counted[jj]) {
            mins[jj] = xvalue;
            is_counted[jj] = 1;
          } else if (xvalue < mins[jj]) {
            mins[jj] = xvalue;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncols; jj++) {
        if (!is_counted[jj]) {
          mins[jj] = R_PosInf;
        }
      }
#endif
    } else if (what == 1) {
      /* colMaxs() */
      maxs = ans;

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

          if (X_ISNAN(xvalue)) {
            if (!narm) {
              maxs[jj] = xvalue;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(xvalue)) break;
#endif
            }
          } else if (!is_counted[jj]) {
            maxs[jj] = xvalue;
            is_counted[jj] = 1;
          } else if (xvalue > maxs[jj]) {
            maxs[jj] = xvalue;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncols; jj++) {
        if (!is_counted[jj]) {
          maxs[jj] = R_NegInf;
        }
      }
#endif
    } else if (what == 2) {
      /* colRanges() */
      mins = ans;
      maxs = &ans[ncols];

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

          if (X_ISNAN(xvalue)) {
            if (!narm) {
              mins[jj] = xvalue;
              maxs[jj] = xvalue;
              is_counted[jj] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              break;
#elif X_TYPE == 'r'
              if (X_ISNA(xvalue)) break;
#endif
            }
          } else if (!is_counted[jj]) {
            mins[jj] = xvalue;
            maxs[jj] = xvalue;
            is_counted[jj] = 1;
          } else if (xvalue < mins[jj]) {
            mins[jj] = xvalue;
          } else if (xvalue > maxs[jj]) {
            maxs[jj] = xvalue;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (jj=0; jj < ncols; jj++) {
        if (!is_counted[jj]) {
          mins[jj] = R_PosInf;
          maxs[jj] = R_NegInf;
        }
      }
#endif
    } /* if (what ...) */
  } else {
    /* No missing values */
    if (what == 0) {
      /* colMins() */
      mins = ans;

      /* Initiate results */
      for (jj=0; jj < ncols; jj++) {
        mins[jj] = x[jj];
      }

      for (jj=1; jj < ncols; jj++) {
          if (nocols) {
              colBegin = jj * nrow;
          } else {
              colBegin = cols[jj] * nrow;
          }
        for (ii=0; ii < nrows; ii++) {
          if (norows){
              idx = ii + colBegin;
          } else {
              idx = rows[ii] + colBegin;
          }
          xvalue = x[idx];
          if (xvalue < mins[jj]) mins[jj] = xvalue;
        }
      }
    } else if (what == 1) {
      /* colMax() */
      maxs = ans;

      /* Initiate results */
      for (jj=0; jj < ncols; jj++) {
        maxs[jj] = x[jj];
      }

      for (jj=1; jj < ncols; jj++) {
          if (nocols) {
              colBegin = jj * nrow;
          } else {
              colBegin = cols[jj] * nrow;
          }
        for (ii=0; ii < nrows; ii++) {
            if (norows){
                idx = ii + colBegin;
            } else {
                idx = rows[ii] + colBegin;
            }
            xvalue = x[idx];
          if (xvalue > maxs[jj]) maxs[jj] = xvalue;
        }
      }
    } else if (what == 2) {
      /* colRanges()*/
      mins = ans;
      maxs = &ans[ncols];

      /* Initiate results */
      for (jj=0; jj < ncols; jj++) {
        mins[jj] = x[jj];
        maxs[jj] = x[jj];
      }

      for (jj=1; jj < ncols; jj++) {
          if (nocols) {
              colBegin = jj * nrow;
          } else {
              colBegin = cols[jj] * nrow;
          }
        for (ii=0; ii < nrows; ii++) {
            if (norows){
                idx = ii +colBegin;
            } else {
                idx = rows[ii] + colBegin;
            }
            xvalue = x[idx];
          if (xvalue < mins[jj]) {
            mins[jj] = xvalue;
          } else if (xvalue > maxs[jj]) {
            maxs[jj] = xvalue;
          }
        }
      }
    } /* if (what ...) */
  } /* if (narm) */
}


/***************************************************************************
 HISTORY:
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
