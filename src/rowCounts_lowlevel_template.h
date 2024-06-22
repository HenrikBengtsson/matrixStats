/***********************************************************************
 TEMPLATE:
  void rowCounts_<int|dbl|lgl>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, R_xlen_t *rows, R_xlen_t nrows, R_xlen_t *cols, R_xlen_t ncols, X_C_TYPE value, int what, int narm, int hasna, int *ans

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


void CONCAT_MACROS(rowCounts, X_C_SIGNATURE)(X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, 
                        R_xlen_t *rows, R_xlen_t nrows, int rowsHasNA,
                        R_xlen_t *cols, R_xlen_t ncols, int colsHasNA,
                        X_C_TYPE value, int what, int narm, int hasna, int *ans) {
  R_xlen_t ii, jj;
  R_xlen_t colBegin, idx;
  int count;
  X_C_TYPE xvalue;
  int norows, nocols;
  if (cols == NULL) { nocols = 1; } else { nocols = 0; }
  if (rows == NULL) { norows = 1; } else { norows = 0; }

  if (what == 0) {  /* all */
    for (ii=0; ii < nrows; ii++) ans[ii] = 1;

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
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii]) {
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
              ans[ii] = 0;
              /* Found another value! Skip from now on */
            }
          }
        }
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
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii]) {
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
              ans[ii] = NA_INTEGER;
            } else {
              /* Found another value! Skip from now on */
              ans[ii] = 0;
            }
          }
        } /* for (ii ...) */
      } /* for (jj ...) */
    }
  } else if (what == 1) {  /* any */
    for (ii=0; ii < nrows; ii++) ans[ii] = 0;

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
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (!ans[ii]) {
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
              ans[ii] = 1;
              /* Found value! Skip from now on */
            }
          }
        }
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
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii] == 0 || ans[ii] == NA_INTEGER) {
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
              /* Found value! Skip from now on */
              ans[ii] = 1;
            } else if (narm && X_ISNAN(xvalue)) {
              /* Skip */
            } else if (!narm && X_ISNAN(xvalue)) {
              /* Early stopping is not possible, because if we do
               find an element that is 'value' later, then
               we know for sure that any = TRUE regardless of
               missing values. In other words, at this point
               the answer can be either NA or TRUE.*/
              ans[ii] = NA_INTEGER;
            }
          }
        } /* for (ii ...) */
      } /* for (jj ...) */
    }
  } else if (what == 2) {  /* count */
    for (ii=0; ii < nrows; ii++) ans[ii] = 0;

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
          if (X_ISNAN(xvalue)) ans[ii] = ans[ii] + 1;
        }
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
        for (ii=0; ii < nrows; ii++) {
          count = ans[ii];
          /* Nothing more to do on this row? */
          if (count == NA_INTEGER) continue;

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
            ans[ii] = count + 1;
          } else {
            if (!narm && X_ISNAN(xvalue)) {
              ans[ii] = NA_INTEGER;
              continue;
            }
          }
        } /* for (ii ...) */
      } /* for (jj ...) */
    }
  } /* if (what) */
}


/***************************************************************************
 HISTORY:
 2015-04-13 [DJ]
  o Supported subsetted computation.
 2014-11-06 [HB]
  o CLEANUP: Moving away from R data types in low-level C functions.
 2014-11-01 [HB]
  o SPEEDUP: Now using ansp = INTEGER(ans) once and then querying/assigning
    'ansp[i]' instead of INTEGER(ans)[i].
 2014-06-02 [HB]
  o Created.
 **************************************************************************/
