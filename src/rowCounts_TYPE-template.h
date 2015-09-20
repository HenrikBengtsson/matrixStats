/***********************************************************************
 TEMPLATE:
  void rowCounts_<Integer|Real|Logical>[ROWS_TYPE][COLS_TYPE](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, X_C_TYPE value, int what, int narm, int hasna, int *ans, int cores

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD_NAME: the name of the resulting function
  - X_TYPE: 'i', 'r', or 'l'

 Copyright: Henrik Bengtsson, 2014
 ***********************************************************************/
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
 */
#include "templates-types.h"


/** Wrapper is used to call `METHOD_NAME`, as pthread worker. **/
static void *WRAPPER_METHOD_NAME_ROWS_COLS(void *args) {
  uint8_t *buffer = (uint8_t*) args;
  int ii = 0;
  POP_ARGUMENT(buffer, ii, uint8_t*, buffer0);
  POP_ARGUMENT(buffer, ii, R_xlen_t, begin);
  POP_ARGUMENT(buffer, ii, R_xlen_t, end);

  ii = 0;
  POP_ARGUMENT(buffer0, ii, X_C_TYPE*, x);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol);
  POP_ARGUMENT(buffer0, ii, void*, rows);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrows);
  POP_ARGUMENT(buffer0, ii, void*, cols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncols);
  POP_ARGUMENT(buffer0, ii, X_C_TYPE, value);
  POP_ARGUMENT(buffer0, ii, int, what);
  POP_ARGUMENT(buffer0, ii, int, narm);
  POP_ARGUMENT(buffer0, ii, int, hasna);
  POP_ARGUMENT(buffer0, ii, int*, ans);

  ans += begin;

  nrows = end - begin;
  int rowsType;
#ifdef ROWS_TYPE
  rows = (ROWS_C_TYPE*) rows + begin;
  rowsType = ROWS_TYPE_CODE;
#else
  rows = indicesFromRange(begin, end, &rowsType);
#endif

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, value, what, narm, hasna, ans, 0);

#ifndef ROWS_TYPE
  Free(rows);
#endif
  return NULL;
}


RETURN_TYPE METHOD_NAME_ROWS_COLS(ARGUMENTS_LIST) {
  // Apply pthread
  if (cores > 1 && nrows > 1) {
    const static int memSize0 = sizeof(x) + sizeof(nrow) + sizeof(ncol)
      + sizeof(rows) + sizeof(nrows) + sizeof(cols) + sizeof(ncols)
      + sizeof(value) + sizeof(what) + sizeof(narm) + sizeof(hasna) + sizeof(ans);
    R_xlen_t begin, end;
    uint8_t *buffer0;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nrows);
    uint8_t buffer[memSize0 + memSize1 * cores];
    buffer0 = buffer;

    int ii = 0;
    PUSH_ARGUMENT(buffer, ii, x);
    PUSH_ARGUMENT(buffer, ii, nrow);
    PUSH_ARGUMENT(buffer, ii, ncol);
    PUSH_ARGUMENT(buffer, ii, rows);
    PUSH_ARGUMENT(buffer, ii, nrows);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, value);
    PUSH_ARGUMENT(buffer, ii, what);
    PUSH_ARGUMENT(buffer, ii, narm);
    PUSH_ARGUMENT(buffer, ii, hasna);
    PUSH_ARGUMENT(buffer, ii, ans);

    pthread_t threads[cores];

    R_xlen_t gap = (nrows + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nrows) {
      uint8_t *args = buffer + ii;
      end = MIN(begin + gap, nrows);

      PUSH_ARGUMENT(buffer, ii, buffer0);
      PUSH_ARGUMENT(buffer, ii, begin);
      PUSH_ARGUMENT(buffer, ii, end);

      pthread_create(threads+(jj++), NULL, &WRAPPER_METHOD_NAME_ROWS_COLS, args);

      begin = end;
    }

    for (jj = 0; jj < cores; ++jj) {
      pthread_join(threads[jj], NULL);
    }
    return;
  }


  R_xlen_t ii, jj;
  R_xlen_t colBegin, idx;
  int count;
  X_C_TYPE xvalue;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  if (what == 0) {  /* all */
    for (ii=0; ii < nrows; ii++) ans[ii] = 1;

    /* Count missing values? [sic!] */
    if (X_ISNAN(value)) {
      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii]) {
            idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
            xvalue = R_INDEX_GET(x, idx, X_NA);
            if (!X_ISNAN(xvalue)) {
              ans[ii] = 0;
              /* Found another value! Skip from now on */
            }
          }
        }
      }
    } else {
      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii]) {
            idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
            xvalue = R_INDEX_GET(x, idx, X_NA);
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
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (!ans[ii]) {
            idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
            xvalue = R_INDEX_GET(x, idx, X_NA);
            if (X_ISNAN(xvalue)) {
              ans[ii] = 1;
              /* Found value! Skip from now on */
            }
          }
        }
      }
    } else {
      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          /* Skip? */
          if (ans[ii] == 0 || ans[ii] == NA_INTEGER) {
            idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
            xvalue = R_INDEX_GET(x, idx, X_NA);
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
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
          xvalue = R_INDEX_GET(x, idx, X_NA);
          if (X_ISNAN(xvalue)) ans[ii] = ans[ii] + 1;
        }
      }
    } else {
      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
        for (ii=0; ii < nrows; ii++) {
          count = ans[ii];
          /* Nothing more to do on this row? */
          if (count == NA_INTEGER) continue;

          idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
          xvalue = R_INDEX_GET(x, idx, X_NA);
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
 2015-07-31 [DJ]
  o Pthread processing.
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
