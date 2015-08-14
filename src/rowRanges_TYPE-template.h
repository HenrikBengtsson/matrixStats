/***********************************************************************
 TEMPLATE:
  void rowRanges_<Integer|Real>[rowsType][colsType](ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int what, int narm, int hasna, X_C_TYPE *ans, R_xlen_t nans, int *is_counted, int cores

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
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, [METHOD_NAME])
    ANS_TYPE => (ANS_SXP, ANS_NA, ANS_C_TYPE, ANS_IN_C)
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
  POP_ARGUMENT(buffer0, ii, int, what);
  POP_ARGUMENT(buffer0, ii, int, narm);
  POP_ARGUMENT(buffer0, ii, int, hasna);
  POP_ARGUMENT(buffer0, ii, X_C_TYPE*, ans);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nans);
  POP_ARGUMENT(buffer0, ii, int*, is_counted);

  ans += begin;
  is_counted += begin;

  nrows = end - begin;
  int rowsType;
#ifdef ROWS_TYPE
  rows = (ROWS_C_TYPE*) rows + begin;
  rowsType = ROWS_TYPE_CODE;
#else
  rows = indicesFromRange(begin, end, &rowsType);
#endif

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, what, narm, hasna, ans, nans, is_counted, 1);

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
      + sizeof(what) + sizeof(narm) + sizeof(hasna) + sizeof(ans) + sizeof(nans) + sizeof(is_counted);
    uint8_t *buffer0;
    R_xlen_t begin, end;
    const static int memSize1 = sizeof(buffer0) + sizeof(begin) + sizeof(end);

    cores = MIN(cores, nrows);
    uint8_t buffer[memSize0 + memSize1 * cores];

    int ii = 0;
    PUSH_ARGUMENT(buffer, ii, x);
    PUSH_ARGUMENT(buffer, ii, nrow);
    PUSH_ARGUMENT(buffer, ii, ncol);
    PUSH_ARGUMENT(buffer, ii, rows);
    PUSH_ARGUMENT(buffer, ii, nrows);
    PUSH_ARGUMENT(buffer, ii, cols);
    PUSH_ARGUMENT(buffer, ii, ncols);
    PUSH_ARGUMENT(buffer, ii, what);
    PUSH_ARGUMENT(buffer, ii, narm);
    PUSH_ARGUMENT(buffer, ii, hasna);
    PUSH_ARGUMENT(buffer, ii, ans);
    PUSH_ARGUMENT(buffer, ii, nans);
    PUSH_ARGUMENT(buffer, ii, is_counted);

    pthread_t threads[cores];

    R_xlen_t gap = (nrows + cores - 1) / cores;
    int jj = 0;
    begin = 0;
    while (begin < nrows) {
      uint8_t *args = buffer + ii;
      buffer0 = buffer;
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
  X_C_TYPE value, *mins = NULL, *maxs = NULL;
  int *skip = NULL;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* Rprintf("(nrow,ncol)=(%d,%d), what=%d\n", nrow, ncol, what); */

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  if (hasna) {
    skip = Calloc(nrows, int);
    for (ii=0; ii < nrows; ii++) {
      is_counted[ii] = 0;
      skip[ii] = 0;
    }

    /* Missing values */
    if (what == 0) {
      /* rowMins() */
      mins = ans;

      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);

        for (ii=0; ii < nrows; ii++) {
          if (!narm && skip[ii]) continue;

          idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
          value = R_INDEX_GET(x, idx, X_NA);

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
            }
          } else if (!is_counted[ii]) {
            mins[ii] = value;
            is_counted[ii] = 1;
          } else if (value < mins[ii]) {
            mins[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrows; ii++) {
        if (!is_counted[ii]) {
          mins[ii] = R_PosInf;
        }
      }
#endif
    } else if (what == 1) {
      /* rowMaxs() */
      maxs = ans;

      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);

        for (ii=0; ii < nrows; ii++) {
          if (!narm && skip[ii]) continue;

          idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
          value = R_INDEX_GET(x, idx, X_NA);

          if (X_ISNAN(value)) {
            if (!narm) {
              maxs[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
            }
          } else if (!is_counted[ii]) {
            maxs[ii] = value;
            is_counted[ii] = 1;
          } else if (value > maxs[ii]) {
            maxs[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrows; ii++) {
        if (!is_counted[ii]) {
          maxs[ii] = R_NegInf;
        }
      }
#endif
    } else if (what == 2) {
      /* rowRanges() */
      mins = ans;
      maxs = ans + nans;

      for (jj=0; jj < ncols; jj++) {
        colBegin = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);

        for (ii=0; ii < nrows; ii++) {
          if (!narm && skip[ii]) continue;

          idx = R_INDEX_OP(colBegin, +, ROW_INDEX(crows,ii));
          value = R_INDEX_GET(x, idx, X_NA);

          if (X_ISNAN(value)) {
            if (!narm) {
              mins[ii] = value;
              maxs[ii] = value;
              is_counted[ii] = 1;
              /* Early stopping? */
#if X_TYPE == 'i'
              skip[ii] = 1;
#elif X_TYPE == 'r'
              if (X_ISNA(value)) skip[ii] = 1;
#endif
            }
          } else if (!is_counted[ii]) {
            mins[ii] = value;
            maxs[ii] = value;
            is_counted[ii] = 1;
          } else if (value < mins[ii]) {
            mins[ii] = value;
          } else if (value > maxs[ii]) {
            maxs[ii] = value;
          }
        }
      } /* for (jj ...) */

#if X_TYPE == 'r'
      /* Handle zero non-missing values */
      for (ii=0; ii < nrows; ii++) {
        if (!is_counted[ii]) {
          mins[ii] = R_PosInf;
          maxs[ii] = R_NegInf;
        }
      }
#endif
    } /* if (what ...) */

    Free(skip);

  } else {
    /* No missing values */
    if (what == 0) {
      /* rowMins() */
      mins = ans;

      /* Initiate results */
      for (ii=0; ii < nrows; ii++) {
        mins[ii] = x[ii];
      }

      for (jj=1; jj < ncols; jj++) {
        colBegin = COL_INDEX_NONA(ccols,jj) * nrow;
        for (ii=0; ii < nrows; ii++) {
          value = x[ROW_INDEX_NONA(crows,ii)+colBegin];
          if (value < mins[ii]) mins[ii] = value;
        }
      }
    } else if (what == 1) {
      /* rowMax() */
      maxs = ans;

      /* Initiate results */
      for (ii=0; ii < nrows; ii++) {
        maxs[ii] = x[ii];
      }

      for (jj=1; jj < ncols; jj++) {
        colBegin = COL_INDEX_NONA(ccols,jj) * nrow;
        for (ii=0; ii < nrows; ii++) {
          value = x[ROW_INDEX_NONA(crows,ii)+colBegin];
          if (value > maxs[ii]) maxs[ii] = value;
        }
      }
    } else if (what == 2) {
      /* rowRanges()*/
      mins = ans;
      maxs = ans + nans;

      /* Initiate results */
      for (ii=0; ii < nrows; ii++) {
        mins[ii] = x[ii];
        maxs[ii] = x[ii];
      }

      for (jj=1; jj < ncols; jj++) {
        colBegin = COL_INDEX_NONA(ccols,jj) * nrow;
        for (ii=0; ii < nrows; ii++) {
          value = x[ROW_INDEX_NONA(crows,ii)+colBegin];
          if (value < mins[ii]) {
            mins[ii] = value;
          } else if (value > maxs[ii]) {
            maxs[ii] = value;
          }
        }
      }
    } /* if (what ...) */
  } /* if (narm) */
}


/***************************************************************************
 HISTORY:
 2015-08-10 [DJ]
  o Pthread processing.
 2015-06-07 [DJ]
  o Supported subsetted computation.
 2014-11-16 [HB]
  o Created.
 **************************************************************************/
