/***********************************************************************
 TEMPLATE:
  void rowVars_<Integer|Real>(ARGUMENTS_LIST)

 ARGUMENTS_LIST:
  X_C_TYPE *x, R_xlen_t nrow, R_xlen_t ncol, void *rows, R_xlen_t nrows, void *cols, R_xlen_t ncols, int narm, int hasna, int byrow, double *ans, int cores

 Arguments:
   The following macros ("arguments") should be defined for the
   template to work as intended.

  - METHOD: the name of the resulting function
  - X_TYPE: 'i' or 'r'

 Authors:
  Adopted from rowQuantiles.c by R. Gentleman.
  Template by Henrik Bengtsson.

 Copyright: Henrik Bengtsson, 2007-2013
 ***********************************************************************/
#include <R_ext/Memory.h>
#include <Rmath.h>
#include <pthread.h>
#include <stdint.h>
#include "types.h"

/* Expand arguments:
    X_TYPE => (X_C_TYPE, X_IN_C, X_ISNAN, [METHOD_NAME])
 */
#include "templates-types.h"


static void *WRAPPER_METHOD_NAME_ROWS_COLS(void *args) {
  uint8_t *buffer = (uint8_t*) args;
  int ii = 0;
  POP_ARGUMENT(buffer, ii, uint8_t*, buffer0);
  POP_ARGUMENT(buffer, ii, R_xlen_t, begin);
  POP_ARGUMENT(buffer, ii, R_xlen_t, end);

  ii = 0;
  POP_ARGUMENT(buffer0, ii, X_C_TYPE *, x);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrow);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncol);
  POP_ARGUMENT(buffer0, ii, void*, rows);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, nrows);
  POP_ARGUMENT(buffer0, ii, void*, cols);
  POP_ARGUMENT(buffer0, ii, R_xlen_t, ncols);
  POP_ARGUMENT(buffer0, ii, int, narm);
  POP_ARGUMENT(buffer0, ii, int, hasna);
  POP_ARGUMENT(buffer0, ii, int, byrow);
  POP_ARGUMENT(buffer0, ii, double*, ans);

  extern RETURN_TYPE (*METHOD_NAME[3][3])(ARGUMENTS_LIST);
  int rowsType = ROWS_TYPE_CODE;

  ans += begin;
  nrows = end - begin;
#ifdef ROWS_TYPE
  rows = (ROWS_C_TYPE*) rows + begin;
#else
  rows = indicesFromRange(begin, end, &rowsType);
#endif

  METHOD_NAME[rowsType][COLS_TYPE_CODE](x, nrow, ncol, rows, nrows, cols, ncols, narm, hasna, byrow, ans, 1);

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
      + sizeof(narm) + sizeof(hasna) + sizeof(byrow) + sizeof(ans);
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
    PUSH_ARGUMENT(buffer, ii, narm);
    PUSH_ARGUMENT(buffer, ii, hasna);
    PUSH_ARGUMENT(buffer, ii, byrow);
    PUSH_ARGUMENT(buffer, ii, ans);

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


  R_xlen_t ii, jj, kk, idx;
  R_xlen_t *colOffset;
  X_C_TYPE *values, value;
  double value_d, mu_d, sigma2_d;

#ifdef ROWS_TYPE
  ROWS_C_TYPE *crows = (ROWS_C_TYPE*) rows;
#endif
#ifdef COLS_TYPE
  COLS_C_TYPE *ccols = (COLS_C_TYPE*) cols;
#endif

  /* C allocate memory for the 'values'. Should be freed manually. */
  values = Calloc(ncols, X_C_TYPE);

  /* If there are no missing values, don't try to remove them. */
  if (hasna == FALSE)
    narm = FALSE;

  /* Pre-calculate the column offsets */
  colOffset = Calloc(ncols, R_xlen_t);

  if (byrow) {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = R_INDEX_OP(COL_INDEX(ccols,jj), *, nrow);
  } else {
    for (jj=0; jj < ncols; jj++)
      colOffset[jj] = COL_INDEX(ccols,jj);
  }

  for (ii=0; ii < nrows; ii++) {
    R_xlen_t rowIdx = byrow ? ROW_INDEX(crows,ii) : R_INDEX_OP(ROW_INDEX(crows,ii), *, ncol); //HJ

    kk = 0;
    for (jj=0; jj < ncols; jj++) {
      idx = R_INDEX_OP(rowIdx, +, colOffset[jj]);
      value = R_INDEX_GET(x, idx, X_NA); //HJ

      if (X_ISNAN(value)) {
        if (narm == FALSE) {
          kk = -1;
          break;
        }
      } else {
        values[kk] = value;
        kk = kk + 1;
      }
    } /* for (jj ...) */

    /* Note that 'values' will never contain NA/NaNs */

    if (kk <= 1) {
      ans[ii] = NA_REAL;
    } else {
      /* (a) Calculate mu = sum(x)/length(x) */
      mu_d = 0;
      for (jj=0; jj < kk; jj++) {
        mu_d += (double)values[jj];
      }
      mu_d /= (double)kk;

      /* (b) Calculate sigma^2 */
      sigma2_d = 0;
      for (jj=0; jj < kk; jj++) {
        value_d = ((double)values[jj] - mu_d);
        value_d *= value_d;
        sigma2_d += value_d;
      }
      sigma2_d /= (double)(kk-1);

      ans[ii] = sigma2_d;
    } /* if (kk <= 1) */
    // TODO: interrupt under pthread
    // R_CHECK_USER_INTERRUPT(ii);
  } /* for (ii ...) */

  Free(values);
  Free(colOffset);
}


/***************************************************************************
 HISTORY:
 2015-08-13 [DJ]
  o Pthread processing.
 2015-06-13 [DJ]
  o Supported subsetted computation.
 2014-11-18 [HB]
  o Created from rowMads_TYPE-template.h.
 **************************************************************************/
