/***********************************************************************
 TEMPLATE:
  void colCounts_<int|dbl|lgl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA, R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, X_C_TYPE value, int what, int narm, int hasna, double *ans

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i', 'r', or 'l'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include "000.types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C)
 */
#include "000.templates-types.h"


void CONCAT_MACROS(colCounts, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA, 
                        X_C_TYPE value, int what, int narm, int hasna, double *ans) {
  R_xlen_t ii, jj;
  R_xlen_t colBegin, idx;
  R_xlen_t count;
  X_C_TYPE xvalue;
  int norows, nocols;
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  if (what == 0L) {  /* all */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
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
        count = 1;
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
          if (!X_ISNAN(xvalue)) {
            count = 0;
            /* Found another value! Early stopping */
            break;
          }
        }
        ans[jj] = (double)count;
      }
    } else {
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
        count = 1;
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
            
          if (xvalue == value) {
          } else if (narm && X_ISNAN(xvalue)) {
            /* Skip */
          } else if (!narm && X_ISNAN(xvalue)) {
            /* Early stopping is not possible, because if we do
               find an element that is not 'value' later, then
               we know for sure that all = FALSE regardless of
               missing values. In other words, at this point
               the answer can be either NA or FALSE.*/
            count = NA_R_XLEN_T;
          } else {
            count = 0;
            /* Found another value! Early stopping */
            break;
          }
        } /* for (ii ...) */
        ans[jj] = (double)count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } else if (what == 1L) {  /* any */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
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
        count = 0;
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
            count = 1;
            /* Found value! Early stopping */
            break;
          }
        }
        ans[jj] = (double)count;
      }
    } else {
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
        count = 0;
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
          if (xvalue == value) {
            count = 1;
            /* Found value! Early stopping */
            break;
          } else if (narm && X_ISNAN(xvalue)) {
            /* Skipping */
          } else if (!narm && X_ISNAN(xvalue)) {
            /* Early stopping is not possible, because if we do
               find an element that is 'value' later, then
               we know for sure that any = TRUE regardless of
               missing values. In other words, at this point
               the answer can be either NA or TRUE.*/
            count = NA_R_XLEN_T;
          }
        } /* for (ii ...) */
        ans[jj] = (double)count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } else if (what == 2L) {  /* count */
    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
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
        count = 0;
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
            ++count;
          }
        }
        ans[jj] = (double)count;
      }
    } else {
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
        count = 0;
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
          if (xvalue == value) {
            ++count;
          } else if (!narm && X_ISNAN(xvalue)) {
            count = NA_R_XLEN_T;
            /* Early stopping */
            break;
          }
        } /* for (ii ...) */
        ans[jj] = (double)count;
      } /* for (jj ...) */
    } /* if (X_ISNAN(value)) */
  } /* if (what) */
}


/***************************************************************************
 HISTORY:
 2015-04-18 [DJ]
  o Supported subsetted computation.
 2014-11-14 [HB]
  o Created colCounts() templates from rowCounts() templates.
 **************************************************************************/
